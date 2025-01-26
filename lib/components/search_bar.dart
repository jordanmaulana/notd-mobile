// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// import '../configs/colors.dart';
// import 'inputs.dart';

// class VSearchBar extends StatefulWidget {
//   final TextEditingController searchController;
//   final Function(String?)? onChanged;
//   const VSearchBar({
//     required this.searchController,
//     required this.onChanged,
//     super.key,
//   });

//   @override
//   State<VSearchBar> createState() => _VSearchBarState();
// }

// class _VSearchBarState extends State<VSearchBar> {
//   bool showCloseButton = false;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 42.0,
//       child: VFormInput(
//         borderColor: VColor.titleItemText,
//         controller: widget.searchController,
//         hint: 'Search tags',
//         onChanged: (value) {
//           if (value!.isNotEmpty) {
//             setState(() {
//               showCloseButton = true;
//             });
//           } else {
//             setState(() {
//               showCloseButton = false;
//             });
//           }
//           controller.getData();
//         },
//         dense: true,
//         fontSize: 12.0,
//         radius: 16.0,
//         suffixIcon: controller.searchController.text.isNotEmpty
//             ? IconButton(
//                 icon: Icon(Icons.close),
//                 onPressed: () {
//                   controller.toggleSearchBar();
//                 },
//               )
//             : null,
//       ),
//     );
//   }
// }
