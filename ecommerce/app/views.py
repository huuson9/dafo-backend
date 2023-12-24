from django.shortcuts import render
from rest_framework.views import APIView, status
from .models import Order, Product, Category, User, Cart, OrderDetail, DeliveryInfo
from rest_framework.response import Response
from rest_framework.permissions import AllowAny

from .serializer import (
    OrderSerializer,
    ProductSerializer,
    CategorySerializer,
    CartSerializer,
    RegisterSerializer,
    LoginSerializer,
    UserSerializer,
    UserUpdateSerializer,
    OrderDetailSerializer,
    DeliveryInfoSerializer
)


# Create your views here
class UserProfileUpdateAPIView(APIView):
    def put(self, request, pk):
        try:
            user = User.objects.get(pk=pk)
            serializer = UserUpdateSerializer(
                instance=user, data=request.data, partial=True
            )
            if serializer.is_valid():
                serializer.save()
                return Response({"success": f"User with ID {pk} updated successfully"})
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except User.DoesNotExist:
            return Response(
                {"error": "User does not exist"}, status=status.HTTP_404_NOT_FOUND
            )
  

class UserProfileView(APIView):
    def get(self, request):
        user = User.objects.get(pk=request.user.id)
        serializer = UserSerializer(user)
        return Response({"user": serializer.data})


class RegisterAPIView(APIView):
    permission_classes = (AllowAny,)
    serializer_class = RegisterSerializer

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.save()

        return Response(
            {
                "success": True,
                "userID": user.id,
                "msg": "The user was successfully registered",
            },
            status=status.HTTP_201_CREATED,
        )


class LoginAPIView(APIView):
    permission_classes = (AllowAny,)
    serializer_class = LoginSerializer

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)
        serializer.is_valid(raise_exception=True)
        return Response(serializer.validated_data, status=status.HTTP_200_OK)


class OrderView(APIView):
    def get(self, request):
        orders = Order.objects.all()
        serializer = OrderSerializer(orders, many=True)
        return Response({"orders": serializer.data})

    def post(self, request):
        serializer = OrderSerializer(data=request.data, many=True)
        if serializer.is_valid():
            orders_saved = serializer.save()
            order_ids = [order.id for order in orders_saved]
            return Response(
                {"success": f"Các đơn hàng đã được tạo thành công: {order_ids}"}
            )
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class OrderDetailView(APIView):
    def get(self, request, pk):
        order = Order.objects.get(pk=pk)
        serializer = OrderSerializer(order)
        return Response({"order": serializer.data})

    def put(self, request, pk):
        saved_order = Order.objects.get(pk=pk)
        data = request.data.get("order")
        serializer = OrderSerializer(instance=saved_order, data=data, partial=True)
        if serializer.is_valid(raise_exception=True):
            order_saved = serializer.save()
        return Response(
            {"success": "Order '{}' updated successfully".format(order_saved.name)}
        )

    def delete(self, request, pk):
        order = Order.objects.get(pk=pk)
        order.delete()
        return Response(
            {"message": "Order with id `{}` has been deleted.".format(pk)}, status=204
        )

import pprint
class OrderByUserView(APIView):
    def get(self, request, user_id):
        orders = Order.objects.filter(user=user_id)
        serializer = OrderSerializer(orders, many=True)

        for order in serializer.data:
            order_details = OrderDetail.objects.filter(order=order["id"])
            order["order_details"] = OrderDetailSerializer(order_details, many=True).data
            delivery_info = DeliveryInfo.objects.filter(order=order["id"])
            order["delivery_info"] = DeliveryInfoSerializer(delivery_info, many=True).data
        return Response({"orders": serializer.data})
    
    def post(self, request, user_id):
        # Tạo đơn hàng mới cho người dùng cụ thể (dựa trên user_id)
        request.data["user"] = user_id
        serializer = OrderSerializer(data=request.data)
        
        if serializer.is_valid():
            serializer.save()
            
            # delivery_info.save()
            for product in request.data["orders"][0]["order_details"]:
                product["order"] = serializer.data["id"]
                order = OrderDetailSerializer(data=product)

                if order.is_valid():
                    order.save()
                else:
                    print(order.errors)
            
            for delivery in request.data["orders"][0]["delivery_info"]:
                delivery["order"] = serializer.data["id"]
                delivery_info = DeliveryInfoSerializer(data=delivery)
                
                if delivery_info.is_valid():
                    delivery_info.save()
                else:
                    print(delivery_info.errors)
                    
            return Response({"success": f"Đơn hàng đã được tạo thành công"})
        
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class ProductView(APIView):
    def get(self, request):
        name = request.query_params.get("name", "")
        if name.strip():  # Check if name is not empty or contains only whitespace
            products = Product.objects.filter(name__icontains=name)
        else:
            products = Product.objects.all()
        serializer = ProductSerializer(products, many=True)
        return Response({"products": serializer.data})

    def post(self, request):
        product = request.data.get("product")
        serializer = ProductSerializer(data=product)
        if serializer.is_valid(raise_exception=True):
            product_saved = serializer.save()
        return Response(
            {"success": "Product '{}' created successfully".format(product_saved.name)}
        )


