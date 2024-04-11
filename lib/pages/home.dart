import 'package:cached_network_image/cached_network_image.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articlemodel.dart';
import 'package:newsapp/models/categorymodel.dart';
//import 'package:newsapp/pages/allnews.dart';
import 'package:newsapp/pages/articleview.dart';
//import 'package:newsapp/models/slidermodel.dart';
import 'package:newsapp/pages/categorypage.dart';
import 'package:newsapp/services/data.dart';
import 'package:newsapp/services/news.dart';
//import 'package:newsapp/services/sliderdata.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/link.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];
  //List<sliderModel> sliders = [];
  List<ArticleModel> articles = [];
  bool _loading = true, loading2=true;

  int activeIndex = 0;
  @override
  void initState() {
    categories = getCategories();
    //getSlider();
    getNews();
    super.initState();
  }

  getNews() async {
    News newsclass = News();
    await newsclass.getNews();
    articles = newsclass.news;
    setState(() {
      _loading = false;
    });
  }

    //getSlider() async {
    //Sliders slider= Sliders();
    //await slider.getSlider();
    //sliders = slider.sliders;
  //setState(() {
    //loading2=false;
  //});
  //}


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("general",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Quicksand')),
            Text("News",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 32,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      
      body: _loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Source List by Bias Rating",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand'),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, right: 6.0, top: 12.0, bottom: 12.0),
                              child: Link(
                                target: LinkTarget.self,
                                uri: Uri.parse("https://mediabiasfactcheck.com/left/"),
                                builder: (context, followLink) => ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromRGBO(0, 0, 255, 1.0),
                                    fixedSize: const Size(170, 70)
                                   ),
                                  onPressed: followLink,
                                  child: const Text('Left', 
                                    style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                    )),
                                ),
                              ),
                            ),
                           Padding(
                             padding: const EdgeInsets.only(left: 6.0, right: 6.0, top: 12.0, bottom: 12.0),
                             child: Link(
                             target: LinkTarget.self,
                             uri: Uri.parse("https://mediabiasfactcheck.com/leftcenter/"),
                             builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(50, 0, 200, 1.0),
                                fixedSize: const Size(170, 70)
                               ),
                              onPressed: followLink,
                              child: const Text('Left Center', 
                                style: TextStyle(
                                fontFamily: 'Quicksand',
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                                )),
                                                     ),
                                                   ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 6.0, right: 6.0, top: 12.0, bottom: 12.0),
                             child: Link(
                             target: LinkTarget.self,
                             uri: Uri.parse("https://mediabiasfactcheck.com/center/"),
                             builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(128, 0, 255, 1.0),
                                fixedSize: const Size(170, 70)
                               ),
                                onPressed: followLink,
                              child: const Text('Center', 
                                style: TextStyle(
                                fontFamily: 'Quicksand',
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                                )),
                                ),
                              ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 6.0, right: 6.0, top: 12.0, bottom: 12.0),
                             child: Link(
                             target: LinkTarget.self,
                             uri: Uri.parse("https://mediabiasfactcheck.com/rightcenter/"),
                             builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(120, 0, 70, 1.0),
                                fixedSize: const Size(170, 70)
                               ),
                              onPressed: followLink,
                              child: const Text('Right Center', 
                                style: TextStyle(
                                fontFamily: 'Quicksand',
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                                )),
                                                     ),
                                                   ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 6.0, right: 6.0, top: 12.0, bottom: 12.0),
                             child: Link(
                             target: LinkTarget.self,
                             uri: Uri.parse("https://mediabiasfactcheck.com/right/"),
                             builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(255, 0, 0, 1.0),
                                fixedSize: const Size(170, 70)
                               ),
                              onPressed: followLink,
                              child: const Text('Right', 
                                style: TextStyle(
                                fontFamily: 'Quicksand',
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                                )),
                                                     ),
                                                   ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 6.0, right: 6.0, top: 12.0, bottom: 12.0),
                             child: Link(
                             target: LinkTarget.self,
                             uri: Uri.parse("https://mediabiasfactcheck.com/fake-news/"),
                             builder: (context, followLink) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(100, 100, 100, 1.0),
                                fixedSize: const Size(170, 70)
                               ),
                              onPressed: followLink,
                              child: const Text('Questionable', 
                                style: TextStyle(
                                fontFamily: 'Quicksand',
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                                )),
                                                     ),
                                                   ),
                           ),
                           
                          ],
                        ),
                      ),
                      
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "News by Category",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 14.0),
                        height: 70,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              return CategoryTitle(
                                    image: categories[index].image,
                                    categoryName: categories[index].categoryName,
                                  );
                              })),
                    const SizedBox(
                      height: 25.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Trending News",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: articles.length,
                          itemBuilder: (context, index) {
                            return BlogTitle(
                                url: articles[index].url!,
                                desc: articles[index].description!,
                                imageUrl: articles[index].urlToImage!,
                                title: articles[index].title!);
                          }),
                    ),
              ]),
                ),
              ));
  }


  Widget buildImage(String image, int index, String name) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width, imageUrl: image,
          ),
        ),
        Container(
          height: 250,
          padding: const EdgeInsets.only(left: 10.0, top: 6.0),
          margin: const EdgeInsets.only(top: 140.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(7)),
          child: Center(
            child: Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand'),
            ),
          ),
        ),
      ]));
}


class CategoryTitle extends StatelessWidget {
  final image, categoryName;
  const CategoryTitle({super.key, this.categoryName, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryNews(name: categoryName)));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  image,
                  width: 140,
                  height: 70,
                  fit: BoxFit.cover,
                )),
            Container(
                width: 140,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black45,
                ),
                child: Center(
                    child: Text(categoryName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand'))))
          ],
        ),
      ),
    );
  }
}

class BlogTitle extends StatelessWidget {
  String imageUrl, title, desc, url;
  BlogTitle(
      {super.key,
      required this.desc,
      required this.imageUrl,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ArticleView(blogUrl: url)));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Material(
            elevation: 3.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            imageUrl: imageUrl,
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ))),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: Text(
                          title,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand'),
                        ),
                      ),
                      const SizedBox(
                        height: 7.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: Text(
                          desc,
                          maxLines: 3,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
