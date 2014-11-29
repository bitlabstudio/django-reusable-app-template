"""Templatetags for the VAR_PACKAGE_NAME app."""
from django import template

register = template.Library()

#@register.filter
#def lower(value):
#    """
#    Converts a string into all lowercase
#
#    """
#    return value.lower()
