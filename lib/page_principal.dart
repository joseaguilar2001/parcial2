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
        urlImage: 'assets/images/atitlan.jpg',
        title: 'Tikal',
        subtitle: 'Civilizacion maya, en su maxima expresion'),
    const CardItem(
        urlImage: 'assets/images/atitlan.jpg',
        title: 'Atitlan',
        subtitle: 'El lago mas hermoso del mundo'),
    const CardItem(
        urlImage: 'assets/images/semuc.jpeg',
        title: 'Semuc',
        subtitle: 'Un paraiso natural en medio del bosque'),
    const CardItem(
        urlImage: 'assets/images/xela.jpg',
        title: 'Xela',
        subtitle: 'La cuna de la cultura y de los mejores ingenieros'),
  ];

  List<CardItem2> items2 = [
    const CardItem2(
        urlImage: 'assets/images/imagen4.jpg',
        title: '''Volcan
    Tajumulco''',
        time: '2 dias',
        price: 'Q. 325'),
    const CardItem2(
        urlImage: 'assets/images/imagen1.jpg',
        title: '''Cultura en el
    altiplano''',
        time: '2 dias',
        price: 'Q. 325'),
    const CardItem2(
        urlImage: 'assets/images/imagen2.jpg',
        title: '''Camping
    Tecpan''',
        time: '2 dias',
        price: 'Q. 325'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 330,
          height: 60,
          child: Text(
            'Guatemala',
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(fontWeight: FontWeight.w600, color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            width: 330,
            height: 60,
            child: Text(
              'Corazon del mundo maya',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.w600, color: Colors.black),
              textAlign: TextAlign.left,
            )),
        const SizedBox(
          height: 10,
        ),
        ListView.separated(
            padding: const EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            separatorBuilder: ((context, _) => const SizedBox(
                  width: 12,
                )),
            itemBuilder: (context, index) =>
                buildCard(item: items[index], context: context)),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 300,
          child: Text(
            'Actividades',
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(fontWeight: FontWeight.w600, color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListView.separated(
            padding: const EdgeInsets.all(16),
            scrollDirection: Axis.vertical,
            itemCount: 4,
            separatorBuilder: ((context, _) => const SizedBox(
                  width: 12,
                )),
            itemBuilder: (context, index) =>
                buildCard(item: items[index], context: context)),
      ],
    ));
  }
}

Widget buildCard({required CardItem item, required BuildContext context}) =>
    Container(
      width: 200,
      height: 200,
      color: Colors.white.withOpacity(1.0),
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(item.urlImage, fit: BoxFit.cover),
                )),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            item.title,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
            textAlign: TextAlign.left,
          ),
          Text(
            item.subtitle,
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );

Widget buildCard2({required CardItem2 item, required BuildContext context}) =>
    Container(
      width: 500,
      height: 200,
      color: Colors.white.withOpacity(1.0),
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(item.urlImage, fit: BoxFit.cover),
                )),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text(
                item.title,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600, color: Colors.white),
                textAlign: TextAlign.left,
              ),
              Text(
                item.time,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.w600, color: Colors.white),
                textAlign: TextAlign.right,
              ),
              Text(
                item.time,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600, color: Colors.white),
                textAlign: TextAlign.right,
              )
            ],
          )
        ],
      ),
    );
