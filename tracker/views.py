from django.shortcuts import render
from django.http import HttpResponse
from .models import Item,SoldItem,PurchasedItem
import pytesseract
from PIL import Image
from googletrans import Translator
from xc_stock_tracker.settings import BASE_DIR
import os
import pywhatkit
import datetime
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle, Paragraph, Image
from reportlab.lib.pagesizes import letter,landscape
from reportlab.lib import colors
from reportlab.lib.styles import getSampleStyleSheet,ParagraphStyle
from reportlab.lib.units import inch, mm
from reportlab.lib.pagesizes import A3
from reportlab.pdfgen.canvas import Canvas
from django.http import FileResponse
from xc_stock_tracker.settings import STATIC_URL as static
from xc_stock_tracker.settings import BASE_DIR

from selenium import webdriver
from selenium.webdriver.support import expected_conditions as ec
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

import time

# Create your views here.

def stock_details(request):
	# help(pywhatkit)
	# pywhatkit.help
	# pywhatkit.manual()
	# browser = webdriver.Chrome(os.path.join(BASE_DIR,'chromedriver'))
	# browser.get('https://web.whatsapp.com/')
	# wait = WebDriverWait(browser, 10000)
	# target = '"temp_group"' #enter contact name here
	# string = "Message by python!" #target msg
	# x_arg = ' //span[contains(@title, ' + target +')]'
	# target = wait.until(ec.presence_of_element_located((By.XPATH, x_arg)))
	# target.click()
	
	# input_box = browser.find_element_by_class_name('_1Plpp')
	for i in range(100):#loops runs for 100 times
		input_box.send_keys(string + Keys.ENTER)

	print('coming here')
	title = ''	
	# def end_stock_today():
	lst = [['Date:- '+str(datetime.date.today())],[title]]
	
	sold_items = SoldItem.objects.all()
	if len(sold_items) > 0:
		lst.append(['SELLS'])
		lst.append(['SR\nNO.', 'Name','Qnt.', 'Price'])
		
	sr_no = 0
	for sold_item in sold_items:
		sr_no += 1
		row = [sr_no,sold_item.item.item_name,sold_item.item_quantity,sold_item.price]
		lst.append(row)
	
	# purchased_items = PurchasedItem.objects.all()
	# if len(purchased_items) > 0:
		# lst.append([])
		# lst.append(['PURCHASES'])
		# lst.append(['SR\nNO.', 'Name','Qnt.', 'Price'])
	# # else:
		# # lst.append(['There are no purchases today'])
	# sr_no = 0
	# for purchased_item in purchased_items:
		# sr_no += 1
		# row = [sr_no,purchased_item.item.item_name,purchased_item.item_quantity,purchased_item.price]
		# lst.append(row)
	
	filename = 'KW_Today_Report.pdf'

	# bhavin
	# objects = Appointment.objects.all()

	# end
	pdf = SimpleDocTemplate(
		filename,
		pagesize=letter,
		title="Kwality Wall's Sells & Purchases"
	)
	style = TableStyle([
		# ('SPAN', (0, 0), (-1, 0)),
		# ('SPAN', (0, -1), (-1, -1)),
		# ('FONTSIZE', (0, 0), (0, 0), 20),

		# ('BACKGROUND', (0, 1), (-1, 1), colors.green),
		# ('TEXTCOLOR', (0, 1), (-1, 1), colors.whitesmoke),

		# ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
		# ('FONTSIZE', (0, 1), (-1, -1), 12),
		# # ('RIGHTPADDING', (0, 1), (-1, -1), 0),
		# ('BOTTOMPADDING', (0, 1), (-1, 1), 7),
		# ('TOPPADDING', (0, -1), (-1, -1), 8),

		# ('BOTTOMPADDING', (0, 0), (0, 0), 35),
		('GRID',(0,2),(-1,-1),0.25,colors.black)
	])
	table = Table(lst)
	table.setStyle(style)
	elems = []
	elems.append(table)

	pdf.build(elems)
		# p.drawCentredString(274,800,'Orders')
		# p.showPage()
		# p.save()
		# buffer.seek(0)

		# return FileResponse(buffer,as_attachment=False,filename=filename)
	# return FileResponse(open(filename, 'rb'), as_attachment=False, filename=filename)
	#file = open(filename, 'rb')
	
	# file_path = os.path.join(BASE_DIR,'KW_Today_Report.pdf') #file path
	#This gives the image/file pathname.
	# from time import sleep #sending image to whatsapp
	# attachment_section = browser.find_element_by_xpath('//div[@title = "Attach"]')
	# attachment_section.click()
	# image_box = browser.find_element_by_xpath('//input[@accept="image/*,video/mp4,video/3gpp,video/quicktime"]')
	# image_box.send_keys(file_path)
	# sleep(3)
	# send_button = browser.find_element_by_xpath('//span[@data-icon="send-light"]')
	# send_button.click()
	
	# #pywhatkit.sendwhatmsg('+919737524730',file,datetime.datetime.now().hour,datetime.datetime.now().minute+1)
	# return HttpResponse('Done')
	# img = Image.open(os.path.join(BASE_DIR,'tracker/mangoRus.jpg'))
	# print(img)
	# # path where the tesseract module is installed 
	# pytesseract.pytesseract.tesseract_cmd =os.path.join(BASE_DIR,'Tesseract-OCR/tesseract.exe')
	# result = pytesseract.image_to_string(img, config='--psm 11')    
	# # write text in a text file and save it to source path    
	# # with open('abc.txt',mode ='w') as file:      
		 # # file.write(result) 
	# print(result)
	# print(datetime.datetime.now().hour)
	#whatsapp_greetings()
	
	#return render(request,'tracker/stock_detail.html',{'items':Item.objects.all(),'result':'result'})
	
def whatsapp_greetings():
	pywhatkit.sendwhatmsg('+918128940916',"Greetings from xocolate, Please give us feedback how you find your ice cream/corn provided by kwality wall's",datetime.datetime.now().hour,datetime.datetime.now().minute+1)
	return None
	
	
	
	