import 'package:apex/Screen/HeroScreen.dart';
import 'package:apex/model/hero.dart';
import 'package:flutter/material.dart';
class HeroCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
              height: MediaQuery.of(context).size.height * 0.65, 
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: heros.length,  
              itemBuilder: 
              (BuildContext context,int index ){
                Heros hero = heros[index];
                return GestureDetector(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>HeroScreen(hero: hero,))),
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.70,
                      decoration:BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Stack(children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(hero.imageUrl)
                            )
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.10,
                            width: MediaQuery.of(context).size.width * 0.70,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)
                              )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(hero.heroName,style: TextStyle(color: Colors.white,fontSize: 25.0),),
                                SizedBox(height: 5.0,),
                                Text(hero.skill,style: TextStyle(color: Colors.white,fontSize: 15.0,letterSpacing: 2.0),),
                              ],
                            ),
                          ),
                        ),
                      ],),
                    
                    ),
                  ),
                );
              }),
            );
  }
}