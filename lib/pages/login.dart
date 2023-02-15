import 'package:flutter/material.dart';
import 'package:ui_practice/utils/routes.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String name='';

  bool changeButton=false;

  final _formkey=GlobalKey<FormState>();

  moveToHome(BuildContext context) async{

    if(_formkey.currentState!.validate()){
      setState((){
        changeButton=true;
      });

      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState((){
        changeButton=false;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Material(
color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,

          child: Column(

            children: [
                   Image.asset('assets/images/login.png',fit: BoxFit.cover,
              ),
              SizedBox(height: 10,),
              Text('Welcome $name',style: TextStyle(fontSize: 30),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your name',
                        labelText: 'Username',
                      ),
                      validator: (value){

                        if(value!.isEmpty){
                          return "User can not be empty";

                        }
                        return null;
                        },

                      onChanged:(value){
                        name!=value;

                        setState((){

                    });

                        }

                    ),
                    SizedBox(height: 10,),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        labelText: 'Password',
                      ),
                      validator: (value){

                        if(value!.isEmpty){
                          return "Password can not be empty";

                        }
                        else if(value.length<6){
                          return "Password should be length  at lest 6";

                        }
                        return null;
                      },

                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),


            Material(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(changeButton?50:8),

              child: InkWell(
                splashColor: Colors.red,

                onTap: ()=> moveToHome(context),

                child: AnimatedContainer(
                  width: changeButton?50: 150,
                  height: 50,
                  alignment: Alignment.center,

                      decoration: BoxDecoration(
                        color:  Colors.deepPurple,
                       shape: changeButton?BoxShape.circle: BoxShape.rectangle
                       // borderRadius: BorderRadius.circular(changeButton?20:10), // <= No more error here :)

                      ),
                  duration: const Duration(seconds: 1),
                  child: changeButton?Icon(Icons.done,
                    color: Colors.white):
                  Text('login',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold
                     ),))








              ),
            ),

            ],

          ),
        ),
      ),

    );
  }
}
