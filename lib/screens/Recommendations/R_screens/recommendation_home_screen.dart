import 'package:flutter/material.dart';
import 'package:olx_server/constants/colors.dart';
import 'package:olx_server/constants/themeData/themeData.dart';
import 'package:olx_server/models/product_card.dart';
import 'package:olx_server/screens/Recommendations/R_screens/components/categories/categoriesPage.dart';
import 'package:olx_server/screens/Recommendations/R_screens/components/sampleWidget.dart';
import 'package:provider/provider.dart';

class RecommendationHomeScreen extends StatefulWidget {
  const RecommendationHomeScreen({super.key});

  @override
  State<RecommendationHomeScreen> createState() =>
      _RecommendationHomeScreenState();
}

class _RecommendationHomeScreenState extends State<RecommendationHomeScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 130),
                    child: Container(
                      color: theme.isDarkMode == false
                          ? Colors.white
                          : Colors.black,
                      child: TabBar(
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                                color: LightThemeColors.TabIndicatorColor,
                                width: 3)),
                        automaticIndicatorColorAdjustment: true,
                        indicatorSize: TabBarIndicatorSize.tab,
                        splashBorderRadius: BorderRadius.circular(50),
                        labelColor: theme.isDarkMode == false
                            ? LightThemeColors.TabIndicatorColor
                            : LightThemeColors.TabIndicatorColor,
                        controller: _tabController,
                        unselectedLabelColor: theme.isDarkMode == false
                            ? const Color.fromARGB(255, 85, 83, 83)
                            : Colors.grey,
                        tabs: [
                          GestureDetector(
                            child: const Tab(
                              text: "Categories",
                            ),
                          ),
                          GestureDetector(
                            child: const Tab(
                              text: "Recent",
                            ),
                          ),
                          GestureDetector(
                            child: const Tab(
                              text: "Trending",
                            ),
                          )
                        ],
                      ),
                    )),
                // Sample pages
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    controller: _tabController,
                    children: [
                      const CategoriesPage(),
                      const FoodItemCard(
                          imageUrl:
                              "https://images.unsplash.com/photo-1670272590027-72888b060829?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
                          itemName: "itemName",
                          estimatedTime: "3",
                          rating: "4",
                          price: "1000"),
                      SampleWidget(
                        label: 'THIRD PAGE',
                        color: Colors.orange.shade200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
