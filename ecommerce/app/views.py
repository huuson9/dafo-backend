from django.shortcuts import render
from rest_framework.views import APIView
from .models import Order, Product, Category, User, Cart
from rest_framework.response import Response
from .serializer import (
    OrderSerializer,
    ProductSerializer,
    CategorySerializer,
    UserSerializer,
    CartSerializer,
)


# Create your views here.
class UserView(APIView):
    def get(self, request):
        users = User.objects.all()
        serializer = UserSerializer(users, many=True)
        return Response({"users": serializer.data})  # Trả về dữ liệu đã được serialize


class LoginView(APIView):
    def post(self, request):
        username = request.data.get("username")
        password = request.data.get("password")
        user = User.objects.filter(username=username, password=password)
        if user:
            serializer = UserSerializer(user, many=True)
            return Response({"user": serializer.data})
        else:
            return Response({"message": "Username or password is incorrect"})


class OrderView(APIView):
    def get(self, request):
        orders = Order.objects.all()
        serializer = OrderSerializer(orders, many=True)
        return Response({"orders": serializer.data})  # Trả về dữ liệu đã được serialize

    def post(self, request):
        order = request.data.get("order")
        serializer = OrderSerializer(data=order)
        if serializer.is_valid(raise_exception=True):
            order_saved = serializer.save()
        return Response(
            {"success": "Order '{}' created successfully".format(order_saved.name)}
        )


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


class ProductView(APIView):
    def get(self, request):
        products = Product.objects.all()
        serializer = ProductSerializer(products, many=True)
        return Response(
            {"products": serializer.data}
        )  # Trả về dữ liệu đã được serialize

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

    def delete(self, request, pk):
        cart = Cart.objects.get(pk=pk)
        cart.delete()
        return Response(
            {"message": "Cart with id `{}` has been deleted.".format(pk)}, status=204
        )
