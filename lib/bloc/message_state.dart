// ignore_for_file: must_be_immutable

part of 'message_bloc.dart';

abstract class MessageState extends Equatable {
  List<String> messages;
  MessageState(this.messages);

  @override
  List<Object> get props => [messages];
}

class MessageInitial extends MessageState {
  MessageInitial(messages) : super(messages);
}
