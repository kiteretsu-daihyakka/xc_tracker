# Generated by Django 3.1.6 on 2021-02-10 11:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tracker', '0004_auto_20210210_1635'),
    ]

    operations = [
        migrations.RenameField(
            model_name='invoicepurchase',
            old_name='payment_price',
            new_name='total_amount',
        ),
    ]