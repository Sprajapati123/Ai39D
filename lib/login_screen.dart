import 'package:ai39d/constants/app_images.dart';
import 'package:ai39d/widgets/social_media_card.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("Sign In")),
            SizedBox(height: 100),

            // Text("Email"),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: SocialMediaCard(label: "Facebook",image: fbImage,)
                ),
                Expanded(
                  child: SocialMediaCard(label: "Google",image: googleImage,)
                ),
              ],
            ),


            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hint: Text("abc@gmail.com"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 1, color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 1, color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: passController,
              obscureText: visibility,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      visibility = !visibility;
                    });
                  },
                  icon: Icon(
                    visibility == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                hint: Text("*******"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 1, color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 1, color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
              ),
            ),



            TextButton(onPressed: (){}, child: Text("Forget password"),),

            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                  ),
                  onPressed: (){}, child: Text("Sign In")),
            )


          ],
        ),
      ),
    );
  }
}
