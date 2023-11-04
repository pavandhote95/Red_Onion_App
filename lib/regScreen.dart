import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RegScreen extends StatelessWidget {
final formkey=GlobalKey<FormState>();
 var emailController = TextEditingController();
  var passwordController=TextEditingController();
  var isObsecure = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffed3237),
                  Color(0xffed3237),
                ]),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Create Your\nAccount',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 30.0,top: 30,right: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 55,
                          child: const TextField(
                            
                            decoration: InputDecoration(   border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.check,color: Colors.grey,),
                                 prefixIcon: Icon(Icons.person),
                                label: Text('Username',style: TextStyle(
                                  
                                  fontWeight: FontWeight.bold,
                                    color:Color.fromARGB(255, 72, 72, 72),
                                ),)
                            ),
                          ),
                        ),
                                SizedBox(height: 15,),
                        SizedBox(
                          height: 50,
                          child: const TextField(
                            
                            decoration: InputDecoration(   border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.check,color: Colors.grey,),
                                    prefixIcon: Icon(Icons.email),
                                label: Text('Email',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                              color:Color.fromARGB(255, 72, 72, 72),
                                ),)
                            ),
                          ),
                        ),
                                SizedBox(height: 15,),
                            SizedBox(height: 55,
                              child: const TextField(
                                                      decoration: InputDecoration(   border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.check,color: Colors.grey,),
                                    prefixIcon: Icon(Icons.phone,),
                                label: Text('Phone',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                               color:Color.fromARGB(255, 72, 72, 72),
                                ),)
                                                      ),
                                                    ),
                            ),
                                SizedBox(height: 15,),
                        SizedBox(
                          height: 55,
                          child: TextFormField(
                                
                                controller:passwordController,
                                   obscureText: isObsecure.value,
                            decoration: InputDecoration(   border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                                        prefixIcon: Icon(Icons.lock,),
                                        
                                label: Text('Password',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                               color:Color.fromARGB(255, 72, 72, 72),
                        
                                ),)
                            ),
                          ),
                        ),
                                SizedBox(height: 15,),
                        SizedBox(
                          height: 60,
                          child:  TextFormField(
                             
                          
                                   obscureText: isObsecure.value,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                                        prefixIcon: Icon(Icons.lock,),
                                label: Text('Confirm Password',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                               color:Color.fromARGB(255, 72, 72, 72),
                                ),)
                            ),
                          ),
                        ),
                  
                       SizedBox(height: 25,),
                        const SizedBox(height: 10,),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xffed3237),
                                  Color(0xffed3237),
                                ]
                            ),
                          ),
                          child: const Center(child: Text('SIGN UP',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white

                          ),),),
                        ),
                        const SizedBox(height: 20,),
                        const Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Already you have account",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),),
                              Text("Sign In",style: TextStyle(///done login page
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                color: Color.fromARGB(255, 8, 0, 0),
                                 
                              ),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
