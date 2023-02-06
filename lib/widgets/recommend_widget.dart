import 'package:flutter/material.dart';
class RecommendWidget extends StatelessWidget {
  const RecommendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Recommend",style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500
            ),),
              Text(
                "see all",
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                    ),
              ),
          ],
        ),
        ),
        SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(
            children: [
                 for (int i=1; i < 11; i++)
              Padding(padding: EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("images/image2.jpg",
                height: 100,
                width:150 ,
                fit: BoxFit.cover,
                ),
              )
              )
            ],
          ) ,
        )
      ],
    );
  }
}