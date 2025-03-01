import 'package:flutter/material.dart';
import 'package:shopit/core/configs/theme/app_colors.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final TextEditingController _controller = TextEditingController();
  FocusNode focusNode = FocusNode();
  String hintText = 'Hello , iam Hint';
  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        hintText = '';
      } else {
        hintText = 'Hello , iam Hint';
      }
      setState(() {});
    });
  }

  void onChanged(String? val) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeData().primaryColor,

        title: TextField(
          style: TextStyle(fontSize: 16.0, color: Colors.white),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 20,
              color: AppColors.lightBackground,
            ),
            border: OutlineInputBorder(),
            hintText: "sss",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.lightBackground),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.lightBackground),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.lightBackground),
            ),
            focusColor: AppColors.lightBackground,
            hintStyle: TextStyle(
              color: AppColors.lightBackground.withAlpha(90),
            ),
          ),
          cursorColor: AppColors.lightBackground.withAlpha(90),
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Chip(label: Text("data")),
            floating: true,
            pinned: false,
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Card(
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      child: Text(
                        "Item $index",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
                childCount: 20, // Total items in grid
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Two items per row
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.5, // Adjust for height/width ratio
              ),
            ),
          ),
        ],
      ),
    );
  }
}
