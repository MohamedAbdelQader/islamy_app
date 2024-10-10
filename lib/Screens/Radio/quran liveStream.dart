import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class QuranRadioEgypt extends StatefulWidget {
  @override
  _QuranRadioEgyptState createState() => _QuranRadioEgyptState();
}

class _QuranRadioEgyptState extends State<QuranRadioEgypt> {
  final _player = AudioPlayer(); // Audio player instance

  @override
  void initState() {
    super.initState();
    _initRadio();
  }

  Future<void> _initRadio() async {
    try {
      await _player.setUrl('https://qurango.net/radio/sunnah.m3u');
    } catch (e) {
      print('Error loading stream: $e');
    }
  }

  @override
  void dispose() {
    _player.dispose(); // Dispose the player when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quran Kareem Radio Egypt'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.radio, size: 100, color: Colors.green),
            SizedBox(height: 20),
            Text(
              'Listen to Quran Kareem Radio Egypt',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            StreamBuilder<PlayerState>(
              stream: _player.playerStateStream,
              builder: (context, snapshot) {
                final playerState = snapshot.data;
                final playing = playerState?.playing;

                if (playing != true) {
                  return ElevatedButton.icon(
                    onPressed: () => _player.play(),
                    icon: Icon(Icons.play_arrow),
                    label: Text('Play'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  );
                } else {
                  return ElevatedButton.icon(
                    onPressed: () => _player.pause(),
                    icon: Icon(Icons.pause),
                    label: Text('Pause'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
