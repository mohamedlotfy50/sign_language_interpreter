import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_language_interpreter/application/main_screen/main_screen_provider.dart';

class DrawerItemTile extends StatelessWidget {

  const DrawerItemTile({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MainScreenProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: provider.drawerTitle.length,
        itemBuilder: (ctx, i)=> ListTile(
          selected: i==provider.currentIndex,
          selectedTileColor: Colors.black12,
          leading: AnimatedContainer(
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50)
            ),
            duration: const Duration(
              milliseconds: 150,
            ),
            width: i==provider.currentIndex?17:0,
            height: i==provider.currentIndex?17:0,
          ),
          title: Text(provider.drawerTitle[i].title,
            style: TextStyle(
              color: Colors.white,
                fontSize: i==provider.currentIndex?18:16,
                fontWeight: i==provider.currentIndex? FontWeight.w600:FontWeight.w400),),
          onTap: (){
            Navigator.pop(context);
            provider.changeCurrentIndex(i);
          },

        ),
      ),
    );
  }
}


  //SelecItem(BuildContext context, index) {
   // switch(index){
    //  case 0:
      //  navigateTo(HomeScreen());
       // break;
  //  }
  //}


//
// class DrawerItemTile extends StatelessWidget {
//
//
//   // final String title;
//   // final String? colors;
//   // final IconData? iconData;
//   // final String root;
//   // final bool isSelected;
//
//   // final DrawerItem drawerTitle;
//   DrawerItemTile({Key? key,
//     // required this.title, this.iconData, required this.root, this.colors, required this.isSelected,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//
//   }
// }
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image.asset(
//             imagePath,
//             width: 250,
//           ),
//           Text(
//             title,
//             style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.w600,
//                 color: Color(0xFF4663AA)),
//           ),
//           Text(
//             text,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 17,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
