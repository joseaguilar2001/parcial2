import 'package:flutter/material.dart';

class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;
  const CardItem(
      {required this.urlImage, required this.title, required this.subtitle});
}

class CardItem2 {
  final String urlImage;
  final String title;
  final String time;
  final String price;
  const CardItem2(
      {required this.urlImage,
      required this.title,
      required this.time,
      required this.price});
}

class PagePrincipal extends StatefulWidget {
  const PagePrincipal({super.key});

  @override
  State<PagePrincipal> createState() => _PagePrincipalState();
}

class _PagePrincipalState extends State<PagePrincipal> {
  List<CardItem> items = [
    const CardItem(
        urlImage: 'assets/images/tikal.jpg',
        title: 'Tikal',
        subtitle: 'Civilización maya, en su máxima expresión'),
    const CardItem(
        urlImage: 'assets/images/atitlan.jpg',
        title: 'Atitlán',
        subtitle: 'El lago más hermoso del mundo'),
    const CardItem(
        urlImage: 'assets/images/semuc.jpeg',
        title: 'Semuc',
        subtitle: 'Un paraíso natural en medio del bosque'),
    const CardItem(
        urlImage: 'assets/images/xela.jpg',
        title: 'Xela',
        subtitle: 'La cuna de la cultura y de los mejores ingenieros'),
  ];

  List<CardItem2> items2 = [
    const CardItem2(
        urlImage: 'assets/images/imagen4.jpg',
        title: '''   Volcán
  Tajumulco''',
        time: '2 dias',
        price: 'Q.325'),
    const CardItem2(
        urlImage: 'assets/images/imagen1.jpg',
        title: ''' Cultura en el
  altiplano''',
        time: '3 dias',
        price: 'Q.570'),
    const CardItem2(
        urlImage: 'assets/images/imagen2.jpg',
        title: ''' Camping
  Tecpán''',
        time: '2 dias',
        price: 'Q.430'),
    const CardItem2(
        urlImage: 'assets/images/imagen3.jpg',
        title: '''  Sendero de
 Todos Santos''',
        time: '1 dias',
        price: 'Q. 270'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 350,
            child: Text(
              'Guatemala',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(fontWeight: FontWeight.w600, color: Colors.black),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: 350,
            child: Text(
              'Corazon del mundo maya',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500, color: Colors.blueGrey),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView.separated(
                padding: const EdgeInsets.all(16),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: ((context, _) => const SizedBox(
                      width: 20,
                    )),
                itemBuilder: (context, index) =>
                    buildCard(item: items[index], context: context)),
          ),
          SizedBox(
            width: 350,
            child: Text(
              'Actividades',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.w800, color: Colors.black),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 400,
            child: ListView.separated(
                padding: const EdgeInsets.all(16),
                scrollDirection: Axis.vertical,
                itemCount: 4,
                separatorBuilder: ((context, _) => const SizedBox(
                      height: 25,
                    )),
                itemBuilder: (context, index) =>
                    buildCard2(item: items2[index], context: context)),
          ),
        ],
      ),
    );
  }
}

Widget buildCard({required CardItem item, required BuildContext context}) =>
    Container(
      height: 100,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.fill, image: NetworkImage(item.urlImage))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 200),
          Text(
            item.title,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.w800, color: Colors.white),
            textAlign: TextAlign.left,
          ),
          Text(
            item.subtitle,
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );

Widget buildCard2({required CardItem2 item, required BuildContext context}) =>
    Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.fill, image: NetworkImage(item.urlImage))),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                item.title,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w600, color: Colors.white),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                width: 180,
              ),
              Column(
                children: [
                  Text(
                    item.time,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    item.price,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
