import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_search_category_list_controller.dart';

class UserSearchCategoryListView extends StatefulWidget {
  const UserSearchCategoryListView({Key? key}) : super(key: key);

  Widget build(context, UserSearchCategoryListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Course Category"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //textfield_search
            TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                      )),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blueGrey[900],
                  ),
                  suffixIcon: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.sort,
                      color: Colors.blueGrey[900],
                    ),
                  )),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Builder(builder: (context) {
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
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<UserSearchCategoryListView> createState() =>
      UserSearchCategoryListController();
}
