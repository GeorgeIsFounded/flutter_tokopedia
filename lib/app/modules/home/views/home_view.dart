import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  height: tinggi * 0.12,
                  width: lebar,
                  decoration: BoxDecoration(color: bgLogin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Cari rtx 4090",
                              prefixIcon: Icon(Icons.search_outlined),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      Container(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.mail_outline_outlined,
                                color: Colors.white,
                                size: 27,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.notifications_none_outlined,
                                color: Colors.white,
                                size: 27,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                                size: 27,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 27,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 130,
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: 400.0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3)),
                  items: [
                    "../../../../../assets/belanja.png",
                    "../../../../../assets/kebut.png",
                    "../../../../../assets/prochiz.png"
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: lebar,
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              child: Image.asset(i),
                            ));
                      },
                    );
                  }).toList(),
                )),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 16,
                runSpacing: 10,
                children: [
                  CustomMenu(
                      icon: '../../../../../assets/menu/promo.png',
                      text: "Promo Hari Ini"),
                  CustomMenu(
                      icon: '../../../../../assets/menu/toserba.png',
                      text: "Toserba"),
                  CustomMenu(
                      icon: '../../../../../assets/menu/elektronik.png',
                      text: "Elektronik"),
                  CustomMenu(
                      icon: '../../../../../assets/menu/tagihan.png',
                      text: "Top-up & Tagihan"),
                  CustomMenu(
                      icon: '../../../../../assets/menu/lihat.png',
                      text: "Lihat Semua"),
                  CustomMenu(
                      icon: '../../../../../assets/menu/official.png',
                      text: "Official Store"),
                  CustomMenu(
                      icon: '../../../../../assets/menu/live.png',
                      text: "Live Shopping"),
                  CustomMenu(
                      icon: '../../../../../assets/menu/seru.png',
                      text: "Tokopedia Seru"),
                  CustomMenu(
                      icon: '../../../../../assets/menu/cod.png',
                      text: "Bayar di Tempat"),
                  CustomMenu(
                      icon: '../../../../../assets/menu/balong.png',
                      text: "Bangga Lokal")
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Row(
                      children: [
                        Text(
                          "Kejar Diskon Spesial",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                "Berakhir dalam",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 25,
                              width: lebar * 0.22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.red.shade700),
                              child: Container(
                                padding: EdgeInsets.only(left: 5, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "00 : 15 : 12",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          "Lihat Semua",
                          style: TextStyle(
                              color: lihatSemua, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 50),
              height: tinggi * 0.39,
              width: lebar,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [bgSponsor1, bgSponsor2])),
              child: Row(
                children: [
                  Container(
                    child: Image.asset("../../../../../assets/poster.png"),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                          height: 300,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Container(
                                height: tinggi * 0.2,
                                width: lebar,
                                decoration: BoxDecoration(),
                                child: Image.asset(
                                  "../../../../../assets/masker.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Rp 1.000",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            padding: EdgeInsets.only(
                                                left: 8,
                                                right: 8,
                                                top: 3,
                                                bottom: 3),
                                            child: Text(
                                              "92%",
                                              style: TextStyle(
                                                  color: Colors.red.shade700,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            decoration:
                                                BoxDecoration(color: diskon),
                                          ),
                                          Container(
                                            child: Text(
                                              "Rp 12.546",
                                              style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 7),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 20,
                                            child: Image.asset(
                                                "../../../../../assets/menu/official.png"),
                                          ),
                                          Container(
                                            child: Text(
                                              "Kab. Tangerang",
                                              style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(bottom: 10, top: 10),
                                      child: StepProgressIndicator(
                                        totalSteps: 100,
                                        currentStep: 80,
                                        size: 5,
                                        padding: 0,
                                        selectedColor: Colors.red.shade600,
                                        unselectedColor: Color(0xffeeeeee),
                                        roundedEdges: Radius.circular(2),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            "Segera Habis",
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: 13),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

Widget CustomMenu({icon, text, widht}) {
  return InkWell(
    onTap: () {},
    child: Container(
      height: 100,
      width: 79,
      child: Column(
        children: [
          Container(
            width: widht,
            height: 50,
            child: Image.asset(icon),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          )
        ],
      ),
    ),
  );
}
