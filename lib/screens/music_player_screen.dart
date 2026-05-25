import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../constants/colors.dart';
import '../providers/player_provider.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final player = Provider.of<PlayerProvider>(context);
    final song = player.currentSong;

    if (song == null) return const Scaffold(body: Center(child: Text('No song selected')));

    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_down, color: AppColors.white, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Now Playing',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: AppColors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const Spacer(),
            // Album Art
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: song.imageUrl,
                height: MediaQuery.of(context).size.width - 48,
                width: MediaQuery.of(context).size.width - 48,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(color: AppColors.lightGrey),
                errorWidget: (context, url, error) => Container(
                  color: AppColors.lightGrey,
                  child: const Icon(Icons.music_note, size: 100, color: AppColors.white),
                ),
              ),
            ),
            const Spacer(),
            // Song Info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        song.title,
                        style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        song.artist,
                        style: const TextStyle(
                          color: AppColors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: AppColors.white),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Progress Bar (Static for UI)
            Slider(
              value: 0.3,
              onChanged: (v) {},
              activeColor: AppColors.white,
              inactiveColor: AppColors.grey.withOpacity(0.3),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1:02', style: TextStyle(color: AppColors.grey, fontSize: 12)),
                  Text('3:45', style: TextStyle(color: AppColors.grey, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Controls
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.shuffle, color: AppColors.green, size: 28),
                const Icon(Icons.skip_previous, color: AppColors.white, size: 40),
                GestureDetector(
                  onTap: () => player.togglePlay(),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      player.isPlaying ? Icons.pause : Icons.play_arrow,
                      color: AppColors.black,
                      size: 32,
                    ),
                  ),
                ),
                const Icon(Icons.skip_next, color: AppColors.white, size: 40),
                const Icon(Icons.repeat, color: AppColors.grey, size: 28),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
