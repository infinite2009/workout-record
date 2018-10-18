import 'package:body_building/views/plan/plan.dart';
import 'package:body_building/views/record/record.dart';
import 'package:body_building/views/setting/setting.dart';

final routes = [
  {
    'name': '/plan',
    'page': new Plan(),
  },
  {
    'name': '/record',
    'page': AreaAndLineChart.withSampleData(),
  },
  {
    'name': '/setting',
    'page': new Setting(),
  }
];
