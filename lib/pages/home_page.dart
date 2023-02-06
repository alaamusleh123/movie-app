import 'package:flutter/material.dart';
import 'package:movie_app/widgets/new_movies.dart';
import 'package:movie_app/widgets/upcoming_widget.dart';

import '../widgets/custom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hello  Alex",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "What to watch",
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "images/image1.jpg",
                        height: 60,
                        width: 60,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search,color: Colors.white54,size: 30,),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      width: 300,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white54),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(color:Colors.white54 )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              const UpComingWidget(),
              const SizedBox(height: 40,),
              const NewMovies()
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
