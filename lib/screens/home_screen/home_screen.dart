import 'package:flutter/material.dart';
import 'package:st_joseph_school/constants/router_constants.dart';
import 'package:st_joseph_school/screens/add_screen/add_screen.dart';
import 'package:st_joseph_school/screens/menu_screen/menu_screen.dart';
import 'package:st_joseph_school/screens/notification_screen/notification_screen.dart';
import 'package:st_joseph_school/screens/search_screen/search_page.dart';
import 'package:st_joseph_school/utils/ui_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Track the selected index of the bottom navigation

  // List of pages for each bottom nav item
  final List<Widget> _pages = [
    const Dashboard(),
    const SearchPage(),
    const AddPage(),
    const NotificationPage(),
    const MenuPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the selected page

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, size: 40), // Larger middle button
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected index on tap
          });
        },
      ),
    );
  }
}

// Home Page
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpaceMedium(context),
            // Welcome text
            Text(
              "Hi, Amit",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text("Welcome to Admin App",
                style: Theme.of(context).textTheme.titleLarge),
            UIHelper.verticalSpace(2),
            Text(
              "Last Login 5 days Ago",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w200),
            ),
            UIHelper.verticalSpaceSmall(context),
            // Main Stat Cards (Visitors, SMS Left, Space Used)
            Row(
              children: [
                // Website Visitors
                Expanded(
                  child: Card(
                    color: Colors.yellow[300],
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Icon(Icons.people, size: 40),
                          UIHelper.verticalSpaceTiny(context),
                          Text(
                            "26,289",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Total website Visitors",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpaceSmall(context),
            // SMS and Space Row
            Row(
              children: [
                // SMS Left
                Expanded(
                  child: Card(
                    color: Colors.green[300],
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Icon(Icons.message, size: 40),
                          UIHelper.verticalSpaceTiny(context),
                          Text(
                            "30,470",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "SMS Left",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Space Used
                Expanded(
                  child: Card(
                    color: Colors.lightBlue[300],
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Icon(Icons.storage, size: 40),
                          UIHelper.verticalSpaceTiny(context),
                          Text(
                            "523 GB / 1 TB",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Space Used",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpaceSmall(context),
            // Quick Access to Update Section
            Text("Quick Access to Update",
                style: Theme.of(context).textTheme.titleLarge!),
            UIHelper.verticalSpaceSmall(context),
            // Quick Access buttons (Photo Gallery, Achievements)
            Row(
              children: [
                // Photo Gallery
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouterStrings.photoGalleryScreen);
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Icon(Icons.photo_library, size: 40),
                            UIHelper.verticalSpaceTiny(context),
                            Text(
                              "Photo Gallery",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text("Updated 2 Days Ago",
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                UIHelper.horizontalSpaceSmall(context),

                // Achievements
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouterStrings.achievementsScreen);
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Icon(Icons.emoji_events, size: 40),
                            UIHelper.verticalSpaceTiny(context),
                            Text(
                              "Achievements",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text("Updated 12 Months Ago",
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpaceSmall(context),
            // Quick Access buttons (Notice boards, Toppers )
            Row(
              children: [
                // Notice boards
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouterStrings.noticeBoardScreen);
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Icon(Icons.assignment, size: 40),
                            UIHelper.verticalSpaceTiny(context),
                            Text(
                              "Notice boards",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text("Updated 2 Days Ago",
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                UIHelper.horizontalSpaceSmall(context),
                // Toppers
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Icon(Icons.star, size: 40),
                          UIHelper.verticalSpaceTiny(context),
                          Text(
                            "Toppers",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text("Updated 12 Months Ago",
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpaceSmall(context),
            // Quick Access buttons (Birthdays, Blogs )
            Row(
              children: [
                // Birthdays
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Icon(Icons.cake, size: 40),
                          UIHelper.verticalSpaceTiny(context),
                          Text(
                            "Birthdays",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text("Updated 6 Months Ago",
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                  ),
                ),
                UIHelper.horizontalSpaceSmall(context),
                // Blogs
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Icon(Icons.speaker_notes, size: 40),
                          UIHelper.verticalSpaceTiny(context),
                          Text(
                            "Blogs",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text("Updated 1 Month Ago",
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpaceSmall(context),
            // Quick Access buttons (Story, Testimonials )
            Row(
              children: [
                // Story
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouterStrings.storyScreen);
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Icon(Icons.history_edu, size: 40),
                            UIHelper.verticalSpaceTiny(context),
                            Text(
                              "Stories",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text("Updated 2 Months Ago",
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                UIHelper.horizontalSpaceSmall(context),
                // Testimonials
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Icon(Icons.record_voice_over, size: 40),
                          UIHelper.verticalSpaceTiny(context),
                          Text(
                            "Testimonials",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text("Updated 1 Month Ago",
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
