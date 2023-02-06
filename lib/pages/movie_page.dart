import 'package:flutter/material.dart';
import 'package:movie_app/widgets/custom_nav_bar.dart';
import 'package:movie_app/widgets/movie_page_button.dart';
import 'package:movie_app/widgets/recommend_widget.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              "images/image1.jpg",
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.favorite_border,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8
                              )
                            ]
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("images/image2.jpg",height: 250,width: 180,),
                            ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 50,top: 70),
                        height: 80,
                        width: 80,
                        decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),
                        color: Colors.red,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8 
                          )
                        ]
                        ),
                        child: const Icon(Icons.play_arrow,size: 60,color: Colors.white,),)
                    ],
                  ),
                ),
                  const SizedBox(height: 30,),
                  const MovieButtonPage(),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                        Text("Doctor Stranger 2",style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500
                      )),
                       SizedBox(height: 15,),
                        Text("This is the sample description of the movie, you can write here the description of the movie. you can write here the description of the movie.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              ),textAlign:TextAlign.justify,
                              ),
                    ],
                  ),
                  ),
                  const SizedBox(height: 10,),
                  const RecommendWidget(),
              ],
            )),
          )
        ],
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
