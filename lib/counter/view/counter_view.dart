import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(builder: (context, state) {
          return Text(
            '$state',
            style: textTheme.headline2,
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
          
          child: Icon(Icons.add),),
          SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
          child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
