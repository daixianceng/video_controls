import "dart:io";

import "package:video_player/video_player.dart";

/// A wrapper around [VideoPlayerController].
///
/// This version maintains state about the full-screen mode.
class VideoController extends VideoPlayerController {
  /// Plays a video from the network.
  VideoController.networkUrl(
    String url, {
    VideoFormat? formatHint,
    Future<ClosedCaptionFile>? closedCaptionFile,
    VideoPlayerOptions? videoPlayerOptions,
    Map<String, String> httpHeaders = const <String, String>{},
  }) : super.networkUrl(
          Uri.parse(url),
          formatHint: formatHint,
          closedCaptionFile: closedCaptionFile,
          videoPlayerOptions: videoPlayerOptions,
          httpHeaders: httpHeaders,
        );

  /// Plays a video from the file.
  VideoController.file(
    File file, {
    Future<ClosedCaptionFile>? closedCaptionFile,
    VideoPlayerOptions? videoPlayerOptions,
    Map<String, String> httpHeaders = const <String, String>{},
  }) : super.file(
          file,
          closedCaptionFile: closedCaptionFile,
          videoPlayerOptions: videoPlayerOptions,
          httpHeaders: httpHeaders,
        );

  /// Whether this video is being played in full screen.
  ///
  /// Flutter takes care of the size of the video player. This value is just to
  /// set the full screen icon and callback correctly.
  bool isFullScreen = false;
}
