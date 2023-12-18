from django.db import models
from django.contrib.auth.models import (
    AbstractBaseUser,
    BaseUserManager,
    PermissionsMixin,
)


class UserManager(BaseUserManager):
    def create_user(self, email, password=None, **kwargs):
        """Create and return a `User` with an email, username and password."""
        if email is None:
            raise TypeError("Users must have an email.")

        user = self.model(email=self.normalize_email(email))
        user.set_password(password)
        user.save(using=self._db)

        return user

    def create_superuser(self, email, password):
        """
        Create and return a `User` with superuser (admin) permissions.
        """
        if password is None:
            raise TypeError("Superusers must have a password.")
        if email is None:
            raise TypeError("Superusers must have an email.")

        user = self.create_user(email, password)
        user.is_superuser = True
        user.is_staff = True
        user.save(using=self._db)

        return user


class User(AbstractBaseUser, PermissionsMixin):
    STATUS_CHOICES = (
        (0, "Male"),
        (1, "Female"),
    )
    email = models.EmailField(db_index=True, unique=True)
    username = models.CharField(max_length=255, unique=True, null=True, blank=True)
    date_of_birth = models.DateField(blank=True, null=True)
    phone = models.CharField(max_length=255, blank=True)
    gender = models.PositiveSmallIntegerField(choices=STATUS_CHOICES, default=0)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    groups = models.ManyToManyField("auth.Group", related_name="custom_user_groups")
    user_permissions = models.ManyToManyField(
        "auth.Permission", related_name="custom_user_permissions"
    )

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = ["email", "password"]

    objects = UserManager()

    def __str__(self):
        return f"{self.email}"


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
