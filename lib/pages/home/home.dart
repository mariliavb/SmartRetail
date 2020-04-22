import 'package:flutter/material.dart';
import 'package:smart_retail/data/Api/ProductApi.dart';
import 'package:smart_retail/data/Models/ProductListModel.dart';
import 'dart:convert' as convert;

import 'package:smart_retail/utils/custom/customDialogFilter.dart';
import 'package:smart_retail/utils/colors/colors.dart' as CustomColor;

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  initState() {
    super.initState();
    _productList();
  }

  dispose() {
    super.dispose();
  }

  var productList = new List<ProductListModel>();

  _productList() {
    ProductApi.getProductList().then((response) {
      setState(() {
        Iterable list = convert.json.decode(response);
        productList =
            list.map((model) => ProductListModel.fromJson(model)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(71, 86, 87, 1),
        accentColor: Color.fromRGBO(71, 86, 87, 1),
        buttonColor: Color.fromRGBO(238, 238, 238, 1),
      ),
      home: Scaffold(
        backgroundColor: Color(CustomColor.HexCustomColor.custom_white),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: size.width,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 30.0, left: 10.0),
                                      child: Text(
                                        "LOJA.COM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 17,
                                            color: Color(CustomColor.HexCustomColor.custom_black_two)),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, left: 10.0),
                                      child: Text(
                                        "Av. Pinheiro Laranja, n50",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(CustomColor.HexCustomColor.custom_orange)),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, right: 15),
                                  child: Container(
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                color:Color(CustomColor.HexCustomColor.custom_white),
                                                borderRadius:
                                                    BorderRadius.circular(11),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color(CustomColor.HexCustomColor.custom_gray),
                                                      offset: Offset(3.0, 3.0))
                                                ],
                                              ),
                                              child: Material(
                                                borderRadius:
                                                    BorderRadius.circular(11),
                                                clipBehavior: Clip.hardEdge,
                                                child: InkWell(
                                                  onTap: () {
                                                    print("BOTAO PROCURAR");
                                                  },
                                                  child: Container(
                                                    width: 40.0,
                                                    height: 35.0,
                                                    child: Center(
                                                      child: new Icon(
                                                        Icons.search,
                                                        color: Color(CustomColor.HexCustomColor.custom_gray),
                                                        size: 20.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                color: Colors.transparent,
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(CustomColor.HexCustomColor.custom_white),
                                                  borderRadius:
                                                      BorderRadius.circular(11),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(CustomColor.HexCustomColor.custom_gray),
                                                      offset: Offset(3.0, 3.0),
                                                    )
                                                  ],
                                                ),
                                                child: Material(
                                                  borderRadius:
                                                      BorderRadius.circular(11),
                                                  clipBehavior: Clip.hardEdge,
                                                  child: InkWell(
                                                    onTap: () {
                                                      _filterPicker();
                                                    },
                                                    child: Container(
                                                      width: 40.0,
                                                      height: 35.0,
                                                      child: Center(
                                                        child: new Icon(
                                                          Icons.filter_list,
                                                          color: Color(CustomColor.HexCustomColor.custom_gray),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: size.height,
                              width: size.width,
                              child: ListView.separated(
                                scrollDirection: Axis.vertical,
                                padding: const EdgeInsets.only(bottom: 10),
                                itemCount: productList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    width: size.width,
                                    child: InkWell(
                                      splashColor: Color(CustomColor.HexCustomColor.custom_white),
                                      highlightColor: Color(CustomColor.HexCustomColor.custom_white),
                                      child: Container(
                                        padding: const EdgeInsets.only(left: 30.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Container(
                                                  padding: const EdgeInsets.only(top: 40.0, left: 30.0),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        height: 25,
                                                        width: 40,
                                                        child: ButtonTheme(
                                                          child: RaisedButton(
                                                            color: Color(CustomColor.HexCustomColor.custom_white),
                                                            child: Text(
                                                              "0",
                                                              style: TextStyle(
                                                                color: Color(CustomColor.HexCustomColor.custom_black_two),
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                            onPressed: () {},
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.only(
                                                                topRight: Radius.circular(8.0),
                                                                topLeft: Radius.circular(0),
                                                                bottomRight: Radius.circular(8.0),
                                                                bottomLeft: Radius.circular(0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        transform: Matrix4.translationValues(-60.0, 0.0, 0.0),
                                                        child: InkWell(
                                                          splashColor: Color(CustomColor.HexCustomColor.custom_white),
                                                          child: ClipOval(
                                                            child: Material(
                                                              color: Color(CustomColor.HexCustomColor.custom_orange),
                                                              shape: new RoundedRectangleBorder(
                                                                borderRadius: new BorderRadius.circular(20.0),
                                                                side: BorderSide(color: Color(CustomColor.HexCustomColor.custom_orange)),
                                                              ),
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Icon(
                                                                  Icons.add,
                                                                  size: 18,
                                                                  color: Color(CustomColor.HexCustomColor.custom_white),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    padding: const EdgeInsets.only(top: 30.0, left: 5.0),
                                                    child: Text(
                                                      productList[index].data.promocoesGerais[index].estoques[index].produto.nomeStr,
                                                      style: TextStyle(fontSize: 12, color: Color(CustomColor.HexCustomColor.custom_black_two)),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.only(top: 3.0, left: 5.0),
                                                    child: Text(
                                                      "RS"+ productList[index].data.promocoesGerais[index].precoDoub.toString(),
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w900,
                                                          fontSize: 15,
                                                          color: Color(CustomColor.HexCustomColor.custom_black_two)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(top: 1.0, right: 30),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    padding: const EdgeInsets.only(top: 30.0, left: 10.0),
                                                    child: Container(
                                                      padding: const EdgeInsets.only(top: 50.0, left: 50.0),
                                                      decoration: BoxDecoration(
                                                        color: Color(CustomColor.HexCustomColor.custom_gray_four),
                                                        image: const DecorationImage(
                                                          image:
                                                          NetworkImage('productList[index].data.promocoesGerais[index].imagemPrincipal.nomeStr'),
                                                        ),
                                                        border: Border.all(
                                                          color: Color(CustomColor.HexCustomColor.custom_black_two),
                                                          width: 1,
                                                        ),
                                                        borderRadius: BorderRadius.circular(8),
                                                      ),
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
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    width: 5,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 30.0, left: 180),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 44,
                      width: 100,
                      child: ButtonTheme(
                        child: RaisedButton(
                          color: Color(CustomColor.HexCustomColor.custom_gray_two),
                          child: Text(
                            "3 itens",
                            style: TextStyle(
                              color:  Color(CustomColor.HexCustomColor.custom_gray_three),
                              fontSize: 16,
                            ),
                          ),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(0),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      transform: Matrix4.translationValues(-210.0, 0.0, 0.0),
                      height: 50,
                      width: 130,
                      child: ButtonTheme(
                        child: RaisedButton(
                          color: Color(CustomColor.HexCustomColor.custom_orange),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.shopping_cart,
                                size: 18,
                                color: Color(CustomColor.HexCustomColor.custom_white),
                              ),
                              Text(
                                "Sacola",
                                style: TextStyle(
                                  color: Color(CustomColor.HexCustomColor.custom_white),
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                        ),
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
  }

  void _filterPicker() {
    showDialog(
      context: context,
      builder: (BuildContext context) => CustomDialog(),
    );
  }

}
