import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import '../../../asset_locations.dart';
import '../../../domain/auth/model.dart';
import '../widgets/setting_item.dart';
import 'package:path/path.dart';

class AccountSettingScreen extends StatefulWidget {
  const AccountSettingScreen({Key? key, required this.userModel}) : super(key: key);
  final UserModel userModel;
  @override
  _AccountSettingScreenState createState() => _AccountSettingScreenState();
}

class _AccountSettingScreenState extends State<AccountSettingScreen> {
  FirebaseStorage storage = FirebaseStorage.instance;
  XFile? _imageFile;
  File? file;
  String image= '';
  String changedImage= '';

  final picker=ImagePicker();
  takePhoto(ImageSource source)async{
     final _picker=ImagePicker();
     _imageFile = await _picker.pickImage(source: source);
     file = File(_imageFile!.path);
       if(_imageFile != null){

         // widget.userModel.imagePath =taskSnapshot.ref.fullPath

           setState(() {
             changedImage =_imageFile!.path;
           });


        }


       else{
         print('No Path Received');
       }
    //TODO:add to firebase storage
     // TODO:then set the state
  }
  ImageProvider getUserImage(){
    if(changedImage.isNotEmpty){
      return FileImage(file!);
    }
    return NetworkImage(image.isEmpty?'https://www.testingxperts.com/wp-content/uploads/2019/02/placeholder-img.jpg':image);
  }
void Save()async{
  TaskSnapshot taskSnapshot = await FirebaseStorage.instance
      .ref()
      .child("Users")
      .child(FirebaseAuth.instance.currentUser!.uid + "_" + basename(file!.path))
      .putFile(file!);
  await FirebaseFirestore.instance.collection('Users').doc(widget.userModel.uid).update(widget.userModel.toMap());
}
  @override
  void initState(){
    if(widget.userModel.imagePath.isNotEmpty){
      FirebaseStorage.instance.ref(widget.userModel.imagePath).getDownloadURL().then((value) {setState(() {
        image=value;
      });
      });}
    }


