import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal & Vertical"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index)=>Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Card $index",style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.purple,
                  ),
                ),
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: 15,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index)=>ListTile(
                    title: Text("List $index"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
