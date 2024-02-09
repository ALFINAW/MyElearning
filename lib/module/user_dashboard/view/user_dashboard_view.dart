import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_dashboard_controller.dart';

class UserDashboardView extends StatefulWidget {
  const UserDashboardView({Key? key}) : super(key: key);

  Widget build(context, UserDashboardController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Welcome back, ",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "Alfin",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ).animate().moveX(begin: -100).fadeIn(),
                const SizedBox(
                  height: 20.0,
                ),
                //carousel_indicator2
                /*
                TODO: Implement this @ controller
                int currentIndex = 0;
                final CarouselController carouselController = CarouselController();
                */
                Builder(builder: (context) {
                  List images = [
                    'https://images.unsplash.com/photo-1595675024853-0f3ec9098ac7?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1507238691740-187a5b1d37b8?q=80&w=1510&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1672309558498-cfcc89afff25?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1604866830893-c13cafa515d5?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                  ];

                  return Column(
                    children: [
                      CarouselSlider(
                        carouselController: controller.carouselController,
                        options: CarouselOptions(
                          height: 160.0,
                          autoPlay: true,
                          enlargeCenterPage: false,
                          clipBehavior: Clip.none,
                          viewportFraction: 1.0,
                          onPageChanged: (index, reason) {
                            controller.currentIndex = index;
                            controller.setState(() {});
                          },
                        ),
                        items: images.map((imageUrl) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(6.0),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      imageUrl,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: images.asMap().entries.map((entry) {
                          bool isSelected =
                              controller.currentIndex == entry.key;
                          return GestureDetector(
                            onTap: () => controller.carouselController
                                .animateToPage(entry.key),
                            child: Container(
                              width: isSelected ? 40 : 6.0,
                              height: 6.0,
                              margin: const EdgeInsets.only(
                                right: 6.0,
                                top: 12.0,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.blue[400]
                                    : const Color(0xff3c3e40),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  );
                }).animate().scale().fadeIn(),
                const SizedBox(
                  height: 20.0,
                ),
                H6(title: 'Popular Course')
                    .animate()
                    .moveX(begin: -100)
                    .fadeIn(),
                const SizedBox(
                  height: 8.0,
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8.0,
                      ),
                    ),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey[300]!,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 90.0,
                        width: 90,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://www.creative-tim.com/blog/content/images/wordpress/2019/09/cover-0408-FlutterMessangerDemo-Luke_Newsletter-30d5a65064b44f0ef56a801d4811964a.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Flutter Basic",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Join thousands of learners",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            child: QOutlineButton(
                              label: "Start learning",
                              height: 32,
                              width: 130,
                              fontSize: 12,
                              onPressed: () {},
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ).animate().moveX(begin: 300).fadeIn(),
                const SizedBox(
                  height: 20.0,
                ),
                H6(
                        title: 'Browse by category',
                        subtitle: 'View all',
                        onPressed: () => Get.to(UserSearchCategoryListView()))
                    .animate()
                    .moveX(begin: -100)
                    .fadeIn(),
                const SizedBox(
                  height: 12.0,
                ),
                //grid_categories
                Builder(builder: (context) {
                  List categories = [
                    {
                      "label": "Dart basic",
                      "cover_image":
                          "https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    },
                    {
                      "label": "Figma basic",
                      "cover_image":
                          "https://images.unsplash.com/photo-1542837336-d14bdf342f9b?q=80&w=1514&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    },
                    {
                      "label": "Construct basic",
                      "cover_image":
                          "https://plus.unsplash.com/premium_photo-1661331911412-330f2e99cf53?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    },
                    {
                      "label": "Coding for kids",
                      "cover_image":
                          "https://images.unsplash.com/photo-1599666520394-50d845fe09c6?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    },
                    {
                      "label": "Ms Excel basic",
                      "cover_image":
                          "https://images.unsplash.com/photo-1542744173-05336fcc7ad4?q=80&w=1402&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    },
                    {
                      "label": "Wordpress basic",
                      "cover_image":
                          "https://images.unsplash.com/photo-1616469832301-ffaeadc68cf3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    },
                  ];

                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.0 / 1.1,
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                    ),
                    itemCount: categories.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var item = categories[index];
                      return InkWell(
                        onTap: () {},
                        child: Container(
                            child: Column(
                          children: [
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    item["cover_image"],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    8.0,
                                  ),
                                ),
                              ),
                            )),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              item["label"],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                      );
                    },
                  );
                }).animate().scale().fadeIn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<UserDashboardView> createState() => UserDashboardController();
}
