import profile

from django.contrib import admin

from analyse.models import pckimg, sgts, package, events
from home.models import Profile

admin.site.register(pckimg)
admin.site.register(events)
admin.site.empty_value_display = '(None)'

@admin.register(sgts)
class Guid(admin.ModelAdmin):
    def fng(self, obj):
        return '<a href="%s">%s</a>' % (obj.s_url, obj.s_url)


@admin.register(package)
class Analyser(admin.ModelAdmin):

    def get_form(self, request, obj=None, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        is_superuser = request.user.is_superuser
        if not is_superuser:
            form.base_fields['p_app'].disabled = True
            return form
        # return '<a href="%s">%s</a>' % (obj.s_url, obj.s_url)


@admin.register(Profile)
class Guide(admin.ModelAdmin):
    def fname(self, obj):
        return obj.user.first_name

    def lname(self, obj):
        return obj.user.last_name

    def username(self, obj):
        return obj.user.username

    list_display = ['username', 'fname', 'lname', 'location', 'email', 'app']
    list_filter = ('role',)
