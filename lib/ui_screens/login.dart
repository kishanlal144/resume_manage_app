import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                const SizedBox(height: 60),

                /// App Logo / Title
                const Icon(
                  Icons.lock_outline,
                  size: 80,
                  color: Colors.blue,
                ),

                const SizedBox(height: 20),

                const Text(
                  "Welcome Back",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Login to continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 40),

                /// Login ID / Email
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Login ID / Email",
                    prefixIcon: const Icon(Icons.email, color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// Password
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// Login Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Login logic here
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),

                const SizedBox(height: 20),

                /// OR Divider
                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: 20),

                /// Other Login Options
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.g_mobiledata, color: Colors.blue),
                  label: const Text(
                    "Continue with Google",
                    style: TextStyle(color: Colors.blue),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook, color: Colors.blue),
                  label: const Text(
                    "Continue with Facebook",
                    style: TextStyle(color: Colors.blue),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// Signup Option
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Don't have an account? "),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
