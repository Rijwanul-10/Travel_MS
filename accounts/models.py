from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
	"""Custom user model extending Django's AbstractUser."""
	phone = models.CharField(max_length=20, blank=True)
	
	def __str__(self):
		return self.get_full_name() or self.username


