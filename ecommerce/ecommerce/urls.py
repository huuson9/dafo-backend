"""
URL configuration for ecommerce project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
import app.views as views

urlpatterns = [
    path("admin/", admin.site.urls),
    path("api/user/<int:pk>", views.UserProfileUpdateAPIView.as_view(), name="user"),
    path("api/user/profile", views.UserProfileView.as_view(), name="profile"),
    path("api/register/", views.RegisterAPIView.as_view(), name="register"),
    path("api/login/", views.LoginAPIView.as_view(), name="login"),
    path("api/order/", views.OrderView.as_view(), name="order"),
    path("api/order/<int:pk>", views.OrderDetailView.as_view(), name="order-detail"),
    path(
        "api/order/user/<int:user_id>",
        views.OrderByUserView.as_view(),
        name="order-by-user",
    ),
    path("api/product/", views.ProductView.as_view(), name="product"),
    path(
        "api/product/<int:pk>", views.ProductDetailView.as_view(), name="product-detail"
    ),
    path("api/category/", views.CategoryView.as_view(), name="category"),
    path("api/cart/", views.CartView.as_view(), name="cart"),
    path("api/cart/<int:pk>", views.CartDetailView.as_view(), name="cart-detail"),
    path(
        "api/cart/user/<int:user_id>",
        views.CartByUserView.as_view(),
        name="cart-by-user",
    ),
    path(
        "api/reset_password/", views.ResetPasswordView.as_view(), name="reset-password"
    ),
    path(
        "api/review/product/<int:product_id>", views.ReviewByProductView.as_view(), name="review"
    ),
]
