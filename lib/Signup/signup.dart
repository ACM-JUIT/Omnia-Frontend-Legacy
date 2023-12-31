import 'package:flutter/material.dart';
import 'package:omnia/Screens/homescreen.dart';
import 'package:omnia/Signup/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final usern = TextEditingController();
  final passk = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        // scrolledUnderElevation: double.infinity,
        // elevation: 0.0,
        // forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: 1864,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/wolf.png"),
          fit: BoxFit.cover,
        )),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // SizedBox(height: 100,),
              Container(
                height: 148,
                width: 558,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image: AssetImage("assets/name.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Register',
                        // textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 380,
                        height: 60,
                        child: TextFormField(
                          controller: usern,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              )),
                              prefixIcon: Icon(Icons.email_outlined,
                                  color: Colors.white),
                              hintText: 'Register Using JUIT ID',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.white),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50.0),
                                  ))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            if (!value.contains('@')) {
                              return 'Invalid email format';
                            }
                            return null; // Return null if the input is valid
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 380,
                        height: 60,
                        child: TextFormField(
                          controller: passk,
                          decoration: const InputDecoration(
                              // fillColor: Color.fromARGB(255, 255, 0, 0),
                              // filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              )),
                              prefixIcon: Icon(Icons.lock_person_outlined,
                                  color: Colors.white),
                              hintText: 'Create Password',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.white),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50.0),
                                  ))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            if (!value.contains('@')) {
                              return 'Invalid email format';
                            }
                            return null; // Return null if the input is valid
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 160,
                            child: ElevatedButton(
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(),
                                    ));
                              },
                              // icon: const Icon(Icons.arrow_forward,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Have an Account?',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Login()));
                                  },
                                  child: const Text(
                                    'Log In',
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w800),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
