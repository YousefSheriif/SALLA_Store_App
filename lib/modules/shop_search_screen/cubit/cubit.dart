import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/models/search_model/shop_search_model.dart';
import 'package:shop_app/modules/shop_search_screen/cubit/states.dart';
import 'package:shop_app/shared/components/constant.dart';
import 'package:shop_app/shared/network/end_points.dart';
import 'package:shop_app/shared/network/remote/dio_helper.dart';

class SearchCubit extends Cubit<SearchStates>
{
  SearchCubit() : super(SearchInitialState());

  static SearchCubit get(context) => BlocProvider.of(context);

  SearchModel? searchModel;

  void search({ required String  text})
  {
    emit(SearchLoadingState());
    DioHelper.postData(
      url: SEARCH,
      data:
      {
        'text': text,
      },
      token: token,
    ).then((value)
    {
      searchModel = SearchModel.fromJson(value.data);
      emit(SearchSuccessState());
    }).catchError((error)
    {
      print(error.toString());
      emit(SearchErrorState());
    });
  }
}
