part of 'downloads_bloc.dart';
// files cannot be imported in part of directives

@freezed
class DownloadsEvent with _$DownloadsEvent {
  const factory DownloadsEvent.getDownloadsPosters() = GetDownloadsPosters;
}
