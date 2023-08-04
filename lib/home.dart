import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(//creates a bar on top
        leading: IconButton(onPressed:(){print('goes back');} ,icon:Icon(Icons.arrow_left,size:40,color:Color.fromARGB(254, 128, 126, 126),)),
        title:Text('',),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
  

      //Note: The Word "Add" in the trailing function to be changed if the user enters a value for them...

      body:ListView(
        children: [
        //creating the image entry boxes...
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[  //All buttons designed to work on the plus icon here...can change this
              Container(
                height: 220,
                width: 220,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color.fromARGB(255, 255, 236, 251),
                ),
                alignment: Alignment.center,
                child: IconButton(onPressed:(){print("Image to be added");} ,icon:Icon(Icons.add_circle_outline_outlined,size:26,color:Color.fromARGB(255,250,94,151),),),
              ),
              const SizedBox(height: 5),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //const SizedBox(height:10),
                  Container(
                    height: 105,
                    width: 105,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromARGB(255, 255, 236, 251),
                    ),
                    alignment: Alignment.center,
                    child: IconButton(onPressed:(){print("Image to be added");} ,icon:Icon(Icons.add_circle_outline_outlined,size:26,color:Color.fromARGB(255,250,94,151),),),
                  ),
                  const SizedBox(width:10),
                  Container(
                    height: 105,
                    width: 105,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromARGB(255, 255, 236, 251),
                    ),
                    alignment: Alignment.center,
                    child: IconButton(onPressed:(){print("Image to be added");} ,icon:Icon(Icons.add_circle_outline_outlined,size:26,color:Color.fromARGB(255,250,94,151),),),
                  ),
                  ],)
              ]),
        
          Column(
          children:
          [
                const SizedBox(height: 5,width:10),
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 236, 251),
                  ),
                  alignment: Alignment.center,
                  child: IconButton(onPressed:(){print("Image to be added");} ,icon:Icon(Icons.add_circle_outline_outlined,size:26,color:Color.fromARGB(255,250,94,151),),),
                ),
                const SizedBox(height: 5,width:10),
                Container(
                  height: 175,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 236, 251),
                  ),
                  alignment: Alignment.center,
                  child: IconButton(onPressed:(){print("Image to be added");} ,icon:Icon(Icons.add_circle_outline_outlined,size:26,color:Color.fromARGB(255,250,94,151),),),
                  ),
                ])
        ],
      ),
        const ListTile(title:Text("\nAbout", style:TextStyle(
          color: Color.fromARGB(254, 128, 126, 126),
          fontSize:17,))),

        //Include a textbox witha counter of the number of characters
        //Include '"Tell them about you."'
        //Spacer(),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
          [
              const SizedBox(height: 10,width:10),
              Container(
              width:390,
              height:180.0,
              child:const TextField(
                    maxLines: 7,
                    maxLength:200,
                    cursorColor: Color.fromARGB(255,250,94,151),
                    style: TextStyle(color: Color.fromARGB(254, 128, 126, 126)),
                    decoration:InputDecoration(
                    hintStyle: TextStyle(color: Color.fromARGB(254, 128, 126, 126)),
                    hintText: '"Tell them about you."',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 236, 251),  
                    //labelText:'"Tell them about you."',
                      border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      ),
                    ),
              )),
              const SizedBox(height: 200,width:10),
          ]),

        const ListTile(title:Text("Basics", style:TextStyle(
          color: Color.fromARGB(254, 128, 126, 126),
          fontSize:17,))),
        

        //Include an if condition if we already have data about the user
        ListTile(
        title:Text("Education"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Education.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        ListTile(
        title:Text("Gender"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Gender.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        ListTile(
        title:Text("Orientation"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Orientation.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        ListTile(
        title:Text("Work"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Work.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        ListTile(title:Text("Additional Information", style:TextStyle(
          color: Color.fromARGB(254, 128, 126, 126),
          fontSize:17,))),
        ListTile(
        title:Text("Children"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Children.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        ListTile(
        title:Text("Conversation"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Conversation.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ), ),
        ListTile(
        title:Text("Drink"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Drink.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        ListTile(
        title:Text("Height"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Height.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){/*setstate()*/} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ), ),
        ListTile(
        title:Text("Looking For"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Lookingfor.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        ListTile(
        title:Text("Political Reference"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Education.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ), ),
        ListTile(
        title:Text("Pronouns"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Politicalref.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ), ),
        ListTile(
        title:Text("Religion"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Religion.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ), ),
        ListTile(
        title:Text("Smoke"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Smoke.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ), ),
        ListTile(
        title:Text("Work Out"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Workout.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        
        ListTile(
        title:Text("Zodiac"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Zodiac.png')),
         trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        ListTile(
        title:Text("Living In"),
        leading:IconButton(onPressed:(){} ,icon:Image.asset('assets/images/Living.png')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          //spacing: 5, // space between two icons
          children: <Widget>[
              Text("Add", style:TextStyle(
              color: Color.fromARGB(252, 207, 206, 206),
              fontSize:15,),textAlign: TextAlign.center,), 
              IconButton(onPressed:(){} ,icon:Icon(Icons.arrow_right,size:34)), 
        ],   
        ),),
        
        //Languages and Interests
        //Note: Languages and Interests data to be obtained, implement an if condition once more data is obtained
        ListTile(title:Text("Languages", style:TextStyle(
          color: Color.fromARGB(254, 128, 126, 126),
          fontSize:17,)),
          trailing: IconButton(onPressed:(){} ,icon:Icon(Icons.add_box_rounded)),
       ),
        const SizedBox(height: 5),
        ListTile(title:Text("Interests", style:TextStyle(
          color: Color.fromARGB(254, 128, 126, 126),
          fontSize:17,)),
          trailing: IconButton(onPressed:(){} ,icon:Icon(Icons.add_box_rounded)),),
        const SizedBox(height: 5),
        ]
      ),
    );
  }
}


