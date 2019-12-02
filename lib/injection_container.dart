import 'package:first_flutter_app/logindata/repository/login_repository.dart';
import 'package:first_flutter_app/logindata/ui/login_block.dart';
import 'package:first_flutter_app/network/login_data_source.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:http/http.dart' as http;

void initKiwi(){
  kiwi.Container()..registerInstance(http.Client())
      ..registerFactory((c) => LoginDataSource(c.resolve()))
    ..registerFactory((c) => LoginRepository(c.resolve()))
    ..registerFactory((c) => LoginBlock(c.resolve()));
}