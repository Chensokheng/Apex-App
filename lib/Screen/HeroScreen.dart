import 'package:apex/model/hero.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HeroScreen extends StatefulWidget {
  final Heros hero;
  HeroScreen({this.hero});
  @override
  _HeroScreenState createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
  final List<String> common = ['Real Name',"Age","Home World"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.green,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    iconSize: 40.0,
                    color: Colors.white,
                  ),
                  SizedBox(height:10.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                    children: <Widget>[
                    Text("LEGEND",style: TextStyle(
                      color: Colors.white70,
                      letterSpacing: 2.0
                    ),),
                    Text(widget.hero.heroName,style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    SizedBox(height: 10),
                    Text(widget.hero.skill.toUpperCase(),style: TextStyle(
                      color: Colors.white70,
                      letterSpacing: 2.0
                    ),),
                    SizedBox(height: 5.0,),
                    RichText(
                      // overflow: TextOverflow.ellipsis,
                      strutStyle: StrutStyle(fontSize: 12.0),
                      text: TextSpan(
                      style: TextStyle(color: Colors.white,fontSize: 16.0,letterSpacing: 1.0),
                      children: [
                        TextSpan(
                          text: widget.hero.description.substring(0,150) + "..."
                        ),
                      ]
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("READ MORE",style: TextStyle(letterSpacing:1.0,fontSize: 15,color: Colors.white70),),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height *0.1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.hero.thumbnailUrl),
                          fit: BoxFit.cover
                        )
                      ),
                      child: GestureDetector(
                          onTap: () async{
                            final String videoUrl = widget.hero.videoLink;
                            if (await canLaunch(videoUrl)) {
                                await launch(videoUrl);
                            } else {
                                throw 'Could not launch $videoUrl';
                            }
                          },
                          child: Center(
                            child: Icon(Icons.play_arrow,size: 80,color: Colors.white,),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    FlatButton(
                      shape: new RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white,)
                            ),
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {},
                      child: Text(
                            "Add to Cart".toUpperCase(),
                            style: TextStyle(
                            fontSize: 14.0,
                          ),
                      ),),
                    ],),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0 ,
                child: Container(
                height: MediaQuery.of(context).size.height * 0.48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(       
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children:common.map((item)=>Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(item,style: TextStyle(letterSpacing:1.0,fontSize: 20.0,fontWeight: FontWeight.bold),),
                        Text("[ERROR]",style: TextStyle(fontSize: 18.0),),
                        SizedBox(height: 15,)
                      ],
                  )).toList()),
                  SizedBox(height: 10),
                  Text("SKILLS",style: TextStyle(fontSize: 20,letterSpacing: 1.0,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: widget.hero.abilities.map((item)=>   
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage(item.imageUrl),
                        fit: BoxFit.cover
                      )
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text(item.ability)
                        ],
                      )).toList(),)
                  ],),
                  
                ) ,
              ),
            ),
             Positioned(
              right: -10,
              top: MediaQuery.of(context).size.height * 0.30,
              child: Hero(
                tag: widget.hero.imageUrl,
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                            image: AssetImage(widget.hero.imageUrl)
                            )
                    ),
                ),
              ),
            ), 
          ],),
        )
      ],)
    );
  }


}