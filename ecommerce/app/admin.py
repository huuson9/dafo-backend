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
    Comment,
    Review,
    Voucher,
)

# Register your models here.
admin.site.register(User)
admin.site.register(Supplier)
admin.site.register(Category)
admin.site.register(Product)
admin.site.register(Order)
admin.site.register(Purchase)
admin.site.register(Cart)
admin.site.register(ProductImage)
admin.site.register(Review)
admin.site.register(Comment)
admin.site.register(Voucher)
