import 'dart:developer';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:mysql1/mysql1.dart';

void main() async {
  final conn = await MySqlConnection.connect(
    ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        db: 'mydb',
        password: 'root'),
  );

  await serve((request) => Response(200, body: 'troxa'), 'localhost', 8080);
}
