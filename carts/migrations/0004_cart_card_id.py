# Generated by Django 4.2.2 on 2023-06-26 19:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('carts', '0003_remove_cart_card_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='cart',
            name='card_id',
            field=models.CharField(default='', max_length=100, unique=True),
            preserve_default=False,
        ),
    ]