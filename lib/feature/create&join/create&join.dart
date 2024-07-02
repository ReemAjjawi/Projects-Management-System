import 'package:flutter/material.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';

class CreateOrJoin extends StatelessWidget {
  const CreateOrJoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Stack(
            children: [],
          ),
          ElevatedButton(onPressed: (){}, child: Text(CREATE)),
          Container(
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child: Row(
              children: [
                IconButton(onPressed: (){}
                , icon: Icon(Icons.abc)),
                Text(JOIN)
              ],
            ),
          )
        ],
      ) ,
    );
  }
}