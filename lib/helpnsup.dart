import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget{
  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(//creates a bar on top
        leading: IconButton(onPressed:(){print('goes back');} ,icon:const Icon(Icons.arrow_left,size:40,color:Color.fromARGB(254, 128, 126, 126),)),
        title:const Text('Help & Support',),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255,250,94,151),
      ),
  

      //Note: The Word "Add" in the trailing function to be changed if the user enters a value for them...

      body:ListView(
        children: [
        const SizedBox(height:15,),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          const SizedBox(width:10),
          Container(
                height: 320,
                width: 360,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color.fromARGB(255, 255, 236, 251),
                ),
                alignment: Alignment.center,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/sup.png',scale:0.1),
                  const Text("What can we do for you?",style: TextStyle(color: Color.fromARGB(252, 207, 206, 206),fontSize:18, ),)
                ]),
          ),
          SizedBox(width:10),
        ],),
        

        const SizedBox(height:10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          const SizedBox(width:10),
          SizedBox( 
            height:70, //height of button
            width:350, //width of button
            child:ElevatedButton(
              child: ListTile(
                      title:const Text("Contact Us",style: TextStyle(color: Color.fromARGB(255, 81, 80, 80),fontSize:18),),
                      leading:ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder (
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: const BorderSide(
                                        width: 1,
                                        color: Color.fromARGB(255, 255, 255, 255)
                                    ), ),
                            padding:const EdgeInsets.fromLTRB(0, 15, 0, 15),
                            backgroundColor:const  Color.fromARGB(255, 255, 236, 251),
                            elevation: 0,
                                  ),
                            onPressed: () {},
                            child: const Icon(
                              Icons.call_outlined,
                              color: Color.fromARGB(253, 83, 83, 83),
                              size: 25,
                            ),
                          ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[ 
                            const Icon(Icons.arrow_right,size:34), 
                      ],   
                      ),),
                style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 254, 254, 254),
                minimumSize: const Size.fromHeight(40),
                elevation: 1,
                shape: RoundedRectangleBorder( //to set border radius to button
                borderRadius: BorderRadius.circular(10)
            ),),
                      onPressed: (){print("Contact Us");}
                  //parameters of Button class
            ),),
          const SizedBox(width:10),
         ],),
        


        const SizedBox(height:15,),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          const SizedBox(width:10),
          SizedBox( 
            height:70, //height of button
            width:350, //width of button
            child:ElevatedButton(
              child: ListTile(
                      title:const Text("Report a Problem",style: TextStyle(color: Color.fromARGB(255, 81, 80, 80),fontSize:17),),
                      leading:ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder (
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(
                                        width: 1,
                                        color: const Color.fromARGB(255, 255, 255, 255)
                                    ), ),
                            padding:const EdgeInsets.fromLTRB(0, 15, 0, 15),
                            backgroundColor:const  Color.fromARGB(255, 255, 236, 251),
                            elevation: 0,
                                  ),
                            onPressed: () {},
                            child: const Icon(
                              Icons.error_outline ,
                              color: Color.fromARGB(253, 83, 83, 83),
                              size: 25,
                            ),
                          ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[ 
                            const Icon(Icons.arrow_right,size:34), 
                      ],   
                      ),),
                style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 254, 254, 254),
                minimumSize: const Size.fromHeight(40),
                elevation: 1,
                shape: RoundedRectangleBorder( //to set border radius to button
                borderRadius: BorderRadius.circular(10)
            ),),
                      onPressed: (){print("Report a Problem");}
                  //parameters of Button class
            ),),
          const SizedBox(width:10),
         ],),
        
        ]
      ),
    );
  }
}


