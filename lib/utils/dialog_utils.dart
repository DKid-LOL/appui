import 'package:flutter/material.dart';

void showRegistrationSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Image.asset(
                  //   'assets/images/hand.png', // thay đổi đúng đường dẫn hình ảnh bạn dùng
                  //   width: 120,
                  //   height: 120,
                  // ),
                  const SizedBox(height: 20),
                  const Text(
                    "Đăng Kí Thành Công",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Trải Nghiệm Tử Vi Ngay",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF8E1D34),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () {
                        Navigator.pop(context); // đóng dialog
                        Navigator.pushReplacementNamed(context, '/login'); // quay lại login
                      },
                      child: const Text(
                        "Đăng Nhập",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close, size: 24),
              ),
            ),
          ],
        ),
      );
    },
  );
}
