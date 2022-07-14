import 'package:flutter/material.dart';

import 'package:suitable/pages/conta.dart' deferred as conta_page;
import 'load_module.dart';

class ContaModule extends StatelessWidget {
  const ContaModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadModule(
      library: conta_page.loadLibrary(),
      module: () => conta_page.Conta(),
    );
  }
}
