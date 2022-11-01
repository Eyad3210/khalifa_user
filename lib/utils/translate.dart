import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "categories": "الأصناف",
          "offers": "العروض",
          "syp": "ل.س",
          "description": "الوصف",
          "contactus": "تواصل معنا",
          "offline": "مغلق الان",
          "online": "متاح الان",
          "home": "الرئيسية",
          "setting": "الضبط",
          "language": "اللغة",
          "darkmode": "الوضع الداكن",
          "notification": "الاشعارات",
          "english": "الانكليزية",
          "arabic": "العربية",
          "searchwithname": "بحث حسب الاسم",
          "videos": "مقاطع فيديو"
        },
        "en": {
          "categories": "Categories",
          "offers": "Offers",
          "syp": "SYP",
          "description": "Description",
          "contactus": "Contact us",
          "offline": "Offline",
          "online": "Online",
          "home": "Home",
          "setting": "Setting",
          "language": "Language",
          "darkmode": "Dark mode",
          "notification": "Notification",
          "english": "English",
          "arabic": "Arabic",
          "searchwithname": "Search with name",
          "videos": "Videos"
        }
      };
}
