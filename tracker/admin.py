from django.contrib import admin
from .models import Brand,Item,PurchasedItem,SoldItem,InvoiceSells,InvoicePurchase,ItemCategory,Gst,PaymentMode
from django.contrib.auth.models import Group,User
# from nested_inlines.admin import NestedModelAdmin, NestedStackedInline, NestedTabularInline

# import pywhatkit
import datetime

from django.template.response import TemplateResponse
from django.urls import path

# class MyModelAdmin(admin.ModelAdmin):
    # def get_urls(self):
    #     urls = super().get_urls()
    #     my_urls = [
    #         path('/admin/my_view/', self.my_view),
    #     ]
    #     return my_urls + urls

    # def my_view(self, request):
    #     # ...
    #     context = dict(
    #        # Include common variables for rendering the admin template.
    #        self.admin_site.each_context(request),
    #        # Anything else you want in the context...
    #        keyHere='this is value',
    #     )
    #     return TemplateResponse(request, "tracker/admin/aloha.html", context)

# class MyNestedInline(NestedTabularInline):
	# model = Item

# class MyInline(NestedStackedInline):
	# model = SoldItem
	# inlines = [MyNestedInline,]

# class MyAdmin(NestedModelAdmin):
	# inlines = [MyInline,]

# admin.site.register(InvoiceSells, MyAdmin)

#from .reports import MyReport

# from reports.base import ModelReport

# class MyReport(ModelReport):
	# queryset = InvoiceSells.objects.all()
	# name = "Report - My Report"
	
#reports.register(InvoiceSells, MyReport)

# from forms import LovelyModelForm

# class LovelyModelAdmin(admin.ModelAdmin):
    # form = LovelyModelForm
	
#from import_export.admin import ImportExportModelAdmin

# Register your models here.

# from django.contrib.admin.models import LogEntry

# LogEntry.objects.all().delete()

admin.site.site_title = 'XOCOLAT'
admin.site.site_header = "XOCOLAT CHOCOLATIERS CAFE"
admin.site.index_title = "Kwality Walls's Sales"

admin.site.disable_action('delete_selected')
		
# admin.site.disable_action('change_related')

#admin.site.register(SoldItem)
admin.site.unregister(Group)
admin.site.unregister(User)

# class ReadOnlyMixin(): # Add inheritance from "object" if using Python 2
    # list_display_links = None

class PurchasedItemAdmin(admin.TabularInline):
	model = PurchasedItem
	#autocomplete_fields = ('item',)
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
	list_display = ('invoice_no','dop','total_amount','payment_mode','status')
	
	change_form_template = 'tracker/admin/my_change_form.html'
	def changeform_view(self, request, object_id, form_url = '', extra_context = None ):
		print('coming here')
		extra_context = extra_context or {}
		extra_context['categories'] = ItemCategory.objects.all()
		return super(InvoicePurchaseAdmin,self).changeform_view(request, object_id, form_url=form_url, extra_context=extra_context)

	class Media:
		js =(
            'tracker/js/jquery-3.3.1.min.js', # jquery
            'tracker/js/moreOptions.js',   # app static folder
			#'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js', # jquery
            #'js/myscript.js',       # project static folder
            'tracker/js/invoiceSellsAdmin.js',   # app static folder
			'tracker/js/hideSaveKeepEditing.js', #saveAndKeep Btn js
			'tracker/js/common.js', #common js for all AdminModel
			'tracker/js/purchase-ajax_items-cat.js',

		)
	fieldsets = (
		('INVOICE DETAILS', {
			'fields':('invoice_no',)
		}),
		# ('PURCHASED ITEMS', {
		# 	'fields':('item','item_quantity','price')
		# }),
		('TOTAL', {
			'fields':('total_amount','status','payment_mode')
		}),
		
	)
	inlines = [PurchasedItemAdmin]
	# def save_model(self,request,obj,form,change):
		# print('parent model change: change)
		# super().save_model(request,obj,form,change)
		
	def save_related(self, request,form,formsets,change):
		purchase_obj = form.save()
		# print(datetime.datetime.now())
		# print(sells_obj.dos)
		if change == False:
			# print('total inline forms: ',len(formsets))
			# i=0
			for inline_form in formsets:
				# i += 1
				# print('iteration: ',i)
				puchaseItm_list = inline_form.save()
				# print('obj :',soldItm_list)
				for purchaseItm in puchaseItm_list:
					# if len(soldItm) > 0:
					# print('stock updated')
					purchaseItm.item.current_stock += purchaseItm.item_quantity
					purchaseItm.item.save()
		else:	
			for inline_form in formsets:
				#print('inline form:  ',inline_form)
				if inline_form.has_changed():
					# print('coming in change')
					obj_list = inline_form.save(commit=False)
					# print('obj above for loop: ',obj)
					for obj in obj_list:
						if obj in purchase_obj.purchaseditem_set.all():
							for objPrev in purchase_obj.purchaseditem_set.all():
								if objPrev == obj:
									obj.item.current_stock -= objPrev.item_quantity
									obj.item.current_stock += obj.item_quantity
									obj.item.save()
						else:
							obj.item.current_stock += obj.item_quantity
							obj.item.save()
			# else:
				# print('coming in else')
				# obj = inline_form.save(commit=False)
				# obj[0].item.current_stock += obj[0].item_quantity
				# obj[0].item.save()
				# obj[0].save()
			
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
		
