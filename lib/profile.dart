import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget{
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(//creates a bar on top
        leading: IconButton(onPressed:(){print('goes to profile');} ,icon:const Icon(Icons.arrow_left_sharp,size:40,color:Color.fromARGB(254, 128, 126, 126),)),
        title:const Text('',style:TextStyle(
          fontSize:28,)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
  

      //Note: The Word "Add" in the trailing function to be changed if the user enters a value for them...

      body:Column(
        children:  [
        //creating the image entry boxes...
        //Include an if condition if we already have data about the user
        const SizedBox(
        width: double.infinity,
        height: 20,
        ),
        
        Container(
                  height: 340,
                  width: 340,

                  //to display account image and name here

                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 236, 251),
                  ),),
        const SizedBox(height: 50,),
        //RETRY AND ENABLE buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          const SizedBox(width:10,),
          SizedBox( 
            height:100, //height of button
            width:100, //width of button
            child:ElevatedButton(
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  const SizedBox(height:14,),
                  const IconButton(onPressed:null ,icon:const Icon(Icons.edit_outlined ,size:26,color:Color.fromARGB(255, 107, 106, 107),),),
                  const Text('Edit',style:TextStyle(color: Color.fromARGB(255, 107, 106, 107),fontSize:12)),
                  const SizedBox(height:14,)
              ],),
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(40),
                      shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),),
                      onPressed: (){print('Edit');}
                  //parameters of Button class
            ),),
          SizedBox( 
            height:100, //height of button
            width:100, //width of button
            child:ElevatedButton(
              child: Column(children: [
                  const SizedBox(height:14,),
                  IconButton(onPressed:null ,icon:const Icon(Icons.settings ,size:26,color:Color.fromARGB(255, 107, 106, 107),),),
                  const Text('Settings',style:TextStyle(color: Color.fromARGB(255, 107, 106, 107),fontSize:12)),
                  const SizedBox(height:14,),
              ],),
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(40),
                      shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),),
                      onPressed: (){print("Settings");}
                  //parameters of Button class
            ),),
          SizedBox( 
            height:100, //height of button
            width:100, //width of button
            child:ElevatedButton(
              child: Column(children: [
                  const SizedBox(height:14,),
                  const IconButton(onPressed:null ,icon:const Icon(Icons.qr_code,size:26,color:Color.fromARGB(255, 107, 106, 107),),),
                  const Text('QR Code',style:TextStyle(color: Color.fromARGB(255, 107, 106, 107),fontSize:12)),
                  const SizedBox(height:14,),
              ],),
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(40),
                      shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),),
                      onPressed: (){print("QR Code");}
                  //parameters of Button class
            ),),
          SizedBox(width:10,),
        ],),
        ]
      ),
    );
  }
}


