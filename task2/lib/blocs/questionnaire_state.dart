import 'package:equatable/equatable.dart';
import 'package:task2/models/questionnaire.dart';

abstract class QuestionnaireState extends Equatable {
  const QuestionnaireState();

  @override
  List<Object?> get props => [];
}

class InitialQuestionnaireState extends QuestionnaireState {}

class LoadingQuestionnaireState extends QuestionnaireState {}

class LoadedQuestionnaireState extends QuestionnaireState {
  final Questionnaire questionnaire;

  const LoadedQuestionnaireState(this.questionnaire);

  @override
  List<Object?> get props => [questionnaire];
}

class ErrorQuestionnaireState extends QuestionnaireState {
  final String message;

  const ErrorQuestionnaireState(this.message);

  @override
  List<Object?> get props => [message];
}