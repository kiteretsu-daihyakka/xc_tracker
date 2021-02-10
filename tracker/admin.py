from django.contrib import admin
from .models import Brand,Item,PurchasedItem,SoldItem,InvoiceSells,InvoicePurchase,ItemCategory
from django.contrib.auth.models import Group,User
import pywhatkit
import datetime
# from forms import LovelyModelForm

# class LovelyModelAdmin(admin.ModelAdmin):
    # form = LovelyModelForm
	
#from import_export.admin import ImportExportModelAdmin

# Register your models here.

admin.site.site_title = 'XOCOLAT'
admin.site.site_header = "XOCOLAT CHOCOLATIERS CAFE"

admin.site.register(Brand)
#admin.site.register(SoldItem)
admin.site.unregister(Group)
admin.site.unregister(User)

class PurchasedItemAdmin(admin.TabularInline):
	model = PurchasedItem
	
	# def save_model(self,request,obj,form,change):
		# print('sub model save pre')
		# super().save_model(request,obj,form,change)
		# print('sub model save post')
		# # obj = form.save()
		# # obj.item.current_stock += obj.item_quantity
		# # obj.item.save()
		
		# if change == True:
			# print('changed')
			
		

@admin.register(InvoicePurchase)
class InvoicePurchaseAdmin(admin.ModelAdmin):
	#exclude = ('invoice_id',)
	#readonly_fields = ('item','item_quantity','price') 
	
	class Media:
		js =(
            '//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js', # jquery
            #'js/myscript.js',       # project static folder
            'tracker/js/invoiceSellsAdmin.js',   # app static folder
		)
	# fieldsets = (
		# ('CUSTOMER DETAIL', {
			# 'fields':('customer','mobile')
		# }),
		# # ('SOLD ITEMS', {
			# # 'fields':('id.solditem.item','item_quantity','price')
		# # }),
		# ('TOTAL', {
			# 'fields':('total_amount','discount','status','payment_mode')
		# }),
		
	# )
	inlines = [PurchasedItemAdmin]
	# def save_model(self,request,obj,form,change):
		# print('parent model change: change)
		# super().save_model(request,obj,form,change)
		
	def save_related(self, request,form,formsets,change):
		invoice_purchase_obj = form.save()
		print(datetime.datetime.now())
		print(invoice_purchase_obj.dop)
		
		for inline_form in formsets:
			#print('inline form:  ',inline_form)
			if inline_form.has_changed():
				print('coming in change')
				obj = inline_form.save(commit=False)
				print('obj above for loop: ',obj)
				for purchased_item  in invoice_purchase_obj.purchaseditem_set.all():
					print('obj: ',obj[0])
					if obj[0] == purchased_item:
						print('obj in if: ',purchased_item)
						purchased_item.item.current_stock -= purchased_item.item_quantity
						purchased_item.item.current_stock += obj[0].item_quantity
						purchased_item.item.save()
			# else:
				# obj = inline_form.save(commit=False)
				# obj[0].item.current_stock += obj[0].item_quantity
				# obj[0].item.save()
			
			#for purchased_item  in invoice_purchase_obj.purchaseditem_set.all():
				
		
			
				#print(item.item_quantity)
			#print('changed qntt: ',obj[0].item_quantity)
				
		
			
		# print(formsets)
		super().save_related(request, form, formsets, change=change)
		
		#print('form save_related:' , form)
		# if form.pk:
		
		# print('dos: ',obj.dos)
		# print('change: ',change)
		if change == True:
			print('child changed')
		else:
			print('child not changed')
			# obj = form.save()
		
admin.site.register(ItemCategory)

class ItemCategoryAdmin(admin.TabularInline):
	model = ItemCategory

# admin.site.title='XOCOLAT'


@admin.register(Item)
class ItemAdmin(admin.ModelAdmin):
	list_display = ('item_name','price','current_stock','category',) 
	list_filter = ('category',)
	search_fields = ('item_name',)
	
	# readonly_fields = ('combined_fields',)
	
	# def combined_fields(self, obj):
		# return obj.combined_fields()
		
	# readonly_fields = ('parent', )
	#raw_id_fields = ('parent',)
	
# admin.site.register(SoldItem)
# admin.site.register(InvoiceSells)
# admin.site.register(PurchasedItem)
# admin.site.register(InvoicePurchase)

