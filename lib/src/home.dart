import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: _page(),
        ),
        Container(
          child: _swiper(),
        ),
      ]),
    );
  }

  Widget _page() {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 50, 0, 10),
        width: double.infinity,
        height: 200,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          children: const <Widget>[
            Pagina(Colors.red),
            Pagina(Colors.green),
            Pagina(Colors.blue),
            Pagina(Color(0xffF2C94C)),
            Pagina(Color(0xffF2994A)),
            Pagina(Color.fromARGB(255, 76, 242, 151)),
            Pagina(Color.fromARGB(255, 214, 74, 242)),
          ],
        ));
  }

  Widget _swiper() {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 50, 0, 10),
      width: double.infinity,
      height: 200,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Pagina(Colors.red);
        },
        itemCount: 3,
        itemWidth: 300.0,
        layout: SwiperLayout.STACK,
      ),
    );
  }
}

class Pagina extends StatelessWidget {
  final Color color;
  const Pagina(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: this.color,
    );
  }
}
