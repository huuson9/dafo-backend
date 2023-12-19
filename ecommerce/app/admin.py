from django.contrib import admin
from .models import (
    User,
    Supplier,
    Category,
    Product,
    Order,
    OrderDetail,
    Purchase,
    Cart,
    ProductImage,
    Review,
    Voucher,
    DeliveryInfo
)


class ProductAdmin(admin.ModelAdmin):
    list_display = ("name", "average_rating", "price", "category", "supplier")
    list_filter = ["category", "supplier"]


class ReviewAdmin(admin.ModelAdmin):
    list_display = ("product", "user", "rating", "content", "time")


class CartAdmin(admin.ModelAdmin):
    list_display = ("user", "product", "count", "time", "price")


class OrderAdmin(admin.ModelAdmin):
    list_display = ("user", "price", "ship_fee", "time" )

class OrderDetailAdmin(admin.ModelAdmin):
    list_display = ("order", "product", "count")

class DeliveryInfoAdmin(admin.ModelAdmin):
    list_display = ("order", "name", "phone", "province", "district", "street")

class UserAdmin(admin.ModelAdmin):
    list_display = (
        "id",
        "email",
        "username",
        "phone",
        "date_of_birth",
        "is_staff",
        "is_active",
        "is_superuser",
    )


# Register your models here.
admin.site.register(User, UserAdmin)
admin.site.register(Supplier)
admin.site.register(Category)
admin.site.register(Product, ProductAdmin)
admin.site.register(Order, OrderAdmin)
admin.site.register(Purchase)
admin.site.register(Cart, CartAdmin)
admin.site.register(ProductImage)
admin.site.register(Review, ReviewAdmin)
admin.site.register(Voucher)
admin.site.register(OrderDetail, OrderDetailAdmin)
admin.site.register(DeliveryInfo)
