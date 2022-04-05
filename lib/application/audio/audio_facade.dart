abstract class AudioFacade {
  Future<void> initializeRecord();
  void initializeplayer();
  void record();
  Future<void> stopRecorder();
  Future<void> play();
  Future<void> pause();
  Future<void> resume();
  Future<void> delete();
}
