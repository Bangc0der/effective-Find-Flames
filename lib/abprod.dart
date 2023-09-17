//AboutProduct
import 'package:flutter/material.dart';
import 'package:tutorial/service/apiservices.dart';


class ProdDetail extends StatelessWidget{
  final int id;
  ProdDetail(this.id);

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(//creates a bar on top
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        } ,icon:const Icon(Icons.arrow_left_sharp,size:40,color:Color.fromARGB(254, 128, 126, 126),)),
        title:const Text('Date Gifts',style:TextStyle(
          fontSize:28,color: Color.fromARGB(255,250,94,151))),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
  

      //Note: The Word "Add" in the trailing function to be changed if the user enters a value for them...

      body:ListView(
        children:  [
        //creating the image entry boxes...
        //Include an if condition if we already have data about the user
        const SizedBox(
        width: double.infinity,
        height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          const SizedBox(width:10),
          Container(
                  //height: (snapshot.data.length)*10,//shows up error obv
                  width: 380,

                  //to display account image and name here
                  

                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 236, 251),
                  ),
                  child:FutureBuilder(future: ApiService().getAllPosts(),
                      builder:(context,AsyncSnapshot snapshot){
                        if(snapshot.hasData){
                          return SizedBox(
                            height: MediaQuery.of(context).size.height*(0.73),
                            //width:double.infinity,
                            child:ListView.builder(
                              itemCount : snapshot.data.length,
                              itemBuilder: (context,index){
                                return ListTile(
                                  title:Text(snapshot.data[index]['title']),
                                  leading: Image.network(snapshot.data[index]['image'],height:50,width:35),
                                  subtitle: Text("\$"+snapshot.data[index]['price'].toString()),
                                );
                              }
                            )
                          );
                          //Text("Success",style: TextStyle(color: Colors.black),);
                        }
                        return const Center(
                          child:CircularProgressIndicator(),
                        );
                      } ),
                  ),

        const SizedBox(width:10),
        ],),
        
        //RETRY AND ENABLE buttons
        /*FutureBuilder(future: ApiService().getAllPosts(),
                      builder:(context,AsyncSnapshot snapshot){
                        if(snapshot.hasData){
                          return Container(
                            height: 400,
                            //width:double.infinity,
                            child:ListView.builder(
                              itemCount : 5,
                              itemBuilder: (context,index){
                                return ListTile(
                                  title:Text(snapshot.data[index]['title']),
                                );
                              }
                            )
                          );
                          //Text("Success",style: TextStyle(color: Colors.black),);
                        }
                        return const Center(
                          child:CircularProgressIndicator(),
                        );
                      } ),*/
        const SizedBox(height: 30,),
        
        ]
      ),
    );
  }
}