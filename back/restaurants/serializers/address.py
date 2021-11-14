from restaurants.models import Address

from rest_framework import serializers


class AddressSerializer(serializers.ModelSerializer):
    class Meta:
        model = Address
        exclude = ('restaurant',)
