import 'package:flutter/material.dart';
import 'package:flutter_assignment_tourism_ui/france.dart';
void main(){
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState()=>_HomePageState();
}

class _HomePageState extends State<HomePage> {

  var countryList=[
    {'image':'assets/images/france.jpg','name':'France'},
    {'image':'assets/images/germany.jpg','name':'Germany'},
    {'image':'assets/images/india.jpg','name':'India'},
    {'image':'assets/images/italy.jpg','name':'Italy'},
    {'image':'assets/images/usa.jpg','name':'USA'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(""),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10,top:20,bottom: 10),
            child: Text("Popular",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: 5,itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children:[ GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FranceView()));
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(countryList[index]['image']!),fit: BoxFit.cover)
                    ),
                  ),
                ),
                  Positioned(
                      bottom: 30,
                      left: 20,
                      child: Text(countryList[index]['name']!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),))
                ]
              ),
            );
          })
          ]
      ),
    );
  }
}
