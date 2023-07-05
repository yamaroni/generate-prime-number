part of 'prime_generator_bloc.dart';

@freezed
class PrimeGeneratorEvent with _$PrimeGeneratorEvent {
  const factory PrimeGeneratorEvent.primeGenerated({
    required String startNumber,
    required String endNumber,
  }) = PrimeGenerated;
}
