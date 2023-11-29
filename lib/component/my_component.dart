
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_apps/models/news_models.dart';
import 'package:url_launcher/url_launcher.dart';

class MyComponent{
  static Widget bulidNews (BuildContext context , Articles models)=> InkWell(

    onTap: () async{
      var myUrl = Uri.parse(models.url!);
        if (!await launchUrl(myUrl)) {
          throw Exception('Could not launch ');
        }
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: models.urlToImage == null  ?  NetworkImage('https://yt3.googleusercontent.com/ytc/APkrFKY34-UfYLzGRdKHatVw-y_PpUCR8maSQ1Ft8sp39iY=s900-c-k-c0x00ffffff-no-rj') :
                  NetworkImage('${models.urlToImage}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15,),
          Expanded(
            flex: 2,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                 borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text("${models.title}",
                      maxLines: 2, // بدي الحكي يطلع على سطر
                      overflow: TextOverflow.ellipsis, // يعطي بدل الحكي نقاط
                      style: GoogleFonts.almarai(
                        fontSize: 23,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text("${models.author}",maxLines: 2, // بدي الحكي يطلع على سطر
                      overflow: TextOverflow.ellipsis, // يعطي بدل الحكي نقاط
                      style: GoogleFonts.almarai(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                  Text("${models.publishedAt}",maxLines: 1, // بدي الحكي يطلع على سطر
                    overflow: TextOverflow.ellipsis, // يعطي بدل الحكي نقاط
                    style: GoogleFonts.almarai(fontSize: 20,
                      color: Colors.grey ,
                    ),),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}