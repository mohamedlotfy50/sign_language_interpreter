import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../application/main_screen/main_screen_provider.dart';
import '../../../domain/auth/model.dart';
import 'account.dart';
import 'drawer.dart';
import 'main_wrapper_screen.dart';
import 'setting_account.dart';
import 'main_screen.dart';
import '../../../asset_locations.dart';
import '../widgets/setting_item.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var top = 0.0;
  // late ScrollController _scrollController;
  List<SettingItem> settingTile = [
    SettingItem(
        title: 'Account',
        iconSvg: AssetLocations.account,
        route: '/accountSetting'),
    SettingItem(
        title: 'Settings', iconSvg: AssetLocations.setting, route: '/account'),
    SettingItem(title: 'Share', iconSvg: AssetLocations.share, route: '/home'),
    SettingItem(title: 'Rate Us', iconSvg: AssetLocations.rate, route: '/home'),
    SettingItem(
        title: 'Log Out', iconSvg: AssetLocations.logout, route: '/home'),
    // SettingItem(title: 'dsfc', iconSvg: AssetLocations.account),
    // SettingItem(title: 'Settings', iconSvg: AssetLocations.setting),
    // SettingItem(title: 'Share', iconSvg: AssetLocations.share),
    // SettingItem(title: 'Rate Us', iconSvg: AssetLocations.rate),
    // SettingItem(title: 'Log Out', iconSvg: AssetLocations.menu),
    // SettingItem(title: 'Log Osdcut', iconSvg: AssetLocations.logout),
    // SettingItem(title: 'Log Out', iconSvg: AssetLocations.logout),
    // SettingItem(title: 'Log Out', iconSvg: AssetLocations.menu),
    // SettingItem(title: 'Logsdc Out', iconSvg: AssetLocations.logout),
    // SettingItem(title: 'Log Out', iconSvg: AssetLocations.logout),
  ];

  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final MainScreenProvider provider =
        Provider.of<MainScreenProvider>(context);
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              toolbarHeight: 280,
              // centerTitle: true,
              elevation: 0,
              leading: Container(),
              // leading: IconButton(padding: const EdgeInsets.only(top: 25, left: 25),alignment: AlignmentDirectional.topStart,
              //   icon: SvgPicture.asset(AssetLocations.menu, color: Colors.white),
              //   onPressed: () { scaffoldKey.currentState?.openDrawer(); },
              // ),

              expandedHeight: size.height * 0.5,
              flexibleSpace: LayoutBuilder(
                builder: (ctx, cons) {
                  top = cons.biggest.height;
                  return FlexibleSpaceBar(
                      centerTitle: true,
                      title: AnimatedOpacity(
                        duration: const Duration(milliseconds: 250),
                        opacity: top <= size.height * 0.45 ? 1.0 : 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 50.0, right: 40.0, left: 40.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const SizedBox(height: 50,),
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(20), // Image border
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(70),
                                  child: Image.asset(
                                    AssetLocations.profile,
                                    fit: BoxFit.cover,
                                    width: size.width * 0.3,
                                    height: size.height * 0.18,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Noran Alaa',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                            ],
                          ),
                        ),
                      ),
                      background: Image.asset(
                        AssetLocations.profile,
                        fit: BoxFit.cover,
                      ));
                },
              ),
            ),

            SliverList(
                delegate: SliverChildBuilderDelegate((ctx, i) {
              return Container(
                height: (size.height - 300) / 4.8,
                // height: size.height-280,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ListTile(
                    leading: SvgPicture.asset(
                      settingTile[i].iconSvg,
                      width: 40,
                      height: 40,
                    ),
                    title: Text(
                      settingTile[i].title,
                      style: const TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      // print('Tappped');
                      // Navigator.pushNamed(context, settingTile[i].route!);
                      // if (settingTile[i].route == '/accountSetting') {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => AccountSettingScreen(
                      //             userModel: provider.),
                      //       ));
                      // }
                      // if (settingTile[i].route == '/account') {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => AccountScreen()));
                      // }
                      // if(settingTile[i].route=='/home'){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(user: user),));
                      // }

                      // Navigator.pushNamed(context, settingTile[i].route);
                    },
                    // trailing: IconButton(alignment: Alignment.center,icon: settingTile[i]?.iconTrail, onPressed: () { N },),
                    // tileColor: Colors.blueAccent,
                  ),
                ),
              );
            }, childCount: settingTile.length)

                //   List.generate(settingTile.length, (i){
                //     return ListTile(
                //     leading: SvgPicture.asset(settingTile[i].iconSvg, color: Colors.black,),
                //   title: Text(settingTile[i].title,style: TextStyle(fontSize: 18),),
                //   tileColor: Colors.blueAccent,
                //
                // );
                //   }),

                ),

            // SliverToBoxAdapter(
            // // SliverList(
            // //   delegate: SliverChildBuilderDelegate((ctx,i)
            // //
            // //     List.generate(settingTile.length, (i){
            // //       return ListTile(
            // //       leading: SvgPicture.asset(settingTile[i].iconSvg, color: Colors.black,),
            // //     title: Text(settingTile[i].title,style: TextStyle(fontSize: 18),),
            // //     tileColor: Colors.blueAccent,
            // //
            // //   );
            // //     }),
            // //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(20.0),
            //     child: ListView.builder(
            //       itemExtent: size.height*0.1,
            //
            //       primary: false,
            //         shrinkWrap: true,
            //         itemCount: settingTile.length,
            //       itemBuilder: (ctx, i)=> ListTile(
            //         // style: Color,
            //         leading: SvgPicture.asset(settingTile[i].iconSvg, color: Colors.black,height: 22),
            //         title: Text(settingTile[i].title,style: TextStyle(fontSize: 18, backgroundColor: Colors.grey),),
            //         tileColor: Colors.blueAccent,
            //
            //       ),
            //
            //     ),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
