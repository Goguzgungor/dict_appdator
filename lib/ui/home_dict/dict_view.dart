import 'package:dict_appdator/src/init/base/base_state.dart';
import 'package:dict_appdator/ui/home_dict/viewmodel/dict_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DictView extends StatefulWidget {
  const DictView({super.key});

  @override
  State<DictView> createState() => _DictViewState();
}

class _DictViewState extends BaseState<DictView> {
  DictViewModel viewModel = DictViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 85, 173, 246),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Observer(builder: (_) {
          return Text(viewModel.trueWord,
              style: TextStyle(color: Colors.white, fontSize: 45));
        }),
        SizedBox(
          width: width,
          height: dynamicHeight(440),
          child: Observer(builder: (_) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2 / 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2),
                  itemCount: 4,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Kelime $index",
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                    );
                  }),
            );
          }),
        ),
      ]),
    );
  }
}
