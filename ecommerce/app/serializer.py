from rest_framework import serializers
from .models import Order, ProductImage, Product, Category, User

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = "__all__"

class OrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Order
        fields = "__all__"


class ProductImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProductImage
        fields = ("id", "image", "link", "type")


class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = ("id", "name")


class ProductSerializer(serializers.ModelSerializer):
    images = ProductImageSerializer(many=True, read_only=True)

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
        )


