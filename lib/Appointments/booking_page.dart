import 'package:appointmentsproject/Appointments/add_family_member.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  String? gender; // Define gender as a nullable string

  // Sample list of doctors (you can replace this with your data)
  List<String> doctors = [
    'Dr. Rashid Minhas (Last Checkup: 2 days ago)',
    'Lailma Baig (Last Checkup: 1 month ago)',
    'Gulmina Baig (Last Checkup: 1 month ago)'
  ];
  String? selectedDoctor;
  bool isExpanded = false;

  // List of image paths for doctors (replace with actual image paths)
  List<String> doctorImages = [
    'assets/images/doctor1.png',
    'assets/images/doctor2.png',
    'assets/images/doctor3.png',
  ];

  int selectedContainerIndex = -1; // Track the index of the selected container
  int selectedContainerIndex2 = -1; // Track the index of the selected container
  int selectedContainerIndex3 = -1; // Track the index of the selected container
  int selectedContainerIndex4 = -1; // Track the index of the selected container

  // Function to build a container with the specified index, day, and number
  InkWell buildContainer(int index, String day, String number) {
    return InkWell(
      onTap: () {
        // Handle the tap event here
        setState(() {
          selectedContainerIndex = index; // Update the selected container index
        });
      },
      child: Container(
        width: 55,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          color: selectedContainerIndex == index
              ? const Color.fromARGB(255, 243, 116, 148)
              : Colors.white,
          // Change the color to amber for the selected container
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(day),
            const SizedBox(height: 10),
            Text(number),
          ],
        ),
      ),
    );
  }

  InkWell buildContainer2(int index, String day, String time) {
    return InkWell(
      onTap: () {
        // Handle the tap event here
        setState(() {
          selectedContainerIndex2 =
              index; // Update the selected container index
        });
      },
      child: Container(
        width: 70,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          color: selectedContainerIndex2 == index
              ? const Color.fromARGB(255, 243, 116, 148)
              : Colors.white,
          // Change the color to amber for the selected container
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$day:$time', // Show the time instead of day
            ),
          ],
        ),
      ),
    );
  }

  InkWell buildContainer3(int index, String day, String time) {
    return InkWell(
      onTap: () {
        // Handle the tap event here
        setState(() {
          selectedContainerIndex3 =
              index; // Update the selected container index
        });
      },
      child: Container(
        width: 70,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          color: selectedContainerIndex3 == index
              ? const Color.fromARGB(255, 243, 116, 148)
              : Colors.white,
          // Change the color to amber for the selected container
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$day:$time', // Show the time instead of day
            ),
          ],
        ),
      ),
    );
  }

  InkWell buildContainer4(int index, String issue) {
    return InkWell(
      onTap: () {
        // Handle the tap event here
        setState(() {
          selectedContainerIndex4 =
              index; // Update the selected container index
        });
      },
      child: Container(
        width: 90,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          color: selectedContainerIndex4 == index
              ? const Color.fromARGB(255, 243, 116, 148)
              : Colors.white,
          // Change the color to amber for the selected container
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              issue, // Show the time instead of day
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: const Text(
          'Book Appointment',
          style: TextStyle(color: Colors.black, fontFamily: 'Montserrat-Black'),
        ),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Personal Details',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Montserrat-Black')),
              const SizedBox(
                height: 5,
              ),
              const Text('We share this information with the doctor',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontFamily: 'Manrope-Light')),
              const SizedBox(
                height: 15,
              ),
              const Text("Patient's Name",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat-Black',
                  )),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username name,';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Phone Number",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat-Black',
                  )),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username name,';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Birth Gender",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat-Black',
                  )),
              const SizedBox(height: 10),
              Row(
                children: [
                  Radio<String>(
                    value: 'Male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                    activeColor: const Color(0xFFDF034D),
                  ),
                  const Text('Male'),
                  Radio<String>(
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                    activeColor: const Color(0xFFDF034D),
                  ),
                  const Text('Female'),
                ],
              ),
              const SizedBox(height: 20),
              // Section for selecting a doctor
              const Text(
                'Doctor',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat-Black',
                ),
              ),
              const SizedBox(height: 10),
              // Add an ExpansionTile for doctor selection
              ExpansionTile(
                title: Text(selectedDoctor ?? 'Next Available'),
                trailing: Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
                onExpansionChanged: (expanded) {
                  setState(() {
                    isExpanded = expanded;
                  });
                },
                children: doctors.asMap().entries.map((entry) {
                  final String doctorInfo = entry.value;
                  final String doctorImage =
                      doctorImages[entry.key]; // Get the associated image path

                  final doctorName = doctorInfo.split(' (Last Checkup:')[0];
                  final lastCheckup =
                      doctorInfo.replaceAll(')', '').split('Last Checkup: ')[1];

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(doctorImage),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctorName,
                          style: const TextStyle(
                            fontSize: 18,
                            fontFamily: 'Montserrat-Black',
                          ),
                        ),
                        Text(
                          'Last Checkup: $lastCheckup',
                          style: const TextStyle(
                            fontSize: 12, // Smaller font size for last checkup
                            fontFamily: 'Manrope-Light',
                          ),
                        ),
                      ],
                    ),
                    // Add additional doctor information here, e.g., images and last checked
                    onTap: () {
                      setState(() {
                        selectedDoctor = doctorName;
                      });
                    },
                  );
                }).toList(),
              ),

              const Text(
                'Availability',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat-Black',
                ),
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  buildContainer(0, 'Today', '12'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer(1, 'Mon', '13'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer(2, 'Tue', '14'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer(3, 'Wed', '15'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer(4, 'Thu', '16'),
                ],
              ),

              const SizedBox(
                height: 15,
              ),

              const Text(
                'Morning Slots',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Montserrat-Black',
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  buildContainer2(0, '8:00', 'AM'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer2(1, '9:00', 'AM'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer2(2, '10:00', 'AM'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer2(3, '11:00', 'AM'),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  buildContainer2(4, '12:00', 'PM'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer2(5, '01:00', 'PM'),
                ],
              ),

              const SizedBox(
                height: 15,
              ),
              const Text(
                'Evening Slots',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Montserrat-Black',
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  buildContainer3(0, '6:00', 'PM'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer3(1, '6:30', 'PM'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer3(2, '07:00', 'PM'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer3(3, '08:00', 'PM'),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  buildContainer3(4, '09:00', 'PM'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer3(5, '10:00', 'PM'),
                ],
              ),

              const SizedBox(
                height: 15,
              ),

              const Text(
                'Symptoms / Text Free',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat-Black',
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Please write in box or just select symptoms below',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Montserrat-Black',
                ),
              ),
              const SizedBox(height: 10),

              SizedBox(
                height: 100,
                child: TextFormField(
                  maxLines: 20,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username name,';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Write',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  buildContainer4(0, 'Fever'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer4(1, 'Rashes'),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer4(2, 'Less sleep'),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Medical History',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat-Black',
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 100,
                child: TextFormField(
                  maxLines: 20,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username name,';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Write',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              const Text(
                'Upload File',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat-Black',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () {
                  // Handle the tap event here
                },
                child: DottedBorder(
                  dashPattern: const [8, 4],
                  color: Colors.grey, // Border color
                  strokeWidth: 2, // Border width
                  radius: const Radius.circular(10), // Border radius
                  borderType: BorderType.RRect, // Rounded rectangle border
                  child: const SizedBox(
                    height: 100,
                    child: Center(
                      child: Text(
                        'Not yet uploaded',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle the button press
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const AddFamilyMemberScreen(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(
                            0xFFDF034D), // Change the background color to amber
                      ),
                      child: const Text('Next'),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
