import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qtec_work_demo/constats.dart';
import 'package:qtec_work_demo/model/ProductDetails.dart';
import 'package:qtec_work_demo/provider/product_details_provider.dart';

class DetailsPage extends StatefulWidget {
  String slagName;
  DetailsPage({Key? key, required this.slagName}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  getData() {
    final provider =
        Provider.of<ProductDetailsProvider>(context, listen: false);
    provider.getProductDetails(widget.slagName);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductDetailsProvider>(context);
    return Scaffold(
      backgroundColor: Constant.primaryColor,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildCarasolSlider(context, provider),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Column(
                children: [
                  Text("প্রোডাক্ট নেইমঃ "+provider.productDetails!.data!.productName.toString(),style: titleStyle,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "প্রোডাক্ট ডিটেইল",
        style: titleStyle,
      ),
      centerTitle: true,
      backgroundColor: Constant.primaryColor,
      elevation: 1,
      leading: GestureDetector(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: const Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: Colors.black,
        ),
      ),
    );
  }

  Container buildCarasolSlider(
      BuildContext context, ProductDetailsProvider provider) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
          itemCount: 1,
          options: CarouselOptions(
              viewportFraction: .5,
              enlargeCenterPage: true,
              reverse: false,
              autoPlay: false,
              height: MediaQuery.of(context).size.height),
          //carouselController: _carouselSlider,
          itemBuilder: (context, int index, int pageViewIndex) {
            return Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Image.network(
                    provider.productDetails!.data!.image.toString(),
                    fit: BoxFit.cover,
                  )),
            );
          }),
    );
  }
}