  final List<AcountItem> accountTile = [
    AcountItem(id: '0', iconSvg: AssetLocations.editname, iconTrail: Icons.edit,isSelect: false,),
    AcountItem(id: '1',iconSvg: AssetLocations.phone, iconTrail: Icons.edit,isSelect: false),
  ];
  late String imageUrl;
    @override
    Widget build(BuildContext context) {
    Firebase.initializeApp();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: const Color(0xFF0ea6cc),
            child: Column(
                children: [
                  Container(
                    height: 350,
                    padding: const EdgeInsets.symmetric(vertical:60, horizontal:40,),
                    child: Center(
                      child: Stack(
                          children: [
                            SizedBox(
                              width: 200, height: 200,
                              // decoration: BoxDecoration(
                              //   shape: BoxShape.rectangle,
                              //   borderRadius: BorderRadius.circular(60),
                              //   image: DecorationImage(
                              //     fit: BoxFit.cover,
                              //     image: AssetImage(_imageFile==null? null :FileImage((File(_imageFile.path)))),
                              //
                              //     // image:  _imageFile==null? null :FileImage((File(_imageFile.path))),
                              //   )
                              // ),
                              child: CircleAvatar(
                                radius: 65,
                                backgroundColor:  Colors.blueAccent,
                                // ignore: unnecessary_null_comparison
                                // child: (_imageFile!=null)? FileImage((File(_imageFile.path)))
                                // Image.file(
                                //   _imageFile,
                                //   fit: BoxFit.fill,
                                // ):Image.network(
                                //   "https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                                //   fit: BoxFit.fill,
                                // ),
                                // ignore: unnecessary_null_comparison
                                // backgroundImage: imageUrl! !=null? Image.file(imageUrl):null,
                                  // NetworkImage(widget.userModel.imagePath==''?  'user':widget.userModel.imagePath),),
                                backgroundImage:getUserImage(),
                                // backgroundImage:changedImage.isNotEmpty? AssetImage(changedImage) :NetworkImage(image.isEmpty? 'https://www.testingxperts.com/wp-content/uploads/2019/02/placeholder-img.jpg':widget.userModel.imagePath ),
                              ),
                                // backgroundImage: (imageUrl !=null)? NetworkImage(imageUrl):Placeholder(fallbackHeight: 200.0,fallbackWidth: double.infinity,),
                                // FileImage((File(_imageFile!.path))),),.0
                              // backgroundImage: AssetImage(AssetLocations.profile) ,),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child:Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                                // child: Icon(Icons.edit,color: Colors.blueAccent,),
                                child: RawMaterialButton(
                                  // constraints: const BoxConstraints(minWidth: 32.0, minHeight: 32.0),
                                  fillColor: Colors.white,
                                  child: const Icon(Icons.add,size: 20,),
                                  // padding: EdgeInsets.all(5),
                                  shape: const CircleBorder(),
                                  onPressed: (){
                                    showModalBottomSheet(context: context,
                                        builder: ((builder)=> Container(
                                            height: 150,
                                            width: double.infinity,
                                            margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                            child: Column(
                                              children: [
                                                const Text('Choose Option',
                                                  style: TextStyle(
                                                    fontWeight:FontWeight.w600,
                                                    fontSize: 22,),
                                                ),
                                                const SizedBox(height: 50,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    InkWell(
                                                      onTap: (){
                                                        Navigator.of(context).pop();
                                                        takePhoto(ImageSource.camera);
                                                        // getProfileName();
                                                      },
                                                      child: Column(
                                                        children: const [
                                                          Icon(Icons.camera,),
                                                          SizedBox(height: 10,),
                                                          Text('Camera', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.black),)
                                                        ],
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: (){
                                                        Navigator.of(context).pop();
                                                        takePhoto(ImageSource.gallery);
                                                      },
                                                      child: Column(
                                                        children: const [
                                                          Icon(Icons.image),
                                                          SizedBox(height: 10,),
                                                          Text('Gallery', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.black),)
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                        )
                                        ));},
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    height: size.height-350,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                    ),
                    child: ListView(
                      padding: const EdgeInsets.only(top: 10),
                      children: [
                        ListTile(
                          enabled: false,
                          leading: SvgPicture.asset(accountTile[0].iconSvg,width: 40,height: 40,),
                          trailing: IconButton(icon: Icon(accountTile[0].iconTrail,), iconSize: 30,
                              onPressed: () async{
                                if(accountTile[0].isSelect){
                                  //TODO:add the firebase logic
                                  // await FirebaseFirestore.instance.collection('Users').doc(widget.userModel.uid).update(widget.userModel.toMap());
                                  print(widget.userModel.username);
                                }
                                setState(() {
                                  accountTile[0].isSelect= !accountTile[0].isSelect;
                                });
                              }),
                          title: TextFormField(
                            initialValue: widget.userModel.username,
                            // controller: _userController,
                            // controller: accountTile[i].controller!..text=accountTile[i].title,
                            decoration: const InputDecoration(border: InputBorder.none,),
                            // enabled: accountTile[i].isSelect? !_isDisabled: _isDisabled,
                            // readOnly: accountTile[i].isSelect? _isReadonly: !_isReadonly,
                            enabled: accountTile[0].isSelect,
                            readOnly: !accountTile[0].isSelect,
                            // initialValue:  widget.userModel.username,style: const TextStyle(fontSize: 18),
                            onChanged: (val){
                              widget.userModel.username=val;
                            },
                          ),
                          onTap: (){
                            // Navigator.pushNamed(context, accountTile[i].route!);
                          },
                        ),
                        ListTile(
                          enabled: false,
                          leading: SvgPicture.asset(accountTile[1].iconSvg,width: 40,height: 40,),
                          trailing: IconButton(icon: Icon(accountTile[1].iconTrail,), iconSize: 30,
                              onPressed: () async{
                                if(accountTile[1].isSelect){

                                  //TODO:add the firebase logic

                                  print(widget.userModel.phone);
                                }
                                setState(() {
                                  accountTile[1].isSelect= !accountTile[1].isSelect;
                                });
                              }),
                          title: TextFormField(
                            initialValue: widget.userModel.phone,
                            decoration: const InputDecoration(border: InputBorder.none,),
                            // enabled: accountTile[i].isSelect? !_isDisabled: _isDisabled,
                            // readOnly: accountTile[i].isSelect? _isReadonly: !_isReadonly,
                            enabled: accountTile[1].isSelect,
                            readOnly: !accountTile[1].isSelect,
                            // initialValue:  widget.userModel.phone,style: const TextStyle(fontSize: 18),
                            onChanged: (val){
                              widget.userModel.phone=val;
                            },
                          ),
                          onTap: (){
                            // Navigator.pushNamed(context, accountTile[i].route!);
                          },
                        ),
                        ElevatedButton(
                            onPressed: ()async {

                             if(changedImage.isNotEmpty){
                               TaskSnapshot taskSnapshot = await FirebaseStorage.instance
                                   .ref()
                                   .child("Users")
                                   .child(FirebaseAuth.instance.currentUser!.uid + "_" + basename(file!.path))
                                   .putFile(file!);
                               widget.userModel.imagePath=taskSnapshot.ref.fullPath;
                             }

                              await FirebaseFirestore.instance.collection('Users').doc(widget.userModel.uid).update(widget.userModel.toMap());                            },
                            child: Text("Update profile"))
                      ],
                    ),
                  )
                  // const SizedBox(height: 20,),
                  // Text( "Noran Alaa",textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 24),),

                ]
            )

        ),
      ),



      // body: CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       pinned: true,
      //       toolbarHeight: 250,
      //       elevation: 0,
      //       leading: Container(),
      //       expandedHeight: size.height*0.5,
      //       flexibleSpace: LayoutBuilder(builder: (ctx,cons){
      //         // top = cons.biggest.height;
      //         return FlexibleSpaceBar(
      //             centerTitle: true,
      //             title: AnimatedOpacity(
      //               duration: const Duration(milliseconds: 250),
      //               opacity: 1,
      //               child: Padding(
      //                 padding: const EdgeInsets.only(top: 70.0,right: 40.0, left: 40.0),
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   children: [
      //                     const SizedBox(height: 70,),
      //                     Stack(
      //                       children: [
      //                         // Container(
      //                         //   margin: EdgeInsets.symmetric(vertical: 30,horizontal: 30,),
      //                         //   child: CircleAvatar(
      //                         //     radius: 60,
      //                         //     // ignore: unnecessary_null_comparison
      //                         //     backgroundImage: pickedImage==null
      //                         //         ? null
      //                         //         :FileImage(pickedImage),
      //                         //   ),
      //                         // ),
      //                         // Positioned(
      //                         //   right:5,
      //                         //   bottom: 5,
      //                         //   child: RawMaterialButton(
      //                         //     elevation: 5,
      //                         //     fillColor: Colors.white,
      //                         //     child: Icon(Icons.add),
      //                         //     padding: EdgeInsets.all(5),
      //                         //     shape: CircleBorder(),
      //                         //     onPressed: () {
      //                         //       showDialog(context: context,
      //                         //           builder: (BuildContext context){
      //                         //         // return AlertDialog(
      //                         //         //   title: const Text('Choose Option',
      //                         //         //       style: TextStyle(
      //                         //         //         fontWeight:FontWeight.w600,),
      //                         //         //   ),
      //                         //         //   content: SingleChildScrollView(
      //                         //         //     child: ListBody(
      //                         //         //       children: [
      //                         //         //         InkWell(
      //                         //         //           // splashColor: Colors.purpleAccent,
      //                         //         //           child: Column(
      //                         //         //             children: const [
      //                         //         //               Icon(Icons.camera,color: Colors.purpleAccent,),
      //                         //         //               Text('Camera', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.black),)
      //                         //         //             ],
      //                         //         //           ),
      //                         //         //         ),
      //                         //         //         InkWell(
      //                         //         //           // splashColor: Colors.purpleAccent,
      //                         //         //           child: Column(
      //                         //         //             children: const [
      //                         //         //               Icon(Icons.image,color: Colors.purpleAccent,),
      //                         //         //               Text('Gallery', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.black),)
      //                         //         //             ],
      //                         //         //           ),
      //                         //         //         ),InkWell(
      //                         //         //           // splashColor: Colors.purpleAccent,
      //                         //         //           child: Column(
      //                         //         //             children: const [
      //                         //         //               Icon(Icons.remove_circle,color: Colors.redAccent,),
      //                         //         //               Text('Delete', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.black),)
      //                         //         //             ],
      //                         //         //           ),
      //                         //         //         ),
      //                         //         //
      //                         //         //       ],
      //                         //         //     ),
      //                         //         //   ),
      //                         //         //
      //                         //         // );
      //                         //         }
      //                         //       );},
      //                         //
      //                         //   ),),
      //                         // imageFile==null?
      //                         //     InkWell(
      //                         //       onTap: (){},
      //                         //       child: Icon(Icons.image),
      //                         //     )
      //                         // :FileImage(File(imageFile.path)),
      //                         CircleAvatar(
      //                           radius: 58,
      //                            // backgroundImage: AssetImage(AssetLocations.logout),),
      //                            backgroundImage: _imageFile==null? null :FileImage((File(_imageFile.path))),),
      //                           // backgroundImage:  imageFile==null?
      //                           // AssetImage(AssetLocations.profile) : FileImage(File(imageFile.path)),),
      //
      //                         Positioned(
      //                           right:-5,
      //                           bottom: 0,
      //                           child: RawMaterialButton(
      //                             constraints: const BoxConstraints(minWidth: 32.0, minHeight: 32.0),
      //                             fillColor: Colors.white,
      //                             child: const Icon(Icons.add,size: 20,),
      //                             // padding: EdgeInsets.all(5),
      //                             shape: const CircleBorder(),
      //                               onPressed: (){
      //                                 showModalBottomSheet(context: context,
      //                                     builder: ((builder)=> Container(
      //                                       height: 150,
      //                                       width: double.infinity,
      //                                       margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      //                                       child: Column(
      //                                         children: [
      //                                           const Text('Choose Option',
      //                                             style: TextStyle(
      //                                               fontWeight:FontWeight.w600,
      //                                             fontSize: 22,),
      //                                           ),
      //                                           const SizedBox(height: 50,),
      //                                           Row(
      //                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                                             children: [
      //                                               InkWell(
      //                                                 onTap: (){
      //                                                   takePhoto(ImageSource.camera);
      //                                                 },
      //                                                 // splashColor: Colors.purpleAccent,
      //                                                 child: Column(
      //                                                   children: const [
      //                                                     Icon(Icons.camera,),
      //                                                     SizedBox(height: 10,),
      //                                                     Text('Camera', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.black),)
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                               InkWell(
      //                                                 onTap: (){
      //                                                   takePhoto(ImageSource.gallery);
      //                                                 },
      //                                                 // splashColor: Colors.purpleAccent,
      //                                                 child: Column(
      //                                                   children: const [
      //                                                     Icon(Icons.image),
      //                                                     SizedBox(height: 10,),
      //                                                     Text('Gallery', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.black),)
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                               InkWell(
      //                                                 // onTap: (){
      //                                                 //   takePhoto(ImageSource.);
      //                                                 // },
      //                                             // splashColor: Colors.purpleAccent,
      //                                                 child: Column(
      //                                                   children: const [
      //                                                     Icon(Icons.remove_circle,color: Colors.redAccent,),
      //                                                     SizedBox(height: 10,),
      //                                                     Text('Delete', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.black),)
      //                                                   ],
      //                                               ),
      //                                             ),
      //                                           ],
      //                                       )
      //                                     ],
      //                                   ),
      //                                 )
      //                                 //         Container(
      //                                 //       height: 100,
      //                                 //       width: double.infinity,
      //                                 //       margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      //                                 //       child: Column(
      //                                 //         children: [
      //                                 //           // Text('Choose Profile Photo', style: TextStyle(fontSize: 22),),
      //                                 //           // SizedBox(height: 20,),
      //                                 //           // Column(
      //                                 //           //   mainAxisAlignment: MainAxisAlignment.center,
      //                                 //           //   children: [
      //                                 //           //     TextButton.icon(onPressed: (){
      //                                 //           //       // takePhoto(ImageSource.camera);
      //                                 //           //     }, icon: Icon(Icons.camera), label: Text('Camera'),),
      //                                 //           //     TextButton.icon(onPressed: (){
      //                                 //           //       // takePhoto(ImageSource.gallery);
      //                                 //           //     }, icon: Icon(Icons.image),label: Text('Gallery'),),
      //                                 //           //   ],
      //                                 //           // ),
      //                                 //
      //                                 //         ],
      //                                 //   ),
      //                                 // ))
      //                                 ));},
      //                               // borderRadius: BorderRadius.circular(50),
      //                               // child: Icon(Icons.camera_alt, size: 25,color: Colors.blueAccent,),
      //                             ),
      //                           ),
      //                           // child: Stack(
      //                           //     children: [
      //                           //       Align(
      //                           //         alignment: Alignment.bottomRight,
      //                           //         child: CircleAvatar(
      //                           //           radius: 18,
      //                           //           backgroundColor: Colors.white,
      //                           //           // child: Icon(Icons.camera_alt_outlined),
      //                           //           child: IconButton(icon:Icon(Icons.camera_alt_outlined),
      //                           //             onPressed:()async{
      //                           //               XFile? xfile = await ImagePicker().pickImage(source: ImageSource.gallery);
      //                           //               print("file " + xfile!.path);
      //                           //               file = File(xfile.path);
      //                           //               setState(() {});
      //                           //           },
      //                           //         ),
      //                           //       ),
      //                           //       ),],
      //                           // ),
      //
      //                       ],
      //                     ),
      //
      //                     // ClipRRect(
      //                     //   borderRadius: BorderRadius.circular(20), // Image border
      //                     //   child: SizedBox.fromSize(
      //                     //     size: const Size.fromRadius(50),
      //                     //     child: Image.asset(AssetLocations.profile, fit: BoxFit.cover, width: size.width*0.3,height: size.height*0.18,),
      //                     //   ),
      //                     // ),
      //                     const SizedBox(height: 15,),
      //                     Text( "Noran Alaa",textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 24),),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //         );
      //       },),
      //     ),
      //     SliverList(
      //         delegate: SliverChildBuilderDelegate((ctx,i){
      //           return Container(
      //             height: (size.height-300)/4.8,
      //             alignment: Alignment.center,
      //             child: Padding(
      //               padding: const EdgeInsets.all(0.0),
      //               child: ListTile(
      //                 enabled: false,
      //                 leading: SvgPicture.asset(accountTile[i].iconSvg,width: 40,height: 40,),
      //                 trailing: IconButton(icon: Icon(accountTile[i].iconTrail,), iconSize: 30,
      //                   onPressed: () {
      //                     setState(() {
      //                       _isDisabled = !_isDisabled;
      //                       _isReadonly = !_isReadonly;
      //                     });
      //                     }),
      //                 title: TextFormField(
      //                   decoration: InputDecoration(
      //                     border: _isDisabled?InputBorder.none:null,
      //                   ),
      //                   enabled: !_isDisabled,
      //                   readOnly: _isReadonly,
      //                     initialValue:  accountTile[i].title,style: const TextStyle(fontSize: 18),),
      //                 onTap: (){
      //                   // Navigator.pushNamed(context, accountTile[i].route!);
      //                 },
      //               ),
      //             ),
      //           );
      //         },
      //             childCount: accountTile.length
      //         ),
      //     ),
      //   ],
      // ),
    );
  }



}
