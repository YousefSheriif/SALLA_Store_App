import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/shared/app_main_cubit/main_states.dart';
import 'package:shop_app/shared/network/local/cache_helper.dart';

  class ShopMainCubit  extends Cubit<ShopAppMainStates>
{

  ShopMainCubit():super(AppInitialState());

  static ShopMainCubit get(context) => BlocProvider.of(context);

  bool isDark = false ;
  void changeAppMode({bool? fromShared})
  {
    if (fromShared != null )
    {
      isDark = fromShared;
    }
    else
    {
      isDark= !isDark;

    }
    CacheHelper.saveData(key: 'isDark', value: isDark).then((value)
    {
      emit(ChangeAppModeState());

    });
  }



}