@admin.register(ItemCategory)
class ItemCategoryListAdmin(admin.ModelAdmin):
	list_display = ('category_name','brand')
	class Media:
		js =(
            'tracker/js/jquery-3.3.1.min.js', # jquery
            'tracker/js/moreOptions.js',   # app static folder
			#'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js', # jquery
            #'js/myscript.js',       # project static folder
            #'tracker/js/invoiceSellsAdmin.js',   # app static folder
			'tracker/js/hideSaveKeepEditing.js', #saveAndKeep Btn js
			'tracker/js/common.js', #common js for all AdminModel

		)

class ItemCategoryAdmin(admin.TabularInline):
	model = ItemCategory
	
# admin.site.title='XOCOLAT'


@admin.register(Item)
class ItemAdmin(admin.ModelAdmin):
	list_display = ('item_name','price','current_stock','category',) 
	list_filter = ('category',)
	
	class Media:
		js =(
            'tracker/js/jquery-3.3.1.min.js', # jquery
            #'js/myscript.js',       # project static folder
            'tracker/js/moreOptions.js',   # app static folder
			'tracker/js/hideSaveKeepEditing.js', #saveAndKeep Btn js
			'tracker/js/common.js', #common js for all AdminModel

		)
	# search_fields = ('item_name',)
	
	# readonly_fields = ('combined_fields',)
	
	# def combined_fields(self, obj):
		# return obj.combined_fields()
		
	# readonly_fields = ('parent', )
	#raw_id_fields = ('parent',)
	
# admin.site.register(SoldItem)
# admin.site.register(InvoiceSells)
# admin.site.register(PurchasedItem)
# admin.site.register(InvoicePurchase)

# class SoldItemModelAdmin(admin.ModelAdmin):
# 	admin.title = 'Hello'
# 	list_display = ('upper_case_name',)
	
# 	def upper_case_name(self, obj):
# 		return ("%s %s" % (obj.item.category, obj.item)).upper()
# 	upper_case_name.short_description = 'NameHere'

