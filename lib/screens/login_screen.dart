import 'package:flutter/material.dart';
import 'package:task_4/screens/category_screen.dart';
import 'package:task_4/utils/global.dart';
import 'package:task_4/utils/icons.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  void resetFields() {
    userNameController.clear();
    passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    bool Checked = false;
    //shortcut
    final mediaQuery = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App', style: TextStyle(color: Color(0xffF9C86D)),

          ),
          
          backgroundColor: Color(0xff051024),
           iconTheme: IconThemeData(
             color: Colors.white,
             ),
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.bottomCenter,
            height: mediaQuery.height,
            width: mediaQuery.width,
            decoration: const BoxDecoration(
              color:  Color(0xff092254),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50 , top: 20),
                    child: SizedBox(
                        height: 150, width: 180, child: Image.asset(loginLogo)),
                  ),
                  Container(
                    height: mediaQuery.height * 0.75,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xffF9C86D),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color:Color(0xff051024),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 10, left: 20, right: 20),
                            child: TextFormField(
                              controller: userNameController,
                              validator:(value) {
                                if (value!.isEmpty) {
                                  return 'username cannot be empty';
                                }else if (value.length < 4){
                                  return 'username must be at least 4 characters';
                                }
                              },
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Username',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              controller: passwordController ,
                              obscureText: true,
                              validator:(value) {
                                if (value!.isEmpty) {
                                  return 'Password cannot be empty';
                                }else if (value.length < 6){
                                  return 'username must be at least 7 characters';
                                }
                              },
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: 'Password',
                                suffixIcon: const Icon(Icons.visibility_off),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                const Spacer(),
                                const Text('New to quiz app?'),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Register',
                                      style: TextStyle(
                                        color: Color(0xff184C86),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ElevatedButton(

                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  username = userNameController.text;
                                resetFields();
                                  Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return CategoryScreen();
                                  }), 
                                );
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Color(0xff184C86)),
                                shadowColor: WidgetStateProperty.all(Colors.black),
                                elevation: WidgetStateProperty.all(15),
                              ),
                              child: const Text(
                                "Login",
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(fingerPrintLogo),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'Use Touch ID',
                              style: TextStyle(
                                color: Color.fromARGB(130, 73, 72, 72),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 25),
                            child: StatefulBuilder(
                              builder: (context, setState) => Row(
                                children: [
                                  Checkbox(
                                    activeColor:Color(0xff184C86),
                                    value: Checked,
                                    onChanged: (bool? value) =>
                                        setState(() => Checked = value!),
                                  ),
                                  const Text('Remember me',
                                      style: TextStyle(
                                        fontSize: 16,
                                      )),
                                  const Spacer(),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color:Color(0xff184C86),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
