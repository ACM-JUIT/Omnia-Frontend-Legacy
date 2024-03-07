import 'package:flutter/material.dart';
import 'package:omnia/Screens/Home/homescreen.dart';
import 'package:omnia/Screens/Signup/login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController usern = TextEditingController();
  final TextEditingController passk = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wolf.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  const Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 380,
                        height: 60,
                        child: TextFormField(
                          controller: usern,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            prefixIcon: const Icon(Icons.email_outlined,
                                color: Colors.white),
                            hintText: 'Register Using JUIT ID',
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !value.contains('@')) {
                              return 'Invalid email format';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 380,
                        height: 60,
                        child: TextFormField(
                          controller: passk,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            prefixIcon: const Icon(Icons.lock_person_outlined,
                                color: Colors.white),
                            hintText: 'Create Password',
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 160,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
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
                            children: [
                              const Text(
                                'Have an Account?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Login(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Log In',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
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
