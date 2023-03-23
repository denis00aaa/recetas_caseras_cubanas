

import 'package:flutter/material.dart';

Widget card() {
  return Container(
    height: 100.0,
    margin: const EdgeInsets.symmetric(vertical: 5.0),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      border: Border.all(
        color: Colors.black,
        width: 1.0,
        style: BorderStyle.solid,
      )
    ),
    padding:const EdgeInsets.all(10.0),
    // child: const Text("Esta es una tarjeta"),
    child: Row(
      children: <Widget>[
        Container(
          width: 90.0,
          height: 90.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage("assets/images/food.png")
              )
          )
        ),
        Container(
          alignment: Alignment.topCenter,
          child: const Text("Aqui va El nombre de la Recetas"),
        )
      ],
    ),
  );
}
Widget myCard() {
  return  Card(
    // shape: Border.all(
    //     color: Colors.black12
    // ),
    borderOnForeground: false,
    surfaceTintColor: Colors.green,
    elevation: 5,
    semanticContainer: false,
    margin: const EdgeInsets.symmetric(vertical: 5.0),
    child: Padding(
      padding:const EdgeInsets.all(3.0),
      child: Row(
        children:  <Widget>[
          const Card(
            elevation: 5,
            margin: EdgeInsets.only(right: 20.0),
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.black12,
              ),
              eccentricity: 0.9,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/food.png"),
              radius: 50.0,
            ),
          ),

          Column(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment:CrossAxisAlignment.end,
            children: [
              Title(
                color: Colors.black,
                title: "Nombre de la Receta",
                child: const Text(
                  "Nombre de la Receta",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
              const Text("Este es una pequena descripcion"),
            ],
          ),
        ]
      ),
    )
  );
}