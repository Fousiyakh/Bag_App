import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            floating: true ,
            pinned:false ,
            title: Image(image: NetworkImage("data:image/png;base64,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"),
              width: 100,height: 100,),

            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 20,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Here",
                    prefixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),

          ),
          SliverList(delegate: SliverChildListDelegate([
            Card(
              child: Image(image: AssetImage("assets/image/view-bookbag-school-classroom.jpg")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),
              child: Center(
                child: Row(children: [
                  CircleAvatar(radius: 30,child: Icon(Icons.account_balance,size: 40,color: Colors.black,),),
                  SizedBox( height: 25, width: 50,
                      ),
                  CircleAvatar(radius: 30,child: Icon(Icons.card_giftcard,size: 40,color: Colors.black,),),
                  SizedBox( height: 25, width: 50,
                      ),
                  CircleAvatar(radius: 30,child: Icon(Icons.fire_truck_rounded,size: 40,color: Colors.black,),),
                  SizedBox( height: 25, width: 50,
                    ),
                  CircleAvatar(radius: 30,child: Icon(Icons.access_alarm,size: 40,color: Colors.black,),),
                  SizedBox( height: 25, width: 50,
                  ),
                ],),
              ),
            ),
            /*Column(children: [
              Row(
                children: [
                  AppBar(
                      bottom: TabBar(tabs:[
                        Text("Categories",style: TextStyle(color: Colors.white,fontSize: 22),),
                        Text("Branch",style: TextStyle(color: Colors.white,fontSize: 22),),
                        Text("Shops",style: TextStyle(color: Colors.white,fontSize: 22),)
                      ])
                  )
                ],
              )
            ],)*/
          ]
          ))
        ],
      ),

      ),
    );
  }
}

