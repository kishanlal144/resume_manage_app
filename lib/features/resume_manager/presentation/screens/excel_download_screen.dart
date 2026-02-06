import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';

class ExcelDownloadScreen extends StatelessWidget {
  const ExcelDownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text(AppStrings.downloadExcel),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(
                Icons.check_circle_outline,
                size: 100,
                color: Colors.green,
              ),

              const SizedBox(height: 20),

              const Text(
                AppStrings.excelGeneratedSuccessfully,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                AppStrings.excelReadyToDownload,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.grey,
                ),
              ),

              const SizedBox(height: 40),

              CustomButton(
                title: AppStrings.downloadExcel,
                onPressed: () {
                  // Later: connect download logic
                },
              ),

              const SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  AppStrings.uploadMoreResumes,
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
