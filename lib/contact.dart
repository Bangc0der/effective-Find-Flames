import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget{
  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  TextEditingController controller = TextEditingController();

  @override
 


  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(//creates a bar on top
        leading: IconButton(onPressed:(){print('goes back');} ,icon:const Icon(Icons.arrow_left,size:40,color:Color.fromARGB(253, 255, 255, 255),)),
        title:const Text('Contact Us',),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255,250,94,151),
      ),

      body:ListView(
        children: [
        const SizedBox(height:15,),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          const SizedBox(width:10),
          Container(
                height: 370,
                width: 360,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color.fromARGB(255, 255, 236, 251),
                ),
                alignment: Alignment.center,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/sup.png',scale:0.1),
                  const Text("How can we help you?",style: TextStyle(color: Color.fromARGB(252, 207, 206, 206),fontSize:20, ),),
                  const SizedBox(height: 35,)
                ]),
          ),
          const SizedBox(width:10),
        ],),
        
        //Enter textbox

        const SizedBox(height:10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width:20,),
            SizedBox(
              width:360,
              height:80.0,
              child:TextField(
                    maxLines: 1,
                    //maxLength:200,
                    cursorColor: Color.fromARGB(255,250,94,151),
                    style: TextStyle(color: Color.fromARGB(254, 128, 126, 126)),
                    decoration:InputDecoration(
                    hintStyle: TextStyle(color: Color.fromARGB(254, 128, 126, 126)),
                    hintText: 'Enter your email',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 236, 251),  
                      border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      ),
                    ),
              )),
              SizedBox(width:20,),
        ],),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          //const SizedBox(width: 10,),
          SizedBox( 
            height:40, //height of button
            width:350, //width of button
            child:ElevatedButton(
              child: const Text('Submit',style:TextStyle(fontSize:20)),
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255,250,94,151),
              minimumSize: const Size.fromHeight(50),
              shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(12)
                  ),),
              onPressed:null,
           )),
          //const SizedBox(width: 10,),
        ],)
        
        ]
      ),
    );
  }
}


