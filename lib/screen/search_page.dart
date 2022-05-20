import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:qtec_work_demo/constats.dart';
import 'package:qtec_work_demo/provider/product_provider.dart';
import 'package:qtec_work_demo/screen/details_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final provider = Provider.of<ProductProvider>(context, listen: false);
    provider.getProduct();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context);
    return Scaffold(
      backgroundColor: Constant.primaryColor,
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            buildSearchBar(context, provider),
            const SizedBox(
              height: 10,
            ),
            provider.isLoading==false?Expanded(
              child: Container(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2 / 3,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailsPage(
                                  slagName: provider
                                      .searchResultList[index].slug
                                      .toString(),
                                )));
                      },
                      child: Container(
                        child: Stack(
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 25),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Constant.secondaryColor),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(provider
                                                    .searchResultList[index]
                                                    .image
                                                    .toString()))),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(provider.searchResultList[index]
                                              .productName
                                              .toString()),
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    "ক্রয়ঃ " +
                                                        provider
                                                            .searchResultList[
                                                                index]
                                                            .charge!
                                                            .currentCharge
                                                            .toString(),
                                                    style: const TextStyle(
                                                        color: Colors.pink,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 15),
                                                  ),
                                                  Text(
                                                    "   বিক্রয়ঃ " +
                                                        provider
                                                            .searchResultList[
                                                                index]
                                                            .charge!
                                                            .sellingPrice
                                                            .toString(),
                                                    style: const TextStyle(
                                                        color: Colors.black54,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left:
                                  MediaQuery.of(context).size.width * .25 - 25,
                              bottom: 10,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xff6210e1)),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: provider.searchResultList.length,
                ),
              ),
            ):Expanded(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SpinKitThreeBounce(
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Loading Data.......")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildSearchBar(BuildContext context, ProductProvider provider) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black12),
          color: Constant.secondaryColor),
      child: TextFormField(
        onChanged: (String value) {
          provider.onChanged();
        },
        controller: provider.searchController,
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
