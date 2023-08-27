
import 'package:flutter/material.dart';

class QRScreen extends StatefulWidget{
  @override
  State<QRScreen> createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(//creates a bar on top
        leading: IconButton(onPressed:(){  Navigator.pop(context);
        } ,icon:const Icon(Icons.arrow_left_sharp,size:40,color:Color.fromARGB(254, 128, 126, 126),)),
        title:const Text('',style:TextStyle(
          fontSize:28,)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 236, 251),
      ),
  

      //Note: The Word "Add" in the trailing function to be changed if the user enters a value for them...

      body:Column(
        children:  [
        
        
        const SizedBox(
        width: double.infinity,
        height: 20,
        ),
        
        Container(
                  height: 360,
                  width: 360,
                  
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 236, 251),
                  ),
                  child:
                  //const Column(children: [
                       //Icon(Image.asset('assets/images/qr.png'),)//size:280,color:Color.fromARGB(253, 83, 83, 83),
                       Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(height: 7,),
                          const Text("Name, 18",style: TextStyle(color: Color.fromARGB(255,250,94,151),fontSize: 28,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 5,),
                          SizedBox(
                              height: 280,
                              width: 280,
                              // Uploading the Image from Assets
                              child: Image.asset('assets/images/qr.png',)
                         ),
                         const SizedBox(height: 10,)

                       ],)
                       
                  ),
        const SizedBox(height: 30,),
        
        //Share Profile and Copy Link
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          const SizedBox(width:10,),
          SizedBox( 
            height:100, //height of button
            width:340, //width of button
            child:Container(
              decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 236, 251),
                  ),
              child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  const SizedBox(width:40,),
                  Column (
                  children: [
                  const SizedBox(height:10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        width: 1.0,
                      ),
                      shape: CircleBorder(), //<-- SEE HERE
                      padding: EdgeInsets.all(12),
                      backgroundColor: Color.fromARGB(255, 255, 236, 251),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Icon( //<-- SEE HERE
                      Icons.share_sharp,
                      color: Color.fromARGB(253, 83, 83, 83),
                      size: 30,
                    ),
                  ),
                  const Text('Share Profile',style:TextStyle(color: Color.fromARGB(254, 128, 126, 126),fontSize:17)),
                  ]),
                  const SizedBox(width:80),
                  Column (
                  children: [
                  const SizedBox(height:10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side:const  BorderSide(
                        width: 1.0,
                      ),
                      shape: CircleBorder(), //<-- SEE HERE
                      padding: EdgeInsets.all(12),
                      backgroundColor: Color.fromARGB(255, 255, 236, 251),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Icon( //<-- SEE HERE
                      Icons.copy_outlined,
                      color: Color.fromARGB(253, 83, 83, 83),
                      size: 30,
                    ),
                  ),
                  const Text('Copy Link',style:TextStyle(color: Color.fromARGB(254, 128, 126, 126),fontSize:17)),
                  ]),
                  
              ],),
            
                  //parameters of Button class
            ),),
         
          const SizedBox(width:10,),
        ],),
        ]
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

class QRScreen extends StatefulWidget{
  @override
  State<QRScreen> createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(//creates a bar on top
        leading: IconButton(onPressed:(){print('goes to profile');} ,icon:const Icon(Icons.arrow_left_sharp,size:40,color:Color.fromARGB(254, 128, 126, 126),)),
        title:const Text('',style:TextStyle(
          fontSize:28,)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 236, 251),
      ),
  

      //Note: The Word "Add" in the trailing function to be changed if the user enters a value for them...

      body:Column(
        children:  [
        
        //Name and Age of User
        
        const SizedBox(
        width: double.infinity,
        height: 20,
        ),
        
        Container(
                  height: 340,
                  width: 340,
                  //To display account image and name here


                  //To display qr code here
                  

                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 236, 251),
                  ),),
        const SizedBox(height: 30,),
        
        //Share Profile and Copy Link
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          const SizedBox(width:10,),
          SizedBox( 
            height:100, //height of button
            width:340, //width of button
            child:Container(
              decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 236, 251),
                  ),
              child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  SizedBox(width:40,),
                  Column (
                  children: [
                  const SizedBox(height:10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 1.0,
                      ),
                      shape: CircleBorder(), //<-- SEE HERE
                      padding: EdgeInsets.all(12),
                      backgroundColor: Color.fromARGB(255, 255, 236, 251),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Icon( //<-- SEE HERE
                      Icons.share_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  const Text('Share Profile',style:TextStyle(color: Color.fromARGB(255, 107, 106, 107),fontSize:17)),
                  ]),
                  const SizedBox(width:80),
                  Column (
                  children: [
                  const SizedBox(height:10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 1.0,
                      ),
                      shape: CircleBorder(), //<-- SEE HERE
                      padding: EdgeInsets.all(12),
                      backgroundColor: Color.fromARGB(255, 255, 236, 251),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Icon( //<-- SEE HERE
                      Icons.copy_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  const Text('Copy Link',style:TextStyle(color: Color.fromARGB(255, 107, 106, 107),fontSize:17)),
                  ]),
                  
              ],),
            
                  //parameters of Button class
            ),),
         
          SizedBox(width:10,),
        ],),
        ]
      ),
    );
  }
}*/


