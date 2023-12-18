from django.shortcuts import render
from rest_framework.views import APIView, status
from .models import Order, Product, Category, User, Cart
from rest_framework.response import Response
from rest_framework.permissions import AllowAny

from .serializer import (
    OrderSerializer,
    ProductSerializer,
    CategorySerializer,
    CartSerializer,
    RegisterSerializer,
    LoginSerializer,
    UserUpdateSerializer,
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

    def get(self, request, pk):
        return Response(status=status.HTTP_405_METHOD_NOT_ALLOWED)


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
        order = request.data.get("order")
        serializer = OrderSerializer(data=order)
        if serializer.is_valid(raise_exception=True):
            order_saved = serializer.save()
        return Response(
            {"success": "Order '{}' created successfully".format(order_saved.name)}
        )


class OrderByUserView(APIView):
    def get(self, request, user_id):
        # Lấy tất cả các đơn hàng của người dùng cụ thể (dựa trên user_id)
        orders = Order.objects.filter(user=user_id)
        serializer = OrderSerializer(orders, many=True)
        return Response({"orders": serializer.data})


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


class OrderByUserView(APIView):
    def get(self, request, user_id):
        orders = Order.objects.filter(user=user_id)
        serializer = OrderSerializer(orders, many=True)
        return Response({"orders": serializer.data})


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
