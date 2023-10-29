import 'package:flutter/material.dart';

class PatientSelectionScreen extends StatefulWidget {
  const PatientSelectionScreen({super.key});

  @override
  State<PatientSelectionScreen> createState() => _PatientSelectionScreenState();
}

class _PatientSelectionScreenState extends State<PatientSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
            60.0), // Adjust the preferred height as needed
        child: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: const Text(
            'Select the Patient',
            style:
                TextStyle(color: Colors.black, fontFamily: 'Montserrat-Black'),
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Divider(
            height: 1, // You can adjust the height of the divider as needed
            color: Colors.grey,
          ),

          ListTile(
            leading: const Icon(
                Icons.person_rounded), // Replace with your desired leading icon
            title: RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Brother ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: '(Muhammad Shahryar)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),

          ListTile(
            leading: const Icon(
                Icons.person_rounded), // Replace with your desired leading icon
            title: RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Brother ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: '(Muhammad Hassan)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),

          ListTile(
            leading: const Icon(
              Icons.add,
              color: Color(0xFFDF034D),
            ), // Icon for adding a family member
            title: const Text(
              'Add Family Member',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(
                  3), // Padding for the icon to create rounded background
              decoration: const BoxDecoration(
                shape: BoxShape.circle, // Make it circular
                color: Color(0xFFDF034D), // Red background color
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white, // White color for the arrow icon
              ),
            ),

            onTap: () {
              // Handle the tap event for adding a family member
            },
          ),

          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              height: 1, // You can adjust the height of the divider as needed
              color: Colors.grey,
            ),
          ),

          ListTile(
            leading: const Icon(
                Icons.person_rounded), // Replace with your desired leading icon
            title: RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Me ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: '(Muhammad Shahzaib)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            trailing: const Icon(
              Icons.check,
              weight: 20,
              color: Color(0xFFDF034D),
            ),
          ),

          // Add your content below the divider
        ],
      ),
    );
  }
}
