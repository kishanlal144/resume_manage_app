import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_sizes.dart';

class ResumeUploadCard extends StatelessWidget {

  final String fileName;
  final bool isUploaded;
  final VoidCallback? onDelete;

  const ResumeUploadCard({
    super.key,
    required this.fileName,
    required this.isUploaded,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),

      child: Row(
        children: [

          const Icon(
            Icons.picture_as_pdf,
            color: AppColors.primary,
            size: 36,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  fileName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  isUploaded ? "Uploaded Successfully" : "Uploading...",
                  style: TextStyle(
                    color: isUploaded ? Colors.green : AppColors.primary,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),

          if (isUploaded)
            const Icon(
              Icons.check_circle,
              color: Colors.green,
            ),

          if (onDelete != null)
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: onDelete,
            )
        ],
      ),
    );
  }
}
