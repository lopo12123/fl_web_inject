part of 'phantom.dart';

class PhantomViewController {
  /// BadSnapshotController used to capture snapshot of PaperCard
  final bsc = BadSnapshotController();

  /// test method
  @JSExport()
  test(JSObject paper) {
    final title = paper.getProperty('title'.toJS);
    print(title.runtimeType);
    print(title as String);
  }

  /// generate a paper card and return the image as a Uint8Array to JS side
  ///
  /// [detail] required field of card
  /// [pixelRatio] pixel ratio of the image, default to 1.0
  @JSExport()
  JSPromise<JSUint8Array> generatePaperCard(
    JSObject detail, [
    double pixelRatio = 1.0,
  ]) {
    return bsc.captureAsPngBuffer(pixelRatio).then((v) => v.toJS).toJS;
  }
}

final PhantomViewController phantomViewController = PhantomViewController();
