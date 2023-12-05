from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.EmailField()
    groups = models.ManyToManyField("auth.Group", related_name="custom_user_set")
    user_permissions = models.ManyToManyField(
        "auth.Permission", related_name="custom_user_set_permissions"
    )

    def __str__(self):
        return self.username


class Supplier(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class Category(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class Product(models.Model):
    name = models.CharField(max_length=255)
    content = models.TextField()
    average_rating = models.FloatField(default=0)
    price = models.FloatField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    supplier = models.ForeignKey(Supplier, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    price = models.FloatField()
    time = models.DateTimeField(auto_now_add=True)
    count = models.PositiveIntegerField(default=1)


class Purchase(models.Model):
    STATUS_CHOICES = (
        (0, "Draft"),
        (1, "Success"),
        (2, "Unsuccess"),
    )
    name = models.CharField(max_length=255)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    status = models.PositiveSmallIntegerField(choices=STATUS_CHOICES, default=0)

    def __str__(self):
        return self.name


class Cart(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    count = models.PositiveIntegerField(default=1)
    time = models.DateTimeField(auto_now_add=True)
    price = models.FloatField()


class ProductImage(models.Model):
    product = models.ForeignKey(
        Product, on_delete=models.CASCADE, related_name="images"
    )
    image = models.ImageField(upload_to="product_images/")
    link = models.URLField(blank=True)
    type = models.CharField(max_length=255, blank=True)


class Review(models.Model):
    product = models.ForeignKey(
        Product, on_delete=models.CASCADE, related_name="reviews"
    )
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    content = models.TextField()
    rating = models.PositiveSmallIntegerField(default=0)
    time = models.DateTimeField(auto_now_add=True)


class Voucher(models.Model):
    code = models.CharField(max_length=255)
    discountPercent = models.FloatField()
    maxDiscount = models.FloatField()

    def __str__(self):
        return self.code
