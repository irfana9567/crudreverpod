import 'package:crud/features/details_adding/controller/addingcontroller_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../main.dart';

class textPage extends ConsumerStatefulWidget {
  const textPage({super.key});

  @override
  ConsumerState createState() => _textPageState();
}

class _textPageState extends ConsumerState<textPage> {
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  addDetails(){
    ref.read(AddingControllerProvider).addUserData(
        nameController.text,
        emailController.text,
        passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: nameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              label: Text("Name",
                style: TextStyle(
                  color: Colors.black,
                ),
            ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w*0.04),),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w*0.04)),
          ),),
          SizedBox(height: w*0.04,),
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              label: Text("Email",
                style: TextStyle(
                  color: Colors.black,
                ),
            ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w*0.04),),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w*0.04)),
          ),),
          SizedBox(height: w*0.04,),
          TextFormField(
            controller: passwordController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              label: Text("Password",
                style: TextStyle(
                  color: Colors.black,
                ),
            ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w*0.04),),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w*0.04)),
          ),),
          SizedBox(height: w*0.04,),

          ElevatedButton(
              onPressed: () {
                addDetails();
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
