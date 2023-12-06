from django.contrib import admin
from .models import (
    User,
    Supplier,
    Category,
    Product,
    Order,
    Purchase,
    Cart,
    ProductImage,
    Review,
    Voucher,
)


class ProductAdmin(admin.ModelAdmin):
    list_display = ("name", "average_rating", "price", "category", "supplier")


class ReviewAdmin(admin.ModelAdmin):
    list_display = ("product", "user", "rating", "content", "time")


class CartAdmin(admin.ModelAdmin):
    list_display = ("user", "product", "count", "time", "price")


class OrderAdmin(admin.ModelAdmin):
    list_display = ("user", "product", "count", "time", "price")


# Register your models here.
admin.site.register(User)
admin.site.register(Supplier)
admin.site.register(Category)
admin.site.register(Product, ProductAdmin)
admin.site.register(Order, OrderAdmin)
admin.site.register(Purchase)
admin.site.register(Cart, CartAdmin)
admin.site.register(ProductImage)
admin.site.register(Review, ReviewAdmin)
admin.site.register(Voucher)
