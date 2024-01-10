import 'package:flutter/material.dart';
import 'package:omnia/Resources/Theme/theme.dart';
import 'package:omnia/cardvalues.dart';

class Reso extends StatefulWidget {
  const Reso({super.key});

  @override
  State<Reso> createState() => _ResoState();
}

class _ResoState extends State<Reso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
              width: 380,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: itemColor,
                  // onChanged: (query) => filterItems(query),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: searchColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    labelText: 'Search Resources',
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: resoCardno,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          gradientColor2,
                          gradientColor1,
                        ]),
                        // border: Border.all(color: itemColor),
                        borderRadius: BorderRadius.circular(10),
                        color: cardColor,
                        image: const DecorationImage(
                          alignment: Alignment.bottomCenter,
                          image: AssetImage("assets/lgb.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // height: 160,
                      // width: 390,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    resoHeadings[index],
                                    style: const TextStyle(
                                      // overflow: TextOverflow.ellipsis,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}