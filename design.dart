import 'package:coffee3_design/database.dart';
import 'package:flutter/material.dart';

class DesignExample extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        
        children: [
          Text("Cart",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 247, 242, 242)),
          ),
          SizedBox(height: 15),
          Expanded(child: ListView.builder(itemCount:3,
             itemBuilder:(context,index){
               return Padding(
                 padding: const EdgeInsets.all(13.0),
                 child: Container(decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 102, 101, 101),
                               ),
                               
                               child: Row(
                  
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Database.MyList[index]["image"]),
                        fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Text(Database.MyList[index]["name"],style: TextStyle(fontSize: 15,color: Colors.white),),

                          SizedBox(height: 30),
                          

                          Row(children: [
                            
                            Icon(Icons.currency_rupee,color: Colors.white),
                            Text(Database.MyList[index]["price"],style: TextStyle(fontSize: 10,color: Colors.white),),
                            
                          ],
                          ),
                        ],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 300),
                    child: Row(
                      children: [
                        Container(
                          height:50,
                          width:50,
                          child:  FloatingActionButton(onPressed: (){},child: Text("-"),
                        ),
                        
                        color: const Color.fromARGB(255, 131, 130, 130),
                        
                    
                        ),
                        Text("2",style: TextStyle(fontSize: 5,color: Colors.white),)
                      ],
                    ),
                  )
                                          
                  ],
                  
                               
      
                                                
                                              
                        ),
                    ),
                    
                                
               );
             }
             ),
             
              
          
        
  
      
      ),
        ],
      
    ),
    );
  }
}