import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

 // final imageUrl="https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.green,

          child: ListView(
            children: [
              DrawerHeader(
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader(
                      margin: EdgeInsets.zero,
                      accountEmail:Text('gobindasoftware@gmail.com',style: TextStyle(fontSize: 18),),
                      accountName: Text("Gobinda Chandra das",style: TextStyle(fontSize: 20),),
                      currentAccountPicture: CircleAvatar(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/login.png'),
                        ),
                      ),


                    ),
                  )
             ),
              const ListTile(
                leading: Icon(Icons.home,
                  color: Colors.black87,
                ),
                title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontSize:15 ),),
              ),
              const ListTile(
                leading: Icon(Icons.person,
                  color: Colors.black87,
                ),
                title: Text("Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontSize:15 ),),
              ),
              const ListTile(
                leading: Icon(Icons.email,
                  color: Colors.black87,
                ),
                title: Text("Email",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontSize:15 ),),
              ),




            ],
          ),
        ),
      ),

    );
  }
}
