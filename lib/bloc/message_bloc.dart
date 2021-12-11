import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageInitial(const <String>[])) {
    on<AddMessage>(addMessage);
  }

  void addMessage(AddMessage event, Emitter<MessageState> emit) {
    var a = List<String>.from(state.messages);
    a.add('hello');
    emit(
      MessageInitial(a),
    );
  }
}
