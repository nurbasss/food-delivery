from .views import UserModelViewSet

from rest_framework.authtoken import views
from rest_framework.routers import DefaultRouter
from django.urls import path


urlpatterns = [
    path('token-auth/', views.obtain_auth_token)
]

router = DefaultRouter()

router.register(
    prefix='users', viewset=UserModelViewSet, basename='users'
)

urlpatterns += router.urls