import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sign_language_interpreter/application/auth/auth_provider.dart';
import '../../../application/main_screen/main_screen_provider.dart';
import '../../auth/screens/sign_in_screen.dart';
import '../widgets/drawer_item.dart';

import '../../../asset_locations.dart';

class MyDrawer extends StatelessWidget {
  // final String Title;

  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final AuthProvider provider =
        Provider.of<AuthProvider>(context, listen: false);
    return Drawer(
      backgroundColor: const Color(0xFF0ea6cc),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        AssetLocations.imgbg,
                        width: size.width / 1.5,
                      ),
                    ),
                    Container(
                      height: size.width / 2.6,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  provider.user!.imagePath),
                              fit: BoxFit.contain)),
                      //   child: CachedNetworkImage(
                      //   imageUrl: provider.user!.imagePath,
                      // ),
                    )
                  ],
                ),
                // ),
              ),
              // const SizedBox(height: 15,),
              Text(
                provider.user!.username,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                provider.user!.email,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          // const SizedBox(height: 44,),
          Container(
            child: DrawerItemTile(),
          ),
          //   Padding(

          //     padding: EdgeInsets.symmetric(vertical: 30.0),
          //     child: ListView.builder(
          //       physics: NeverScrollableScrollPhysics(),
          //       shrinkWrap: true,
          //       itemCount: drawerTitle.length,
          //       itemBuilder: (ctx, i)=> ListTile(
          //         leading: AnimatedContainer(
          //
          //
          //           decoration: BoxDecoration(
          //               color: Colors.black,
          //             borderRadius: BorderRadius.circular(50)
          //           ),
          //           duration: Duration(
          //             milliseconds: 500,
          //           ),
          //           width: i==selectedIndex?17:0,
          //           height: i==selectedIndex?17:0,
          //         ),
          //         title: Text(drawerTitle[i].title,style: const TextStyle(fontSize: 16),),
          //         onTap: (){
          //           onItemTapped(i);
          //           // Navigator.push(context, MaterialPageRoute(builder: (context)=> drawerTitle[i].(context) =>),);
          //           // Navigator.pushNamed(context, drawerTitle[i].route);
          //         //  provider
          //         },
          //
          //       ),
          //     ),
          //   ),
          // const SizedBox(height: 50,),
          ElevatedButton(
            child: const Text('Sign Out',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0ea6cc))),
            onPressed: () async {
              provider.logout();
              // await FirebaseAuth.instance.signOut();
              // Navigator.pushAndRemoveUntil(
              //     context,
              //     MaterialPageRoute(builder: (context) => SignInScreen()),
              //     (route) => false);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 22),
            ),
          ),
        ],
      ),
    );
  }
}
//
// class MyDrawer extends StatelessWidget {
//    MyDrawer({Key? key,}) : super(key: key);
//   // const MyDrawer({Key? key, required this.selectedItemKey, required this.text, this.iconData, required this.root}) : super(key: key);
//   final List<DrawerItem> drawerTitle = [
//     DrawerItem(title: 'Profile', root: '/home',),
//     DrawerItem(title: 'Work Preference', root: '/home',),
//     DrawerItem(title: 'Go Pro', root: '/home',),
//     DrawerItem(title: 'My Channels', root: '/home',),
//     DrawerItem(title: 'Account Settings', root: '/setting',),
//     ];
//
//   // int curretIndex = 0;
//   // final String text;
//   // final String root;
//   // // final ValueKey key;
//   // final IconData? iconData;
//   // final Key? selectedItemKey;
//   // bool get isSelected => key == selectedItemKey;
//
//   @override
//   Widget build(BuildContext context) {
//



      // onTap: onPressed,
    //   style: TextButton.styleFrom(
    //       backgroundColor:
    //       isSelected ? getHighlightColor() : Colors.transparent),
    //   child: buildMenuItemContent(
    //       menuButtonDefinition, isSelected, context),
    // ))
    // );
    // ListTile(
    //             leading: const Icon(Icons.circle,color: Colors.white,size: 16,),
    //             title: const Text('Profile', style: TextStyle(fontSize: 16),),
    //             // selected: true,
    //             // selectedColor: Colors.red,
    //             onTap: () {
    //               // SetState((){ _color = Colors.green;});
    //               // Update the state of the app
    //           // Then close the drawer
    //           Navigator.pushNamed(context,'/home');
    //           },
    //           ),
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// import '../../../asset_locations.dart';
//
// class MyDrawer extends StatefulWidget {
//    const MyDrawer({Key? key, }) : super(key: key);
//   @override
//   _MyDrawerState createState() => _MyDrawerState();
//
//   // final List<MyDrawer> myTitle = [
//   //   MyDrawer(text:'Profile', color: Colors.blueGrey,),
//   //   MyDrawer(text:'Profile', color: Colors.blueGrey,),
//   //   MyDrawer(text:'Profile', color: Colors.blueGrey,),];
// }
//
// class _MyDrawerState extends State<MyDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     // final Size size = MediaQuery.of(context).size;
//     return Drawer(
//       child: Material(
//         color: const Color(0xFF0ea6cc),
//         child: ListView(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 40,bottom: 25),
//                 child: Stack(children: [
//                   Center(child:SvgPicture.asset(AssetLocations.imgbg)),
//                   const Positioned(
//                     left: 82,
//                     top: 5,
//                     child: CircleAvatar(
//                       // fit: BoxFit.cover;
//                     radius: 75, // Image radius
//                     backgroundImage: AssetImage(AssetLocations.profile),
//                   ),)
//                 ],),
//               ),
//               // const SizedBox(height: 15,),
//               const Text('Name',textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 24),),
//               const SizedBox(height: 10,),
//               const Text('noranalaa@test.com',textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 20, fontWeight: FontWeight.w300),),
//               const SizedBox(height: 44,),
//               // Ink(
//               //   color: color ? Colors.blue : Colors.transparent,
//               //   child: ListTile(title: Text('hello')),
//               // ),
//               ListTile(
//                 leading: const Icon(Icons.circle,color: Colors.white,size: 16,),
//                 title: const Text('Profile', style: TextStyle(fontSize: 16),),
//                 // selected: true,
//                 // selectedColor: Colors.red,
//                 onTap: () {
//                   // SetState((){ _color = Colors.green;});
//                   // Update the state of the app
//               // Then close the drawer
//               Navigator.pushNamed(context,'/home');
//               },
//               ),
//               ListTile(leading: const Icon(Icons.circle ,size: 16,),
//                 title: const Text('Work Preference', style: TextStyle(fontSize: 16),),
//                 // tileColor: isSelected ? Colors.blue : null,
//                 onTap: () {Navigator.pushNamed(context,'/setting');
//
//               },),
//               ListTile(leading: const Icon(Icons.circle,color: Colors.white,size: 16,),title: const Text('Go Pro', style: TextStyle(fontSize: 16),),onTap: () {
//                 Navigator.pushNamed(context,'/setting');
//               },),
//               ListTile(leading: const Icon(Icons.circle,color: Colors.white,size: 16,),title: const Text('My Channels', style: TextStyle(fontSize: 16),),onTap: () {
//                 Navigator.pushNamed(context,'/setting');
//               },),
//               ListTile(
//                 leading: const Icon(Icons.circle,color: Colors.white,size: 16,),
//                 title: const Text('Account Settings', style: TextStyle(fontSize: 16),),
//
//                 onTap: () {Navigator.of(context).pop();
//                 Navigator.pushNamed(context,'/setting');
//
//               },),
//         const SizedBox(height: 50,),
//         ElevatedButton(
//             child: const Text('Sign Out', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF0ea6cc))),
//             onPressed: () {},
//             style: ElevatedButton.styleFrom(
//               primary: Colors.white,
//               shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(0),),
//               padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 22),
//             ),
//           ),
//         ],),),
//     );
//   }
// }
//
//
//
// // ListTile(
// // leading: const Icon(Icons.circle,color: Colors.white,size: 16,),
// // title: const Text('Account Settings', style: TextStyle(fontSize: 16),),
// // onTap: ()=>onTap(context,0)
// // },),