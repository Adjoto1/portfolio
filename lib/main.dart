import 'package:flutter/material.dart';

void main()=>runApp(PortfolioApp());
class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: [
          new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(bottom:10.0),
                    child:  new Text(
                        'Zuri second flutter assignment', style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                  ),

                  new Text(
                      'With all honesty programming is time consuming', style: new TextStyle(color: Colors.grey[600], fontSize: 18.0))
                ],
              )
          ),
          new Text('Likes', style: new TextStyle(fontSize: 25.0)),
          new Icon(Icons.favorite, color: Colors.red,),
          new Text('100', style: new TextStyle(fontSize: 16.0),),
        ],
      ),
    );
    Widget buildButton(IconData icon, String buttonTitle){
      final Color tintColor = Colors.blue;
      return new Column(
        children:<Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: new Text(buttonTitle, style: new TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: tintColor),),
          )
        ],
      );
    }
    Widget fourButtonsSection = new Container(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //     new Text('Button 1', style: new TextStyle(fontSize: 16.0)),
            buildButton(Icons.home, 'Home'),
            buildButton(Icons.arrow_back, 'Back'),
            buildButton(Icons.arrow_forward, 'Forward'),
            buildButton(Icons.share, 'Share'),
          ],
        )
    );
    final bottomTextSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Text('''I am Adjoto from Edo State (The heart beat of the nation) Nigeria. I live in Osun which is located in South West Nigeria, I stumbled on Zuri intern on Twitter and instead of being idle as a result of corona virus which made the Federal Government to direct all civil servants below level 12 to work from home, I decided to take advantage of this training to improve myself and see how i can translate knowledge acquired to better my official activities and Nigeria at large. ''',
          style: new TextStyle(
              color: Colors.green,
              fontSize: 16.0
          )
      ),
    );
    return new MaterialApp(
      title: '',
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Portfolio App'),
          ),
          body: new ListView(
            children: <Widget>[
              new Image(
                image:AssetImage('assets/portfolio.jpg'),
                fit: BoxFit.cover,
              ),
              titleSection,
              fourButtonsSection,
              bottomTextSection
            ],
          )
      ),
    );
  }
}