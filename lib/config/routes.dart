import 'package:work_out/views/plan/plan.dart';
import 'package:work_out/views/record/record.dart';
import 'package:work_out/views/setting/setting.dart';

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
