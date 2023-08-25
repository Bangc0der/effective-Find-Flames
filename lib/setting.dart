
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget{
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(//creates a bar on top
        leading: IconButton(onPressed:(){Navigator.pop(context);} ,icon:const Icon(Icons.arrow_left,size:40,color:Color.fromARGB(254, 128, 126, 126),)),
        title:const Text('',),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
  

      //Note: The Word "Add" in the trailing function to be changed if the user enters a value for them...

      body:ListView(
        children: [
        const SizedBox(height:15,),
        ListTile(
        //leading:const SizedBox(width:6),
        title:const Text("\t\t\t\tAccount Settings",style:TextStyle(color: Color.fromARGB(254, 128, 126, 126)),),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              IconButton(onPressed:(){} ,icon:const Icon(Icons.arrow_drop_down,size:34)), 
        ],   
        ),),
        ListTile(
        title:const Text("Help and Support"),
        leading:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), 
                      padding: EdgeInsets.all(9),
                      backgroundColor: Color.fromARGB(255, 255, 236, 251),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.help_outline,
                      color: Color.fromARGB(253, 83, 83, 83),
                      size: 25,
                    ),
                  ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[ 
              IconButton(onPressed:(){print('Help and support');} ,icon:const Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        ListTile(
        title:const Text("Security & Privacy"),
        leading:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(), 
                      padding: const EdgeInsets.all(9),
                      backgroundColor:const Color.fromARGB(255, 255, 236, 251),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.privacy_tip_outlined,
                      color: Color.fromARGB(253, 83, 83, 83),
                      size: 25,
                    ),
                  ),
          trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
              IconButton(onPressed:(){print('Security & Privacy');} ,icon:const Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        ListTile(
        title:const Text("FAQ"),
        leading:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(), 
                      padding:const EdgeInsets.all(9),
                      backgroundColor:const Color.fromARGB(255, 255, 236, 251),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.message_outlined,
                      color: Color.fromARGB(253, 83, 83, 83),
                      size: 25,
                    ),
                  ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              IconButton(onPressed:(){print('FAQ');} ,icon:const Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        const SizedBox(height:10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          const SizedBox(width:10),
          SizedBox( 
            height:40, //height of button
            width:280, //width of button
            child:ElevatedButton(
              child: const Text('Log Out',style:TextStyle(color: Color.fromARGB(255,250,94,151),fontSize:20)),
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 236, 251),
                      minimumSize: const Size.fromHeight(40),
                      elevation: 0,
                      shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),),
                      onPressed: (){print("Log Out");}
                  //parameters of Button class
            ),),
          const SizedBox(width:10),
         ],),
        
        const SizedBox(height:10,),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          const SizedBox(width:10),
          SizedBox( 
            height:40, //height of button
            width:280, //width of button
            child:ElevatedButton(
              child: const Text('Delete',style:TextStyle(color: Color.fromARGB(255, 81, 80, 80),fontSize:20)),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 255, 236, 251),
              minimumSize: const Size.fromHeight(50),
              elevation: 0,
              shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),),
              onPressed: (){print("Delete");}
       )),
          const SizedBox(width:10),
         ],),
        
        ]
      ),
    );
  }
}


