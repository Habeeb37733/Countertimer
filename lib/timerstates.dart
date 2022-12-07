import 'package:equatable/equatable.dart';

abstract class TimerState extends Equatable{
  final int? elapsed;
  const TimerState(this.elapsed);
}


class TimerInitial extends TimerState{
  TimerInitial():super(0);

  @override
  // TODO: implement props
  List<Object?> get props => [];

}


class TimerProgress extends TimerState{
  TimerProgress(int? elapsed) : super(elapsed);

  @override
  // TODO: implement props
  List<Object?> get props => [elapsed];

}