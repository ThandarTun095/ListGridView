import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}


class MyHomePage extends StatefulWidget{
    @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}


class MyHomePageState extends State<MyHomePage>{




  Widget build(BuildContext context){  

    print("Build Method");

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My App")),
        body: MyHome()
        )
    );
  }
}


class MyHome extends StatelessWidget{
  Widget build(BuildContext context){


/*  
--ListView show all lists immediately at time
--Long list show lists and build when scroll  --better performance
-- use Long list when a thousand of lists
*/

//ListView
    // return ListView(children: [
    //   ListTile(leading: Icon(Icons.computer) ,title: Text("Lenovo"),),
    //   ListTile(leading: Icon(Icons.remove_red_eye) ,title: Text("Dell"),),
    //   ListTile(leading: Icon(Icons.add) ,title: Text("Asus"),),

    //   ListTile(leading: Icon(Icons.computer) ,title: Text("Lenovo"),),
    //   ListTile(leading: Icon(Icons.remove_red_eye) ,title: Text("Dell"),),
    //   ListTile(leading: Icon(Icons.add) ,title: Text("Asus"),),

    //   ListTile(leading: Icon(Icons.computer) ,title: Text("Lenovo"),),
    //   ListTile(leading: Icon(Icons.remove_red_eye) ,title: Text("Dell"),),
    //   ListTile(leading: Icon(Icons.add) ,title: Text("Asus"),),

    //   ListTile(leading: Icon(Icons.computer) ,title: Text("Lenovo"),),
    //   ListTile(leading: Icon(Icons.remove_red_eye) ,title: Text("Dell"),),
    //   ListTile(leading: Icon(Icons.add) ,title: Text("Asus"),),

    //   ListTile(leading: Icon(Icons.computer) ,title: Text("Lenovo"),),
    //   ListTile(leading: Icon(Icons.remove_red_eye) ,title: Text("Dell"),),
    //   ListTile(leading: Icon(Icons.add) ,title: Text("Asus"),),
    // ],);


//Long list // ListView.builder()
          //if itemCount 3, run itemBuilder 3 time
        // List lists = ["Lenovo","Dell","Asus"];
        //  return ListView.builder(itemCount: 3 ,itemBuilder: (context,index){  //index- 0 1 2
        //    //return ListTile(title: Text("${index}"),);
        //    return ListTile(title: Text("${lists[index]}"),);
        //  });


//Grid View
   //CrossAxisCount
        // return GridView.count(
        //   crossAxisSpacing: 5,
        //   mainAxisSpacing: 5,
        //   crossAxisCount: 2, children: [
        //   Container(child: Text("Hello 1"), width: 100, height: 100, 
        //   decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.black),),
        //   ),

        //   Container(child: Text("Hello 1"), width: 100, height: 100, 
        //   decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.black),),
        //   ),

        //   Container(child: Text("Hello 1"), width: 100, height: 100, 
        //   decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.black),),
        //   ),

        //   Container(child: Text("Hello 1"), width: 100, height: 100, 
        //   decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.black),),
        //   ),
                 
        // ] );


//GridView.builder
     //if itemCount 4 ,run itemBuilder 4 time
      return GridView.builder(
            itemCount: 4, 
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder:(context, index){
              return Container(width: 100, height: 100, 
              decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.black),  ),
              child: Text("Hello ${index}"),

               );
            }
       ,);



  }

}


