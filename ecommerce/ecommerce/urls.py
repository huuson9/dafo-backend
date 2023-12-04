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
    path("api/user", views.UserView.as_view(), name="user"),
    path("api/login", views.LoginView.as_view(), name="login"),
    path("api/order", views.OrderView.as_view(), name="order"),
    path("api/order/<int:pk>", views.OrderDetailView.as_view(), name="order-detail"),
    path("api/product/", views.ProductView.as_view(), name="product"),
    path("api/product/<int:pk>", views.ProductDetailView.as_view(), name="product-detail"),
]
