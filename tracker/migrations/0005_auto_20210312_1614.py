# Generated by Django 3.1.6 on 2021-03-12 10:44

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tracker', '0004_invoicesells_discount_note'),
    ]

    operations = [
        migrations.AlterField(
            model_name='invoicesells',
            name='discount_note',
            field=models.CharField(blank=True, max_length=400, null=True, verbose_name='Discount Note'),
        ),
        migrations.AlterField(
            model_name='invoicesells',
            name='payment_mode',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='tracker.paymentmode'),
        ),
        migrations.AlterField(
            model_name='invoicesells',
            name='status',
            field=models.BooleanField(blank=True, null=True, verbose_name='Paid'),
        ),
    ]
