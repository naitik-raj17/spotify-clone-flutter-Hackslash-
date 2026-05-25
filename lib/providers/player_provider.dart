import 'package:flutter/material.dart';
import '../models/song.dart';

class PlayerProvider with ChangeNotifier {
  Song? _currentSong;
  bool _isPlaying = false;

  Song? get currentSong => _currentSong;
  bool get isPlaying => _isPlaying;

  void playSong(Song song) {
    _currentSong = song;
    _isPlaying = true;
    notifyListeners();
  }

  void togglePlay() {
    _isPlaying = !_isPlaying;
    notifyListeners();
  }
}
