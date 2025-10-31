import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers สำหรับเก็บค่าที่กรอก
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),

                // ช่องกรอกชื่อ
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                    prefixIcon: const Icon(Icons.person_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 20),

                // ช่องกรอกอีเมล
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: const Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),

                // ช่องกรอกรหัสผ่าน
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20),

                // ช่องยืนยันรหัสผ่าน
                TextField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    prefixIcon: const Icon(Icons.lock_person_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 30),

                // ปุ่มสมัครสมาชิก
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // ตัวอย่าง: ตรวจสอบรหัสผ่านตรงกันไหม
                      if (passwordController.text != confirmPasswordController.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Passwords do not match")),
                        );
                      } else {
                        // TODO: เพิ่ม logic สมัครสมาชิก (เชื่อม backend)
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Register successful!")),
                        );
                      }
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // ลิงก์ไปหน้า Login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // กลับไปหน้า Login
                      },
                      child: const Text(
                        "Login here",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
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
