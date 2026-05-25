import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'album_card.dart';

class PlaylistSection extends StatelessWidget {
  final String title;

  const PlaylistSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            itemCount: 5,
            itemBuilder: (context, index) {
              return AlbumCard(
                imageUrl: 'https://picsum.photos/seed/${title.hashCode + index}/200',
                title: '$title Mix ${index + 1}',
                subtitle: 'Artist ${index + 1}, Creator',
              );
            },
          ),
        ),
      ],
    );
  }
}
