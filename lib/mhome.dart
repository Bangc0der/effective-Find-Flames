import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(//creates a bar on top
        leading: IconButton(onPressed:(){print('goes to profile');} ,icon:const Icon(Icons.circle_rounded,size:40,color:Color.fromARGB(254, 128, 126, 126),)),
        title:const Text('Find Flames',style:TextStyle(
          color: Color.fromARGB(255,250,94,151),
          fontSize:28,)),
        actions: <Widget>[
        Transform.rotate(
          angle: 90 * math.pi / 180,
          child: IconButton(
            icon: const Icon(
              Icons.u_turn_left,
              color: Colors.black,
            ),
            onPressed:(){},
          ),
        ),
        //IconButton(onPressed: ,icon:Image.asset('assets/images/prevue.png',fit: BoxFit.cover)),
        IconButton(
          icon: const Icon(
          Icons.settings,color: Colors.black,size:26),
          onPressed: () {
                // goes to settings
          },)],
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
        height: 170,
        ),
        Container(
                //color: Colors.indigo, // To see the difference between the image's original size and the frame
                height: 250,
                width: 250,
                // Uploading the Image from Assets
                child: Image.asset('assets/images/location.png',fit: BoxFit.cover,)
        ),
        const Text("Enable Location",textAlign: TextAlign.center, style:TextStyle(
          color: Color.fromARGB(251, 128, 126, 126),
          fontSize:33,
          fontWeight: FontWeight.bold)),
        const Text("\nFindFlames uses your location to help connect\nyou with others in the vicinity",textAlign: TextAlign.center, style:TextStyle(
          color: Color.fromARGB(253, 74, 73, 73),
          fontSize:15, )),
        
        //RETRY AND ENABLE buttons

        SizedBox( 
            height:40, //height of button
            width:150, //width of button
            child:ElevatedButton(
              child: const Text('Retry',style:TextStyle(color: Color.fromARGB(255,250,94,151),fontSize:20)),
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(40),
                      shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),),
                      onPressed: (){print("Retry");}
                  //parameters of Button class
            ),),
        const SizedBox(height:5,),
        SizedBox( 
            height:40, //height of button
            width:150, //width of button
            child:ElevatedButton(
              child: const Text('Enable',style:TextStyle(fontSize:20)),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255,250,94,151),
              minimumSize: const Size.fromHeight(50),
              shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),),
              onPressed: (){print("Enable");}
       )),
       
        ]
      ),
    );
  }
}


