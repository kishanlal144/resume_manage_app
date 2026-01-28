import 'package:flutter/material.dart';
import 'package:resume_manage_app/features/resume_manager/presentation/screens/excel_download_screen.dart';
import 'package:resume_manage_app/features/resume_manager/presentation/widgets/resume_upload_card.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';

class ResumeUploadScreen extends StatefulWidget {
  const ResumeUploadScreen({super.key});

  @override
  State<ResumeUploadScreen> createState() => _ResumeUploadScreenState();
}

class _ResumeUploadScreenState extends State<ResumeUploadScreen> {

  List<String> uploadedFiles = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text(AppStrings.resumeManager),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Column(
          children: [

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primary),
                borderRadius: BorderRadius.circular(AppSizes.radius),
              ),
              child: Column(
                children: [

                  const Icon(
                    Icons.upload_file,
                    size: 50,
                    color: AppColors.primary,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    AppStrings.uploadResumePdf,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),

                  const SizedBox(height: 10),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ),
                    onPressed: () {
                      setState(() {
                        uploadedFiles.add(
                          "Resume_${uploadedFiles.length + 1}.pdf",
                        );
                      });
                    },
                    child: const Text(AppStrings.selectFiles),
                  )
                ],
              ),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: uploadedFiles.isEmpty
                  ? const Center(
                child: Text(
                  AppStrings.noResumeUploaded,
                  style: TextStyle(color: AppColors.grey),
                ),
              )
                  : ListView.builder(
                itemCount: uploadedFiles.length,
                itemBuilder: (context, index) {
                  // return Card(
                  //   margin: const EdgeInsets.only(bottom: 10),
                  //   child: ListTile(
                  //     leading: const Icon(
                  //       Icons.picture_as_pdf,
                  //       color: AppColors.primary,
                  //     ),
                  //     title: Text(uploadedFiles[index]),
                  //     trailing: const Icon(
                  //       Icons.check_circle,
                  //       color: Colors.green,
                  //     ),
                  //   ),
                  // );
                  return ResumeUploadCard(
                    fileName: uploadedFiles[index],
                    isUploaded: true,
                    onDelete: () {
                      setState(() {
                        uploadedFiles.removeAt(index);
                      });
                    },
                  );

                },
              ),
            ),

            const SizedBox(height: 20),

            CustomButton(
              title: AppStrings.generateExcel,
              onPressed: uploadedFiles.isEmpty ? null : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ExcelDownloadScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
