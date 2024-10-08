import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_prj/provider_page/home_provide_page.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final home_provider = Provider.of<Homeproviderpage>(context, listen: false);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // SizedBox(height: 250,)

          Consumer<Homeproviderpage>(
            builder: (context, provide,child) {
              return Center(child: Text("Name : ${provide.Name.toString()}",
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20),));
            }
          ),

          SizedBox(
            height: 20,
          ),

          Consumer<Homeproviderpage>(
            builder: (context,prvd,child) {
              return GestureDetector(
                onTap: () {
                  print("Clicked buttom");
                  home_provider.changing_value(context);
                },
                child: Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    color: prvd.boxclr,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                ),
              );
            }
          )

        ],
      ),
    );
  }
}
