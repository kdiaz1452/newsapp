import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/showcategory.dart';
import 'package:newsapp/pages/articleview.dart';
import 'package:newsapp/services/showcategorynews.dart';

class CategoryNews extends StatefulWidget {
  String name;
  CategoryNews({super.key, required this.name});

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ShowCategoryModel> categories = [];
  bool _loading = true;

  @override
  void initState(){
    super.initState();
    getNews();
  }

    getNews() async {
    ShowCategoryNews showCategoryNews = ShowCategoryNews();
    await showCategoryNews.getCategoriesNews(widget.name.toLowerCase());
    categories = showCategoryNews.categories;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.name,
                style: const TextStyle(
                  color: Colors.indigo,
                  fontSize: 32,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: categories.length,
          itemBuilder: (context, index) {
          return ShowCategory(
            image: categories[index].urlToImage!, 
            desc: categories[index].description!, 
            title: categories[index].title!,
            url: categories[index].url!);
            }),
      ),
    );
  }
}

class ShowCategory extends StatelessWidget {
  String image, desc, title, url;
  ShowCategory({super.key, required this.image, required this.desc, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleView(blogUrl: url)));
      },
      child: Container(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: image, 
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
              ),
          ),
          const SizedBox(height: 7.0,),
          Text(title,
          style: const TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),),
          const SizedBox(height: 4.0,),
          Text(desc,
          style: const TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),),
          const SizedBox(height: 15.0,),
        ],
      ),
    ),
    );
  }
}