class SoldItemAdmin(admin.TabularInline):
	model = SoldItem
	admin.add_form_template = 'tracker/admin/aloha.html'
	#fields = ('item_category','item',)
	#formfield_overrides = { models.TextField: {'category':ItemCategory.objects.all()} }
	

	# def change_view(self, request, object_id, form_url='', extra_context=None):
	# 	extra_context = extra_context or {}
	# 	extra_context['osm_data'] = 'blah'
	# 	return super(SoldItemAdmin, self).change_view(
	# 		request, object_id, form_url, extra_context=extra_context,
	# 	)
	# autocomplete_fields = ('item',)
	
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
	admin.title = 'Sells'
	#exclude = ('invoice_id',)
	list_display = ('total_amount','payment_mode','discount','dos','customer','mobile','status')
	#readonly_fields = ('item','item_quantity','price')
	
	change_form_template = 'tracker/admin/my_change_form.html'
	# def get_dynamic_info(self):
	# 	pass
	
	def changeform_view(self, request, object_id, form_url = '', extra_context = None ):
		print('coming here')
		extra_context = extra_context or {}
		extra_context['categories'] = ItemCategory.objects.all()
		extra_context['items'] = Item.objects.values('id','category__id')
		return super(InvoiceSellsAdmin,self).changeform_view(request, object_id, form_url=form_url, extra_context=extra_context)

	# def get_urls(self):
	# 	urls = super().get_urls()
	# 	my_urls = [path('/admin/my_view/', self.my_view),]
	# 	return my_urls + urls

	# def my_view(self, request):
        
	# 	context = dict(
    #        # Include common variables for rendering the admin template.
    #        self.admin_site.each_context(request),
    #        # Anything else you want in the context...
    #        keyHere='this is value',
    #     )
	# 	return TemplateResponse(request, "tracker/admin/aloha.html", context)

	class Media:
		js =(
            'tracker/js/jquery-3.3.1.min.js', # jquery
            #'js/myscript.js',       # project static folder
            'tracker/js/invoiceSellsAdmin.js',   # invoiceJs
			'tracker/js/moreOptions.js', #gst-tab specific js
			'tracker/js/hideSaveKeepEditing.js', #saveAndKeep Btn js
			'tracker/js/common.js', #common js for all AdminModel
			'tracker/js/sells-ajax_items-cat.js',
		)
		css = {
             'all': ('tracker/css/my_own_admin.css',)
        }
	fieldsets = (
		('CUSTOMER DETAILS', {
			'fields':('customer','mobile',)
		}),
		# ('SOLD ITEMS', {
			# 'fields':('id.solditem.item','item_quantity','price')
		# }),
		# (None,{
		# 	'fields':('dos',)
		# }),
		('TOTAL', {
			'fields':('total_amount','discount','discount_note','container_charge','status','payment_mode','odr_id','is_cancelled')
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
		sells_obj = form.save()
		# print(datetime.datetime.now())
		# print(sells_obj.dos)
		if change == False:
			# print('total inline forms: ',len(formsets))
			# i=0
			for inline_form in formsets:
				# i += 1
				# print('iteration: ',i)
				soldItm_list = inline_form.save()
				# print('obj :',soldItm_list)
				for soldItm in soldItm_list:
					# if len(soldItm) > 0:
					# print('stock updated')
					soldItm.item.current_stock -= soldItm.item_quantity
					soldItm.item.save()
		else:	
			for inline_form in formsets:
				#print('inline form:  ',inline_form)
				if inline_form.has_changed():
					# print('coming in change')
					obj_list = inline_form.save(commit=False)
					# print('obj above for loop: ',obj)
					for obj in obj_list:
						if obj in sells_obj.solditem_set.all():
							for objPrev in sells_obj.solditem_set.all():
								if objPrev == obj:
									obj.item.current_stock += objPrev.item_quantity
									obj.item.current_stock -= obj.item_quantity
									obj.item.save()
						else:
							obj.item.current_stock -= obj.item_quantity
							obj.item.save()
								
							
	
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
			if obj.discount != 0 and obj.discount != None:
				discount = '\n\nYooHoo!, You got '+str(obj.discount)+'Rs. Discount'
			if obj.status == True:
				status = '\n\nPaid via: ' + obj.payment_mode.mode
			else:
				status = '\n\nPayment status: pending'
			# customer = ''
			# if not obj.customer:
			# 	customer = ''
			# message = 'Hello, '+str(obj.customer)+items+discount+total_amount+status+'\n\nThank you for visiting xocolat!'
			# def whatsapp_greetings(message,mobile):
			# 	pywhatkit.sendwhatmsg('+91'+str(mobile),message,datetime.datetime.now().hour,datetime.datetime.now().minute+1)
			# print(message)
			# whatsapp_greetings(message,obj.mobile)
				
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
	
@admin.register(Gst)
class GstAdmin(admin.ModelAdmin):
	list_display = ('cgst','sgst',)

	class Media:
		js =(
            'tracker/js/jquery-3.3.1.min.js', # jquery
            #'tracker/js/gstAdmin.js',   # app static folder
			#'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js', # jquery
            #'js/myscript.js',       # project static folder
            #'tracker/js/invoiceSellsAdmin.js',   # app static folder
			'tracker/js/hideSaveKeepEditing.js', #saveAndKeep Btn js
			'tracker/js/common.js', #common js for all AdminModel

		)

@admin.register(PaymentMode)
class PaymentModeAdmin(admin.ModelAdmin):
	# list_display = ('cgst','sgst',)

	class Media:
		js =(
            'tracker/js/jquery-3.3.1.min.js', # jquery
            #'tracker/js/moreOptions.js',   # app static folder
			#'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js', # jquery
            #'js/myscript.js',       # project static folder
            #'tracker/js/invoiceSellsAdmin.js',   # app static folder
			'tracker/js/hideSaveKeepEditing.js', #saveAndKeep Btn js
			'tracker/js/common.js', #common js for all AdminModel

		)