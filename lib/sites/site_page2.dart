import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registrar_page_turismapp/utils/app_styles.dart';
import 'package:gap/gap.dart';

class sitePage2 extends StatefulWidget {
  const sitePage2({Key? key}) : super(key: key);

  @override
  State<sitePage2> createState() => _sitePage2();
}

class _sitePage2 extends State<sitePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Turismo por",
                          style: Styles.headLineStyle6,
                        ),
                        const Gap(1),
                        Text(
                          "Colombia",
                          style: Styles.headLineStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/1.png"),
                            scale: 20),
                      ),
                    ),
                  ],
                ),
                Gap(20),
                Container(
                  height: 250.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/111.png"),
                      )),
                ),
                Gap(20),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Ciudad: ",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "Popayan",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Departamento: ",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "Cauca",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Temperatura: ",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "24 °C",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Descripcion: ",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "Es uno de los sitios",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "más antiguos de la ciudad,",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "construido",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "aproximadamente en el año",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "1537 como",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "plaza de mercado el cual",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "se ha, trasfor-",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "mado a través de los ",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "años. En 1910 se",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),

                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "instaló el monumento",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                        TextSpan(
                          text: "que rinde ",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        )
                      ])),
                    )
                  ],
                )),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "homenaje al prócer de la indepen...",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                      ])),
                    )
                  ],
                )),
                Gap(10),
                Container(
                    //padding:  EdgeInsets.fromLTRB(30, 35, 30, 15),
                    child: Row(
                  children: [
                    Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Otra informacion de interes... ",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.primaryColor),
                        ),
                      ])),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
