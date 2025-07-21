import 'package:flutter/material.dart';

class Privacypolicy extends StatefulWidget {
  const Privacypolicy({super.key});

  @override
  State<Privacypolicy> createState() => _PrivacypolicyState();
}

class _PrivacypolicyState extends State<Privacypolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios)),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(fontSize: 18.5),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Lorem ipsum dolor site amet consecter",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.7),
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur. Lacus faucibus diam commodo velit dignissim urna at aliquam. Neque est at eu dictum mauris neque. Eleifend sagittis mattis amet ultrices nunc ut ac gravida proin. Adipiscing dui eu accumsan cursus tincidunt urna nunc diam. Eu a sagittis molestie erat tincidunt a montes. Mauris potenti in quis pharetra in. Proin a leo feugiat aliquet.",
                        style: TextStyle(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 96, 95, 95)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.7),
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur. Lacus faucibus diam commodo velit dignissim urna at aliquam. Neque est at eu dictum mauris neque. Eleifend sagittis mattis amet ultrices nunc ut ac gravida proin. Adipiscing dui eu accumsan cursus tincidunt urna nunc diam. Eu a sagittis molestie erat tincidunt a montes. Mauris potenti in quis pharetra in. Proin a leo feugiat aliquet.",
                        style: TextStyle(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 96, 95, 95)),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Lorem ipsum dolor site amet consecter",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.7),
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur. Lacus faucibus diam commodo velit dignissim urna at aliquam. Neque est at eu dictum mauris neque. Eleifend sagittis mattis amet ultrices nunc ut ac gravida proin. Adipiscing dui eu accumsan cursus tincidunt urna nunc diam. Eu a sagittis molestie erat tincidunt a montes. Mauris potenti in quis pharetra in. Proin a leo feugiat aliquet.",
                        style: TextStyle(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 96, 95, 95)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.7),
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur. Lacus faucibus diam commodo velit dignissim urna at aliquam. Neque est at eu dictum mauris neque. Eleifend sagittis mattis amet ultrices nunc ut ac gravida proin. Adipiscing dui eu accumsan cursus tincidunt urna nunc diam. Eu a sagittis molestie erat tincidunt a montes. Mauris potenti in quis pharetra in. Proin a leo feugiat aliquet.",
                        style: TextStyle(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 96, 95, 95)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
