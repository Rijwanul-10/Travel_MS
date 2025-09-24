from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import TemplateView
from .views import home
from .admin_dashboard import dashboard_view

urlpatterns = [
	path('admin/', admin.site.urls),
	path('admin/dashboard/', dashboard_view, name='admin-dashboard'),
	path('', home, name='home'),
	path('accounts/', include(('accounts.urls', 'accounts'), namespace='accounts')),
	path('destinations/', include(('destinations.urls', 'destinations'), namespace='destinations')),
	path('hotels/', include(('hotels.urls', 'hotels'), namespace='hotels')),
	path('transport/', include(('transport.urls', 'transport'), namespace='transport')),
	path('bookings/', include(('bookings.urls', 'bookings'), namespace='bookings')),
	path('payments/', include(('payments.urls', 'payments'), namespace='payments')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


