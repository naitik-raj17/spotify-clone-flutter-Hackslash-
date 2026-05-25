import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';
import '../models/song.dart';
import '../providers/player_provider.dart';
import '../screens/music_player_screen.dart';

class AlbumCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const AlbumCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final player = Provider.of<PlayerProvider>(context, listen: false);
        player.playSong(Song(
          id: DateTime.now().toString(),
          title: title,
          artist: subtitle,
          imageUrl: imageUrl,
        ));
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MusicPlayerScreen()),
        );
      },
      child: Container(
        width: 150,
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Album Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  height: 150,
                  width: 150,
                  color: AppColors.lightGrey,
                ),
                errorWidget: (context, url, error) => Container(
                  height: 150,
                  width: 150,
                  color: AppColors.lightGrey,
                  child: const Icon(Icons.music_note, color: AppColors.white),
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Title
            Text(
              title,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            // Subtitle
            Text(
              subtitle,
              style: const TextStyle(
                color: AppColors.grey,
                fontSize: 12,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
