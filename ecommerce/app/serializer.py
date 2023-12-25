from rest_framework import serializers
from .models import (
    Order,
    ProductImage,
    Product,
    Category,
    User,
    Review,
    Cart,
    OrderDetail,
    DeliveryInfo,
)
from django.core.exceptions import ObjectDoesNotExist
from django.core.exceptions import ValidationError
from rest_framework import serializers, exceptions
from django.contrib.auth import authenticate


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ["id", "email", "username", "date_of_birth", "phone", "gender"]


class UserUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ["id", "email", "username", "date_of_birth", "phone", "gender"]
        extra_kwargs = {
            "username": {"required": False},
            "email": {"required": False},
            "phone": {"required": False},
            "date_of_birth": {"required": False},
            "gender": {"required": False},
        }


class RegisterSerializer(serializers.ModelSerializer):
    password = serializers.CharField(min_length=4, max_length=128, write_only=True)
    email = serializers.EmailField(required=True)

    class Meta:
        model = User
        fields = [
            "id",
            "email",
            "password",
        ]

    def validate_email(self, value):
        try:
            User.objects.get(email=value)
        except ObjectDoesNotExist:
            return value
        raise ValidationError({"success": False, "msg": "Email already taken."})

    def create(self, validated_data):
        return User.objects.create_user(**validated_data)


class LoginSerializer(serializers.Serializer):
    email = serializers.EmailField()
    password = serializers.CharField(max_length=128, write_only=True)

    def validate(self, data):
        email = data.get("email")
        password = data.get("password")

        if email and password:
            try:
                user = User.objects.get(email=email)
            except User.DoesNotExist:
                raise ValidationError(
                    {"success": False, "msg": "User with this email does not exist"}
                )

            if user.check_password(password):
                if not user.is_active:
                    raise ValidationError(
                        {"success": False, "msg": "User is not active"}
                    )

                return {
                    "success": True,
                    "user": {"_id": user.pk, "email": user.email},
                }
            else:
                raise ValidationError({"success": False, "msg": "Wrong password"})

        else:
            raise ValidationError(
                {"success": False, "msg": "Email and password are required"}
            )


class CartSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cart
        fields = "__all__"


class OrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Order
        fields = "__all__"


class OrderDetailSerializer(serializers.ModelSerializer):
    product = serializers.SerializerMethodField()

    def get_product(self, obj):
        return ProductSerializer(obj.product).data

    class Meta:
        model = OrderDetail
        fields = "__all__"


class DeliveryInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeliveryInfo
        fields = "__all__"


class ProductImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProductImage
        fields = ("id", "image", "link", "type")


class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = ("id", "name")


class ReviewSerializer(serializers.ModelSerializer):
    user_email = serializers.SerializerMethodField()

    class Meta:
        model = Review
        fields = ("id", "user", "user_email", "product", "content", "rating", "time")
        read_only_fields = ("id", "time")

    def get_user_email(self, obj):
        return obj.user.email


class ProductSerializer(serializers.ModelSerializer):
    images = ProductImageSerializer(many=True, read_only=True)
    reviews = ReviewSerializer(many=True, read_only=True)

    category = serializers.SerializerMethodField()

    def get_category(self, obj):
        return CategorySerializer(obj.category).data

    class Meta:
        model = Product
        fields = (
            "id",
            "name",
            "content",
            "average_rating",
            "price",
            "category",
            "supplier",
            "images",
            "reviews",
        )


class RequestResetPassword(serializers.Serializer):
    email = serializers.EmailField(required=True)

    class Meta:
        fields = ["email", "new_password", "confirm_password"]

    def validate_email(self, value):
        user = User.objects.get(email=value)
        if not user.exists():
            raise ValidationError({"success": False, "msg": "Email does not exist."})
        return value
