# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.core.validators import MinValueValidator
import pywhatkit
import datetime 

#from phonenumber_field.modelfields import PhoneNumberField
class Brand(models.Model):
	brand_name = models.CharField(unique=True, max_length=150)

	def __str__(self):
		return self.brand_name
	
	# def save(self,*args,**kwargs):
		# print('coming here')
		# super(Brand,self).save(*args,**kwargs)
		
class ItemCategory(models.Model):
	category_name = models.CharField(unique=True, max_length=450)
	brand = models.ForeignKey(Brand,models.DO_NOTHING,null=False)
	
	def __str__(self):
		return self.category_name
	
class Item(models.Model):
	item_name = models.CharField(unique=False,max_length=450)
	price = models.IntegerField(blank=False,null=False,default=0)
	category = models.ForeignKey(ItemCategory,models.DO_NOTHING,null=False)
	current_stock = models.IntegerField(default=0)
	
	class Meta:
		unique_together = (('item_name', 'category'),)
	
	def __str__(self):
		return self.item_name #+' ('+ str(self.current_stock)+')'
	
	def get_price(self):
		return self.price
		
	# def combined_fields(self):
		# return '{} {}'.format(self.item_name,self.category)

class SoldItem(models.Model):
	invoice_id = models.ForeignKey('InvoiceSells',models.DO_NOTHING,null=False)
	item = models.ForeignKey(Item,models.DO_NOTHING,null=False)
	item_quantity = models.IntegerField(blank=False,null=False)
	price = models.FloatField(blank=False,null=False)
	
	def save(self,*args,**kwargs):
		self.item.current_stock -= self.item_quantity
		self.item.save()
		super(SoldItem,self).save(*args,**kwargs)

def whatsapp_greetings(message,mobile):
	pywhatkit.sendwhatmsg('+91'+str(mobile),message,datetime.datetime.now().hour,datetime.datetime.now().minute+1)
	return None
		
class InvoiceSells(models.Model):
	total_amount = models.FloatField(blank=False,null=False)
	#cgst = models.FloatField(blank=False,null=False)
	#sgst = models.FloatField(blank=False,null=False)
	#container_charge = models.FloatField(blank=True,null=True)
	discount = models.FloatField(blank=True,null=True)
	customer = models.CharField(max_length=200 ,blank=True,null=True)
	mobile = models.CharField(max_length=10,null=True, blank=True)
	dos = models.DateTimeField(auto_now_add=True) #dos = date of selling
	status = models.BooleanField(verbose_name='Status (Paid or Not)') # payment performed or not
	payment_mode = models.CharField(max_length=50,blank=True,null=True)
	
	# def save(self,*args,**kwargs):
		# if self.mobile != None:
			# items = ''
			# for sold_item in self.id.solditem_set.all():
				# items += sold_item.item.item_name +' '
			# message = self.customer+' '+items
			# whatsapp_greetings(message,self.mobile)
		# super(InvoiceSells,self).save(*args,**kwargs)
		
	# def clean(self):
		# print('coming in clean')
		# return self.cleaned_data
	
class PurchasedItem(models.Model):
	invoice_id = models.ForeignKey('InvoicePurchase',models.DO_NOTHING,null=False)
	item = models.ForeignKey(Item,models.DO_NOTHING,null=False)
	item_quantity = models.IntegerField(blank=False,null=False)
	price = models.FloatField(blank=False,null=False)
	
	def save(self,*args,**kwargs):
		print('args: ',args)
		print('kwargs: ',kwargs)
		self.item.current_stock += self.item_quantity
		self.item.save()
		super(PurchasedItem,self).save(*args,**kwargs)

class InvoicePurchase(models.Model):
	total_amount = models.FloatField(blank=False,null=False)
	dop = models.DateTimeField(auto_now_add=True) #dop = date of purchase
	status = models.BooleanField() # payment performed or not
	payment_mode = models.CharField(max_length=50,blank=False,null=False)
	
class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)
    name = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()
    first_name = models.CharField(max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_user'
	

class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    action_flag = models.PositiveSmallIntegerField()

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'