class CategoryView(APIView):
    def get(self, request):
        categories = Category.objects.all()
        serializer = CategorySerializer(categories, many=True)
        return Response(
            {"categories": serializer.data}
        )  # Trả về dữ liệu đã được serialize

    def post(self, request):
        category = request.data.get("category")
        serializer = CategorySerializer(data=category)
        if serializer.is_valid(raise_exception=True):
            category_saved = serializer.save()
        return Response(
            {
                "success": "Category '{}' created successfully".format(
                    category_saved.name
                )
            }
        )


class ProductDetailView(APIView):
    def get(self, request, pk):
        product = Product.objects.get(pk=pk)
        serializer = ProductSerializer(product)
        return Response({"product": serializer.data})

    def put(self, request, pk):
        saved_product = Product.objects.get(pk=pk)
        data = request.data.get("product")
        serializer = ProductSerializer(instance=saved_product, data=data, partial=True)
        if serializer.is_valid(raise_exception=True):
            product_saved = serializer.save()
        return Response(
            {"success": "Product '{}' updated successfully".format(product_saved.name)}
        )

    def delete(self, request, pk):
        product = Product.objects.get(pk=pk)
        product.delete()
        return Response(
            {"message": "Product with id `{}` has been deleted.".format(pk)}, status=204
        )


class CartView(APIView):
    def get(self, request):
        carts = Cart.objects.all()
        serializer = CartSerializer(carts, many=True)
        return Response({"carts": serializer.data})  # Trả về dữ liệu đã được serialize

    def post(self, request):
        cart = request.data.get("cart")
        serializer = CartSerializer(data=cart)
        if serializer.is_valid(raise_exception=True):
            cart_saved = serializer.save()
        return Response(
            {"success": "Cart '{}' created successfully".format(cart_saved.name)}
        )


class CartDetailView(APIView):
    def get(self, request, pk):
        cart = Cart.objects.get(pk=pk)
        serializer = CartSerializer(cart)
        return Response({"cart": serializer.data})

    def put(self, request, pk):
        saved_cart = Cart.objects.get(pk=pk)
        data = request.data.get("cart")
        serializer = CartSerializer(instance=saved_cart, data=data, partial=True)
        if serializer.is_valid(raise_exception=True):
            cart_saved = serializer.save()
        return Response(
            {"success": "Cart '{}' updated successfully".format(cart_saved.name)}
        )

    def delete(self, request, pk):
        cart = Cart.objects.get(pk=pk)
        cart.delete()
        return Response(
            {"message": "Cart with id `{}` has been deleted.".format(pk)}, status=204
        )


class CartByUserView(APIView):
    def get(self, request, user_id):
        carts = Cart.objects.filter(user=user_id)
        serializer = CartSerializer(carts, many=True)
        return Response({"carts": serializer.data})

class ResetPasswordView(APIView):
    def post(self, request):
        email = request.data.get("email")
        user = User.objects.get(email=email)
        if user:
            new_password = request.data.get("new_password")
            if new_password == request.data.get("confirm_password"):
                user.set_password(new_password)
                user.save()
                return Response({"success": True, "msg": "Reset password successfully"})
        else:
            return Response({"success": False, "msg": "Email is not exist"})
