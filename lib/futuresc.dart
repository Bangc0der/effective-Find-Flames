import 'package:flutter/material.dart';
import 'package:tutorial/gift.dart';
import 'package:tutorial/profile.dart';


class FutureScreen extends StatefulWidget{
  @override
  State<FutureScreen> createState() => _FutureScreenState() ;
}

class _FutureScreenState extends State<FutureScreen> {

 
    

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(//creates a bar on top
        leading: IconButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen() ));
        } ,
        icon:const Icon(Icons.circle_rounded,size:40,color:Color.fromARGB(254, 128, 126, 126),)),
        title:const Text('Gifts',style:TextStyle(
          color: Color.fromARGB(255,250,94,151),
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
        height: 170,
        ),
        
        SizedBox( 
            height:40, //height of button
            width:150, //width of button
            child:ElevatedButton(
              child: const Text('Exit',style:TextStyle(color: Color.fromARGB(255,250,94,151),fontSize:20)),
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(40),
                      shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),),
                      onPressed:(){Navigator.pop(context);}
                  //parameters of Button class
            ),),
        const SizedBox(height:5,),
        SizedBox( 
            height:40, //height of button
            width:150, //width of button
            child:ElevatedButton.icon(
              icon: const Icon( // <-- Icon
                Icons.shopping_cart,
                size: 24.0,
              ),
              label: const Text('Buy Gifts',style:TextStyle(fontSize:20)),
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255,250,94,151),
              minimumSize: const Size.fromHeight(50),
              shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> giftScreen() ));}
       )),
       
        ]
      ),
    );
  }
}



/*
Futures:
Future<void> getData()async{

    //to prevent any sort of error...
    try{
      final userID = await Future.delayed(Duration(seconds: 2),(){
      print("hey hi");
      return 1;
    });
    
    }catch(e){
      print("Error");
    }

    
    await    Future.delayed(Duration(seconds: 3 ),(){
        print("Processing...");
    });
  
        print("Hey I shouldn't be first");
  }


Future<void> getData()async{
    Future.delayed(Duration(seconds: 2),(){
      print("I hope this prints second");
    }).then((value){
        Future.delayed(Duration(seconds: 3 ),(){
        print("Processing...");
    });
    }).catchError((error){
        print(error);
    });
    
    print("Random, should print first");
  }
  
  -Async await is similar to try and catch, used to avoid a number of blocks of try and catch

  */