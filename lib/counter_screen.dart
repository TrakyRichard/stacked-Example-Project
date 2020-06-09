import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:test_stacked/counter_viewmodel.dart';
class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterViewModel>.reactive(
      onModelReady: (model) => model.loadData(),
      viewModelBuilder: () => CounterViewModel(),
        builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("Test Stacked"),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Text("You have press the button this many time"),
            Text('${model.counter}')
          ],),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            model.increment();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      )
    );
  }
}