//     child: ListView.builder(
//         physics: NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//         itemCount: drawerTitle.length,
//         itemBuilder: (ctx, i)=> ListTile(
//           selected: i==selectedIndex,
//           selectedTileColor: Colors.blue.shade300,
//           leading: AnimatedContainer(
//             decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(50)
//             ),
//             duration: const Duration(
//               milliseconds: 150,
//             ),
//             width: i==selectedIndex?17:0,
//             height: i==selectedIndex?17:0,
//           ),
//           title: Text(drawerTitle[i].title,
//             style: TextStyle(
//                 fontSize: i==selectedIndex?18:16,
//                 fontWeight: i==selectedIndex? FontWeight.w600:FontWeight.w400),),
//           onTap: (){
//             //print('Tappped');
//             //indexClicked=i
//             //index=>selectedIndex
//             Navigator.pop(context);
//             //Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen(),),);
//             //Navigator.of(context).pushNamed(root.routeName);
//             //Navigator.of(context).push(route);
//             //Navigator.of(context).push(MaterialPage(builder: (context)=> drawerTitle[i].route),);
//             //onClicked()=> SelecItem(context,index);
//
//             onItemTapped(i);
//
//
//             // onClicked();
//             // ]Navigator.push(context, MaterialPageRoute(builder: (context)=> DrawerItemTile(i)),);
//             Navigator.pushNamed(context, drawerTitle[i].route);
//             //  provider
//           },
//
//         ),
//       ),
//
//       return Scaffold(
//       backgroundColor: const Color(0xFF0ea6cc),
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//               centerTitle: true,
//               elevation: 0,
//               leading: IconButton(
//                 icon: SvgPicture.asset(AssetLocations.menu, color: Colors.white,),
//                 onPressed: () { scaffoldKey.currentState?.openDrawer(); },
//               ),
//             title: Text('Account Setting'),
//             expandedHeight: size.height*0.35,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Container(
//                 color: Colors.black,
//                 // child: ClipRRect(
//                 //     borderRadius: BorderRadius.circular(20), // Image border
//                 //     child: SizedBox.fromSize(
//                 //       size: Size.fromRadius(48),
//                 //       child: Image.asset(AssetLocations.profile, fit: BoxFit.cover, width: size.width*0.3,height: size.height*0.18,),
//                 //     ),
//                 //   ),
//               ),
//               centerTitle: true,
//               title: Text('Noran Alaa',textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 24),
//             ),
//           ),
//           ),
//         ],
//       ),
//       //
//       //     Container(
//       //       // color: const Color(0xFF0ea6cc),
//       //       width: double.infinity,
//       //       height: size.height*0.25,
//       //       child: Column(
//       //         children: [
//       //
//       //           SizedBox(height: 20,),
//       //           const Text('Noran Alaa',textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 24),),
//       //         ],
//       //       ),
//       //     ),
//       //
//       //     Expanded(
//       //       child: Container(
//       //         width: double.infinity,
//       //         // margin: const EdgeInsets.only(top: 15),
//       //         decoration: const BoxDecoration(
//       //           color: Colors.white,
//       //           borderRadius: BorderRadius.vertical(
//       //             top: Radius.circular(30),),),
//       //         child: SliverToBoxAdapter(
//       //           child: Padding(
//       //             padding: EdgeInsets.symmetric(vertical: 5),
//       //
//       //           ),
//       //
//       //         ),
//       //       ),
//       //     ),
//       //
//       //
//       //
//       //
//       //
//       //
//       // CustomScrollView(
//       //   slivers: [
//       // SliverAppBar(
//       //    backgroundColor: const Color(0xFF0ea6cc),
//       //      // width: double.infinity,
//       //      expandedHeight: size.height*0.4,
//       //    pinned: true,
//       //    // stretch: true,
//       //    // onStretchTrigger: (){},
//       //    flexibleSpace: FlexibleSpaceBar(
//       //      // background: ,
//       //    ),
//       //  ),
//       //  // SliverList(delegate: delegate),
//       //
//       //
//       //        ),
//       // ],
//       //        ),
//       // ],
//       //
//       //    ),
//       //
//       //
//       //   child: Stack(
//       //     children: [
//       //       Container(
//       //         color: const Color(0xFF0ea6cc),
//       //         width: double.infinity,
//       //         height: size.height*0.35,
//       //         child: Column(
//       //           children: [
//       //             ClipRRect(
//       //               borderRadius: BorderRadius.circular(20), // Image border
//       //               child: SizedBox.fromSize(
//       //                 size: Size.fromRadius(48),
//       //                 child: Image.asset(AssetLocations.profile, fit: BoxFit.cover, width: size.width*0.3,height: size.height*0.18,),
//       //               ),
//       //             ),
//       //             SizedBox(height: 20,),
//       //             const Text('Noran Alaa',textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 24),),
//       //
//       //           ],
//       //         ),
//       //       ),
//       //       Padding(
//       //         padding: EdgeInsets.only(top: size.height*0.3,),
//       //         child: Container(
//       //             width: double.infinity,
//       //             // height: size.height*0.5,
//       //             //Sliver
//       //
//       //             decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white,),
//       //             child: Column(
//       //               children: [
//       //                 ListTile(
//       //                   leading: const Icon(Icons.circle,color: Colors.white,size: 16,),
//       //                   title: const Text('Account Settings', style: TextStyle(fontSize: 16),),
//       //
//       //                   onTap: () {Navigator.of(context).pop();
//       //                   Navigator.pushNamed(context,'/setting');
//       //
//       //                   },),
//       //                 ListTile(
//       //                   leading: const Icon(Icons.circle,color: Colors.white,size: 16,),
//       //                   title: const Text('Account Settings', style: TextStyle(fontSize: 16),),
//       //
//       //                   onTap: () {Navigator.of(context).pop();
//       //                   Navigator.pushNamed(context,'/setting');
//       //
//       //                   },),
//       //                 ListTile(
//       //                   leading: const Icon(Icons.circle,color: Colors.blueGrey,size: 16,),
//       //                   title: const Text('Account Settings', style: TextStyle(fontSize: 16),),
//       //
//       //                   onTap: () {Navigator.of(context).pop();
//       //                   Navigator.pushNamed(context,'/setting');
//       //
//       //                   },),
//       //                 ListTile(
//       //                   leading: const Icon(Icons.circle,color: Colors.white,size: 16,),
//       //                   title: const Text('Account Settings', style: TextStyle(fontSize: 16),),
//       //
//       //                   onTap: () {Navigator.of(context).pop();
//       //                   Navigator.pushNamed(context,'/setting');
//       //
//       //                   },),
//       //                 ListTile(
//       //                   leading: const Icon(Icons.circle,color: Colors.white,size: 16,),
//       //                   title: const Text('Account Settings', style: TextStyle(fontSize: 16),),
//       //
//       //                   onTap: () {Navigator.of(context).pop();
//       //                   Navigator.pushNamed(context,'/setting');
//       //
//       //                   },),
//       //                 // IconButton(onPressed: (){}, icon: Icon(Icons.account_box_rounded))
//       //                 // IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.moon_stars_fill))
//       //               ],
//       //             ),
//       //
//       //
//       //
//       //           ),
//       //
//       //
//       //     ],
//       //     ),
//       //
//
//
//       key: scaffoldKey,
//       drawer: MyDrawer(),
//     );
