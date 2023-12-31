import 'package:shop_app/modules/shop_login/shop_login_screen.dart';
import 'package:shop_app/shared/components/components.dart';
import 'package:shop_app/shared/network/local/cache_helper.dart';

String ?token ;


bool? darkCopy ;





void signOut(context)
{
  CacheHelper.removeData(key: 'token').then((value)
  {
    if(value == true)
    {
      navigateAndFinish(context, ShopLoginScreen(),);
    }
  });
}





void printFullText(String text)
{
  final pattern = RegExp('.{1,8000}');
  pattern.allMatches(text).forEach((match) => print(match.group(0)));

}