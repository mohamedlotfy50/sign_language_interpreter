import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../asset_locations.dart';
import '../widgets/setting_item.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  List<SettingItem> accountSettingTile = [
    SettingItem(title: 'Language', iconSvg: AssetLocations.language, iconTrail: Icons.arrow_drop_down_sharp,),
    SettingItem(title: 'DarkMode', iconSvg: AssetLocations.darkmode, iconTrail: Icons.arrow_drop_down_sharp,),
  ];
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("USA"),value: "USA"),
      DropdownMenuItem(child: Text("Canada"),value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"),value: "Brazil"),
      DropdownMenuItem(child: Text("England"),value: "England"),
    ];
    return menuItems;
  }
  var top = 0.0;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: size.height*0.5,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: AnimatedOpacity(
                duration: const Duration(milliseconds: 250),
                opacity: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 70.0,right: 40.0, left: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 70,),
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(50),
                              child: Image.asset(AssetLocations.profile, fit: BoxFit.cover, width: size.width*0.3,height: size.height*0.18,),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const Text('Noran Alaa',textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 24),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((ctx,i){
                return Container(
                  height: (size.height-300)/4.8,
                  // height: size.height-280,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: ListTile(
                      leading: SvgPicture.asset(accountSettingTile[i].iconSvg,width: 40,height: 40,),
                      title: Text(accountSettingTile[i].title,style: const TextStyle(fontSize: 18),),
                      trailing: DropdownButton(icon:Icon(accountSettingTile[i].iconTrail), items: dropdownItems, onChanged: (Object? value) {  },),
                      onTap: (){}
                        // print('Tappped');
                      //   Navigator.pushNamed(context, accountSettingTile[i].route!);
                      //   // Navigator.pushNamed(context, settingTile[i].route);
                      // },
                      // trailing: IconButton(alignment: Alignment.center,icon: settingTile[i]?.iconTrail, onPressed: () { N },),
                      // tileColor: Colors.blueAccent,
                    ),
                  ),
                );
              },
                  childCount: accountSettingTile.length
              )
          ),
          // SliverToBoxAdapter(
          //   child: ListView.builder(
          //     primary: false,
          //     shrinkWrap: true,
          //     itemCount: accountSettingTile.length,
          //     itemBuilder: (ctx, i)=> ListTile(
          //         leading: SvgPicture.asset(accountSettingTile[i].iconSvg, color: Colors.black,),
          //         title: Text(accountSettingTile[i].title,style: const TextStyle(fontSize: 18),),
          //         // subtitle: Text(accountTile[i].subTitle),
          //         trailing: Icon(accountSettingTile[i].iconTrail),
          //         // trailing: IconButton(alignment: Alignment.center,icon: settingTile[i].iconTrail, onPressed: () {},),
          //         tileColor: Colors.grey,
          //         onTap: (){}
          //     ),),
          // ),
        ],
      ),
    );
  }
}