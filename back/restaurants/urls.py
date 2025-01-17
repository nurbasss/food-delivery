from .views import RestaurantViewSet

from rest_framework.routers import DefaultRouter


router = DefaultRouter()

router.register(
    prefix='restaurants', viewset=RestaurantViewSet, basename='restaurants'
)

urlpatterns = router.urls
