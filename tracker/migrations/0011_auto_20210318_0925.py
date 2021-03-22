# Generated by Django 3.1.6 on 2021-03-18 03:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tracker', '0010_auto_20210312_1754'),
    ]

    operations = [
        migrations.AddField(
            model_name='invoicesells',
            name='container_charge',
            field=models.FloatField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='invoicesells',
            name='is_cancelled',
            field=models.BooleanField(default=False, verbose_name='Is Cancelled'),
        ),
        migrations.AddField(
            model_name='invoicesells',
            name='odr_id',
            field=models.IntegerField(blank=True, null=True, verbose_name='Order Id'),
        ),
    ]
