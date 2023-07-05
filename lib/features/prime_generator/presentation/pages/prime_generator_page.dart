import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prime_generator/core/helpers/helper_color_name.dart';
import 'package:prime_generator/features/prime_generator/presentation/blocs/prime_generator_bloc.dart';

class PrimeGeneratorPage extends StatefulWidget {
  const PrimeGeneratorPage({super.key});
  @override
  State<PrimeGeneratorPage> createState() => _PrimeGeneratorState();
}

class _PrimeGeneratorState extends State<PrimeGeneratorPage> {
  late PrimeGeneratorBloc primeGeneratorBloc;
  final TextEditingController _startNumberController = TextEditingController();
  final TextEditingController _endNumberController = TextEditingController();

  @override
  void initState() {
    primeGeneratorBloc = PrimeGeneratorBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: primeGeneratorBloc,
      listener: (context, PrimeGeneratorState state) {
        state.resultGenerator.fold(() => null,
              (either) => either.fold((l) {
                CherryToast.error(
                  title: const Text('Error'),
                  displayTitle:  true,
                  description: Text(l),
                  animationType: AnimationType.fromRight,
                  animationDuration:  const Duration(milliseconds:  1000),
                  autoDismiss:  true,
                ).show(context);
              }, (r) {
                CherryToast.success(
                  title:  const Text('Success Generate'),
                  displayTitle:  true,
                  description: Text(r.toString()),
                  animationType: AnimationType.fromRight,
                  animationDuration:  const Duration(milliseconds:  1000),
                  autoDismiss:  false,
                ).show(context);
              }),
        );
      },
      child: Material(
        color: HelperColorName.primeGeneratorPageColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Generator Prime Numbers',
                style: TextStyle(
                  fontSize: 20.w,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 32.w,
              ),
              Padding(
                padding: EdgeInsets.all(8.w),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(200.w, 32.w)),
                  child: TextFormField(
                    controller: _startNumberController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Start Number',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.w),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(200.w, 32.w)),
                  child: TextFormField(
                    controller: _endNumberController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'End Number',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.w,
              ),
              TextButton(
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  primeGeneratorBloc.add(PrimeGenerated(
                    startNumber: _startNumberController.text,
                    endNumber: _endNumberController.text,
                  ),
                  );
                },
                child: Text('Generate',
                  style: TextStyle(
                    fontSize: 16.w,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}