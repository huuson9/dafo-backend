from django.shortcuts import render
from rest_framework.views import APIView
from .models import Order, Product
from rest_framework.response import Response
from .serializer import OrderSerializer, ProductSerializer, ProductImageSerializer


# Create your views here.
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
