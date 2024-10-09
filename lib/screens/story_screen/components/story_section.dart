import 'package:flutter/material.dart';
import 'package:st_joseph_school/constants/string_constants.dart';
import 'package:st_joseph_school/utils/ui_helper.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Story Title Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Story",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "4 Story Updated | 150 Archive",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          // Horizontal ListView for Story Cards
          Container(
            height: 150, // Adjust height based on your card image size
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Add Story Card
                Card(
                  elevation: 3,
                  child: Container(
                    width: 100, // Width of the Add Story card
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          size: 50,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 8),
                        Text("Add Story"),
                      ],
                    ),
                  ),
                ),

                // Example Story Cards (Replace with dynamic content)
                storyCard('assets/story_image_1.png'),
                storyCard('assets/story_image_2.png'),
                storyCard('assets/story_image_3.png'),
              ],
            ),
          ),
          SizedBox(height: 16),

          // Action Buttons (Edit and View)
          UIHelper.verticalSpaceTiny(context),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {}, child: Text(AppStrings.editAchievements)),
              ),
              UIHelper.horizontalSpaceSmall(context),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {}, child: Text(AppStrings.viewAchievement)),
              ),
            ],
          )
        ],
      ),
    );
  }

  // Story Card Widget
  Widget storyCard(String imagePath) {
    return Card(
      elevation: 3,
      child: Container(
        width: 100, // Adjust the width as needed
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
