import 'package:external_dependencies/external_dependencies.dart';

import 'module/pages/dashboard_page.dart';

class DashboardModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const DashboardPage()),
      ];
}
