import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:prime_generator/features/prime_generator/domain/utils/prime_calculation_util.dart';

Either<String, List<int>> generatePrimeNumber(
    GeneratePrimeNumberParams params) {
  try {
    List<int> listPrime = [];
    int? startNumber = int.tryParse(params.startNumber ?? '0');
    int? endNumber = int.tryParse(params.endNumber ?? '0');
    if (startNumber! <= 0) {
      log('Number is less than 0, will set default to 0');
    }

    while (startNumber! <= endNumber!) {
      double numberCheck = PrimeCalculationUtil.isPrimeNumber(
          number: startNumber.toDouble());
      if (numberCheck > 0) {
        listPrime.add(startNumber);
      } else if (numberCheck < 0) {
        break;
      }

      startNumber++;
    }

    if (listPrime.isEmpty) {
      return const Left('Please check your input again, make sure it\'s correct numbers');
    }

    return Right(listPrime);
  } catch (e) {
    return const Left('Unexpected error when generate');
  }
}

class GeneratePrimeNumberParams extends Equatable {
  final String? startNumber;
  final String? endNumber;
  const GeneratePrimeNumberParams({
    this.startNumber,
    this.endNumber,
  });

  @override
  List<Object?> get props => [startNumber, endNumber];
}