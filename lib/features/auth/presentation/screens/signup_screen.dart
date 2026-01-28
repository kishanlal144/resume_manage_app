import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/custom_button.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  String mobileNumber = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSizes.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              const SizedBox(height: 60),

              const Icon(
                Icons.person_add_alt_1,
                size: 60,
                color: AppColors.primary,
              ),

              const SizedBox(height: 20),

              const Text(
                AppStrings.createAccount,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                AppStrings.signUpToStart,
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.grey),
              ),

              const SizedBox(height: 30),

              _buildField(
                controller: nameController,
                label: AppStrings.enterName,
                icon: Icons.person,
              ),

              const SizedBox(height: 20),

              _buildField(
                controller: emailController,
                label: AppStrings.enterEmail,
                icon: Icons.email,
              ),

              const SizedBox(height: 20),

              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: AppStrings.mobileNumber,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.radius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.radius),
                    borderSide: const BorderSide(color: AppColors.primary),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  mobileNumber = phone.completeNumber;
                },
              ),

              const SizedBox(height: 20),

              _buildField(
                controller: passwordController,
                label: AppStrings.setPassword,
                icon: Icons.lock,
                isPassword: true,
              ),

              const SizedBox(height: 20),

              _buildField(
                controller: confirmPasswordController,
                label: AppStrings.reEnterPassword,
                icon: Icons.lock,
                isPassword: true,
              ),

              const SizedBox(height: 30),

              CustomButton(
                title: AppStrings.signUp,
                onPressed: () {
                  // provider.signup(...)
                },
              ),

              const SizedBox(height: 20),

              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    AppStrings.signIn,
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool isPassword = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: AppColors.primary),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radius),
          borderSide: const BorderSide(color: AppColors.primary),
        ),
      ),
    );
  }
}
