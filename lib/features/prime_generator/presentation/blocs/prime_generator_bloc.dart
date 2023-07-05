import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prime_generator/features/prime_generator/domain/usecases/generate_prime_number.dart';

part 'prime_generator_bloc.freezed.dart';
part 'prime_generator_event.dart';
part 'prime_generator_state.dart';

class PrimeGeneratorBloc extends Bloc<PrimeGeneratorEvent, PrimeGeneratorState> {
  PrimeGeneratorBloc() : super(PrimeGeneratorState.initial()) {
    on<PrimeGenerated>(_onPrimeGenerated);
  }

  Future<void> _onPrimeGenerated(PrimeGenerated event, Emitter emit) async {
    final result = generatePrimeNumber(
      GeneratePrimeNumberParams(
        startNumber: event.startNumber,
        endNumber: event.endNumber,
      ));
    emit(state.copyWith(
      resultGenerator: optionOf(result),
    ));
  }
}