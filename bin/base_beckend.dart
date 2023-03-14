import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';

void main(List<String> arguments) {
  serve((request) => Response(200, body: 'Ola mundo'), 'localhost', 8080);
}
