import 'package:flutter/material.dart';
import 'package:qtec_work_demo/constats.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.primaryColor,
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black12),
                  color: Constant.secondaryColor),
              child: TextFormField(
                onChanged: (String value) {
                  //providerData.onChanged();
                },
                //controller: providerData.searchController,
                decoration: const InputDecoration(
                  hintText: "Search Product here",
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Constant.primaryColor,
      elevation: 1,
      title: Text(
        "Search Page",
        style: titleStyle,
      ),
    );
  }
}
