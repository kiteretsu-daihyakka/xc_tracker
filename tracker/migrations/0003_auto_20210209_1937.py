# Generated by Django 3.1.6 on 2021-02-09 14:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tracker', '0002_purchaseditem_price'),
    ]

    operations = [
        migrations.AlterField(
            model_name='solditem',
            name='item',
            field=models.OneToOneField(on_delete=django.db.models.deletion.DO_NOTHING, to='tracker.item'),
        ),
    ]
