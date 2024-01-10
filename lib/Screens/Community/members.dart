import 'package:flutter/material.dart';
import 'package:omnia/Theme/theme.dart';
import 'package:omnia/cardvalues.dart';

class Members extends StatefulWidget {
  const Members({Key? key}) : super(key: key);

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  List<String> items =
      List.generate(membersCardNo, (index) => 'Item ${index + 1}');
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = items;
  }

  void filterItems(String query) {
    setState(() {
      filteredItems = items
          .where((item) =>
              item.toLowerCase().contains(query.toLowerCase()) ||
              usernames[items.indexOf(item)]
                  .toLowerCase()
                  .contains(query.toLowerCase()) ||
              initials[items.indexOf(item)]
                  .toLowerCase()
                  .contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Container(
            height: 60,
            width: 390,
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                cursorColor: itemColor,
                onChanged: (query) => filterItems(query),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: searchColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  labelText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                final itemIndex = items.indexOf(filteredItems[index]);

                return Container(
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 46,
                        width: 46,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.image,
                          color: imageColor,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            initials[itemIndex],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            usernames[itemIndex],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
