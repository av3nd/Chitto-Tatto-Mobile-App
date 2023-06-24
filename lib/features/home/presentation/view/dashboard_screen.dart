import 'package:chitto_tatto/config/constants/global_variables.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(left: 15),
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    elevation: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: InkWell(
                            onTap: () {},
                            child: const Padding(
                              padding: EdgeInsets.only(left: 6),
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 23,
                              ),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(top: 10),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                            borderSide:
                                BorderSide(color: Colors.black38, width: 1),
                          ),
                          hintText: 'Search Here',
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17)),
                    ),
                  )),
            ),
            Container(
              color: Colors.transparent,
              height: 42,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Icon(
                Icons.mic,
                color: Colors.black,
                size: 25,
              ),
            )
          ]),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 27,
            width: double.infinity,
            color: Colors.lightGreenAccent,
            child: Row(children: [
              const Icon(Icons.location_on_outlined, size: 20),
              const Text("Kanchanbari, Biratnagar-25"),
            ]),
          ),
          Container(
            height: 45,
            color: Colors.greenAccent,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: const Text(
                    'Burger',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: const Text(
                    'Momo',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: const Text(
                    'Biryani',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: const Text(
                    'Pizza',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 230,
            color: Colors.amber,
            child: Center(child: Text("Food Offers")),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              alignment: Alignment.topLeft, child: Text('Deal of the day')),
          Container(
            height: 230,
            color: Colors.red,
            child: Center(child: Text("Buy now")),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'Crunchy Fried Burger',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(alignment: Alignment.topLeft, child: Text('Rs \$\$\$')),
          SizedBox(
            height: 60,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            // height:,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.home_outlined,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.person_outline_outlined,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
