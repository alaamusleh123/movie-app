import 'package:flutter/material.dart';

class UpComingWidget extends StatelessWidget {
  const UpComingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding:const  EdgeInsets.symmetric(horizontal: 10),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Upcoming movie",
                style: TextStyle(color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w500
                ),
                ),
                 Text(
                " see all",
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                  ),
              ),
              ],
         ),
        ),
        const SizedBox(height: 15,),
    
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
            children: [
              for(int i=1;i<4;i++)
                Padding(padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child:Image.asset("images/image2.jpg",
                  width: 300,height: 180,
                  fit: BoxFit.cover,
                  ) ,
                ),
                )
            ],
           ),
        )

      ],
    );
  }
}