import 'package:flutter/material.dart';


class NewScreen extends StatefulWidget{
  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(//creates a bar on top
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        } ,
        icon:const Icon(Icons.arrow_left_sharp ,size:40,color:Color.fromARGB(254, 128, 126, 126),)),
        title:const Text('Learning APIs',style:TextStyle(
          color: Color.fromARGB(255,250,94,151),
          fontSize:28,)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
  

      //Note: The Word "Add" in the trailing function to be changed if the user enters a value for them...

      //body:
      /*FutureBuilder(future: Null,
        builder:(context,AsyncSnapshot snapshot){
          if(snapshot.hasData){
            return Text("Success"); 
          }
          return Center(
            child: CircularProgressIndicator()
          );
        }, )*/

      /*Column(
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

        const Text("Learning APIs",textAlign: TextAlign.center, style:TextStyle(
          color: Color.fromARGB(251, 128, 126, 126),
          fontSize:33,
          fontWeight: FontWeight.bold)),
        const Text("\nLearning to connect\nto the world",textAlign: TextAlign.center, style:TextStyle(
          color: Color.fromARGB(253, 74, 73, 73),
          fontSize:15, )),
        
        const SizedBox(height: 10,),
        //RETRY AND ENABLE buttons*/

      
      );
  }
}