class SoldItemAdmin(admin.TabularInline):
	model = SoldItem
	autocomplete_fields = ('item',)
	
	# def get_form(self, request, obj=None, **kwargs):
		# form = super().get_form(request, obj, **kwargs)
		# print('sodl items base fields: ',form.base_fields)
		# return form
		
	# readonly_fields = ('get_price',)
	
	# def get_price(self, obj):
		# return '{}'.obj.item.price
		
	# get_price.short_description = 'price'
	
@admin.register(InvoiceSells)
class InvoiceSellsAdmin(admin.ModelAdmin):
	#exclude = ('invoice_id',)
	#readonly_fields = ('item','item_quantity','price') 
	
	class Media:
		js =(
            '//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js', # jquery
            #'js/myscript.js',       # project static folder
            'tracker/js/invoiceSellsAdmin.js',   # app static folder
		)
	fieldsets = (
		('CUSTOMER DETAIL', {
			'fields':('customer','mobile')
		}),
		# ('SOLD ITEMS', {
			# 'fields':('id.solditem.item','item_quantity','price')
		# }),
		('TOTAL', {
			'fields':('total_amount','discount','status','payment_mode')
		}),
		
	)
	inlines = [SoldItemAdmin]
	invoice_id = -1
	
	#invoice form
	# def get_form(self, request, obj=None, **kwargs):
		# form = super().get_form(request, obj, **kwargs)
		# print('base fields: ',form.base_fields)
		# return form
	
	# def get_formsets_with_inlines(self, request, obj=None):
		# for inline in self.get_inline_instances(request, obj):
			# print('inline form: ',inline.form)
	
	def save_related(self, request,form,formsets,change):
		super().save_related(request, form, formsets, change=change)
		#print('form save_related:' , form)
		# if form.pk:
		
		# print('dos: ',obj.dos)
		# print('change: ',change)
		if change == False:
			obj = form.save()
			items = '\n\n *Name* \t\t *Qnt.* \t\t *Price* '
			for sold_item in obj.solditem_set.all():
				items += '\n '+sold_item.item.item_name +'\t\t\t ('+str(sold_item.item_quantity)+')\t\t\t '+str(sold_item.price)
			total_amount = '\n\n *Total Amount: '+str(obj.total_amount)+'* '
			#print('obj: ',obj)
			#print('formset: ',formsets)
			#print('invoice_id: ',invoice_id)
			# print('self: ',self)
			# print('request: ',request)
			# print('args: ',args)
			# print('kwargs: ',kwargs)
			discount = ''
			if obj.discount != 0:
				discount = '\n\nYooHoo!, You got '+str(obj.discount)+'Rs. Discount'
			if obj.status == True:
				status = '\n\nPaid via: ' + obj.payment_mode
			else:
				status = '\n\nPayment status: pending'
			message = 'Hello, '+obj.customer+items+discount+total_amount+status+'\n\nThank you for visiting xocolat!'
			def whatsapp_greetings(message,mobile):
				pywhatkit.sendwhatmsg('+91'+str(mobile),message,datetime.datetime.now().hour,datetime.datetime.now().minute+1)
			print(message)
			whatsapp_greetings(message,obj.mobile)
				
			# if obj.mobile != None:
				# items = ''
				# print(obj.solditem_set.all())
				# for sold_item in obj.solditem_set.all():
					# items += sold_item.item.item_name +' ('+str(sold_item.item_quantity)+' Piece)'
				# message = obj.customer+' '+items
				# print(items)
			
		
	# def save_model(self,request,obj,form,change):
		# super().save_model(request,obj,form,change)
		# invoice_id = obj.pk
		# def whatsapp_greetings(message,mobile):
			# pywhatkit.sendwhatmsg('+91'+str(mobile),message,datetime.datetime.now().hour,datetime.datetime.now().minute+1)
			# return None
		# if obj.mobile != None:
			# items = ''
			# print(obj.solditem_set.all())
			# for sold_item in obj.solditem_set.all():
				# items += sold_item.item.item_name +' ('+str(sold_item.item_quantity)+' Piece)'
			# message = obj.customer+' '+items
			# print(items)
			# #whatsapp_greetings(message,obj.mobile)
		
	
	
##reverse
##RESULT!! = No Foreignkey issue
# class InvoiceSellsAdmin(admin.TabularInline):
	# model = InvoiceSells
	
# @admin.register(SoldItem)
# class SoldItemAdmin(admin.ModelAdmin):
	# inlines = [InvoiceSellsAdmin]
	
