part of 'prime_generator_bloc.dart';

@freezed
class PrimeGeneratorState with _$PrimeGeneratorState {
  const factory PrimeGeneratorState({
    required Option<Either<String, List<int>>> resultGenerator,
  }) = _PrimeGeneratorState;

  factory PrimeGeneratorState.initial() => PrimeGeneratorState(
    resultGenerator: none(),
  );
}
