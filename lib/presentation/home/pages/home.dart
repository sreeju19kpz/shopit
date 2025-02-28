import 'package:flutter/material.dart';
import 'package:shopit/core/configs/assets/app_images.dart';
import 'package:shopit/core/configs/theme/app_colors.dart';
import 'package:shopit/presentation/home/widgets/carousal_slider.dart';
import 'package:shopit/presentation/home/widgets/suggestion_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              "Shop it",
              style: TextStyle(
                color: AppColors.lightBackground,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              SizedBox(
                width: 60,
                child: Icon(Icons.search, color: AppColors.lightBackground),
              ),
            ],
            leading: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  CircleAvatar(backgroundImage: AssetImage(AppImages.introOne)),
                ],
              ),
            ),
            floating: true,
            pinned: false,
            expandedHeight: 44,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ThemeData().primaryColor,
                    ThemeData().scaffoldBackgroundColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.decal,
                  stops: [0, 1],
                ),
              ),
            ),
            centerTitle: false,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                CarouselComponent(onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: GridView.count(
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(8, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SuggestionCard(
                          onPress: () {},
                          width: 20,
                          height: 20,
                          scaleFactor: .9,
                        ),
                      );
                    }),
                  ),
                ),
                CarouselComponent(onPressed: () {}, height: 100),
                CarouselComponent(onPressed: () {}, height: 100),
                CarouselComponent(onPressed: () {}, height: 100),
                CarouselComponent(onPressed: () {}, height: 250),
              ],
            ),
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
