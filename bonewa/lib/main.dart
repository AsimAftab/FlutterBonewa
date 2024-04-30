



import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bonewa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bonewa'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(

        
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Welcome To Community',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const Text(
                'Welcome To Bonewa',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Please Log In To Continue',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              
              const Text(
                'Username',

                textDirection: TextDirection.ltr,
                
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
                 const SizedBox(height: 15),
                 TextField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(174, 238, 238, 238),
                  //fillColor: Color(int.parse('0xF2F2F2')),
                  filled: true,
                  hintText: 'Enter Your Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none // Rounded corners
                  ),
                  // Hide text input
                ),
                obscureText: true, // Hide text input
              ),
              const SizedBox(height: 15), // Added SizedBox for spacing
              const Text(
                'Password',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: const Color.fromARGB(174, 238, 238, 238),
                 // fillColor: Color(int.parse('0xF2F2F2')),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none
                     // Rounded corners
                  ),
                  
                  // Hide text input
                ),
                obscureText: true, // Hide text input
              ),
              const SizedBox(height:40), // Added SizedBox for spacing
              Row(
                children: [
                  Expanded(child: 
                ElevatedButton(onPressed: (){}, 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF468B97)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ), 
                ),
                child: const Text('Login')
                
                ))],

              )
              
            ],
          ),
        ),
      ),
    );
  }
}
