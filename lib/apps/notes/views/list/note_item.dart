import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:notd_mobile/components/texts.dart';
import 'package:notd_mobile/configs/colors.dart';

import 'package:google_fonts/google_fonts.dart';
import '../../models/note.dart';

final urlRegex = RegExp(r'(https?:\/\/[^\s]+)');
final hashtagRegex = RegExp(r'(\#[a-zA-Z0-9_]+)');

class NoteItem extends StatelessWidget {
  final Note data;
  const NoteItem(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final urls = urlRegex
        .allMatches(data.content)
        .map((match) => match.group(0))
        .toList();

    final textWithoutUrls = data.content.replaceAll(urlRegex, '');
    List<String> parts = textWithoutUrls.split(RegExp(r'\s+'));

    return ListTile(
      title: VText(
        data.user.name,
        fontWeight: FontWeight.bold,
      ),
      titleAlignment: ListTileTitleAlignment.top,
      leading: CircleAvatar(),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 2.0,
            runSpacing: 8.0,
            children: parts.asMap().entries.map((entry) {
              final index = entry.key;
              final part = entry.value;

              if (part.startsWith('#')) {
                return GestureDetector(
                  key: ValueKey(index),
                  onTap: () {
                    // Handle click on hashtag
                  },
                  child: VText(
                    part,
                    color: Colors.blue,
                  ),
                );
              }

              return VText(
                part,
                key: ValueKey(index),
              );
            }).toList(),
          ),
          SizedBox(height: 8.0),
          AnyLinkPreview(
            backgroundColor: VColor.white,
            link: urls[0]!,
            displayDirection: UIDirection.uiDirectionHorizontal,
            showMultimedia: true,
            bodyMaxLines: 2,
            bodyTextOverflow: TextOverflow.ellipsis,
            titleStyle: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
            bodyStyle: GoogleFonts.poppins(fontSize: 12),
            errorBody: 'Preview tidak bisa ditampilkan',
            errorTitle: 'Kesalahan',
            errorWidget: Container(
              color: Colors.grey[300],
              child: const Text('Oops!'),
            ),
            removeElevation: true,
          )
        ],
      ),
    );
  }
}
