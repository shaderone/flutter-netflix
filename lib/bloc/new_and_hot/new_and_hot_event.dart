part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotEvent with _$NewAndHotEvent {
  const factory NewAndHotEvent.getComingSoonData() = GetComingSoonData;
  const factory NewAndHotEvent.getEveryonesWatchingData() =
      GetEveryonesWatchingData;
}
