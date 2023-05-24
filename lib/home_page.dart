import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'Hello',
        ),
        actions: [
          IconButton(onPressed: () {
            print('click');
          },
              icon: Icon(
                Icons.notification_important ,
              ),
          ) ,
          IconButton(onPressed: () {
            print('search');
          },
            icon: Icon(
              Icons.search ,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20.0),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                      image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_960_720.jpg',

                  ) ,
                      width: 200.0,
                      height: 200.0,
                    fit: BoxFit.cover,

                  ),
                  Container(
                    color: Colors.black.withOpacity(0.5),
                    width: 200.0,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                    //  horizontal: 10.0,
                    ),
                    child: Text(
                        'Flower' ,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white ,

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ) ;
  }

}