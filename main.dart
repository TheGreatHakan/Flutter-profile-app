
import 'package:flutter/material.dart';

void main(List<String> args) {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final url = 'https://cdn.pixabay.com/photo/2017/05/31/16/39/windows-2360920_1280.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text("Profile App"),
          centerTitle: true,
        ),

        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(url
                ),            
              ),

              SizedBox(height: 10),
            
               Text("Hakan Keskinoğlu",style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
               ),
            
                Text("Flutter Developer",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[600]
                ),
                ),

                SizedBox(height: 20),

                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        profileText("1.5k", "Followers"),
                        profileText("1.2k", "Following"),
                        profileText("100", "Posts"),
                      ],
                    ),
                  )
                ),

                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text("About Me", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                    
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                          "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700]
                          ),
                        ),
                      ],
                    ),
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


Expanded profileText(String num, String title) {
  return  Expanded(child: 
              Column(
              children: [
            Text(num, style: TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.bold
            ),
           ),
            Text(title),                
        ],
     ),
   );
}