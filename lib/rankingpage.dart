import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rankingpage/progressbar.dart';
import 'package:rankingpage/question.dart';
import 'package:rankingpage/statemanegemnt/fillcount.dart';

class RankingPage extends StatefulWidget {
  int ID;
   RankingPage({
    
    required this.ID,
    super.key});

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
String backgroundimage="assetss/images/Bronze NO UI copy.jpg";
String  frame='assetss/images/bframe.png';
String legacy='assetss/images/bronze.png';
String how='assetss/images/bronzehow.png';
String badge='assetss/images/br0.png';
String rewards="assetss/images/bronzereward.png";
Color middleborder=const Color.fromARGB(255, 203, 139, 108);
Color downborder=const Color.fromARGB(255, 120, 75, 63);
Color first= const Color.fromARGB(255, 203, 139, 108);
Color second=const Color.fromARGB(255, 193, 123, 91);
void getting(final fillingcount, final timemin){

if (timemin>=0 && timemin<210) {
  backgroundimage="assetss/images/Bronze NO UI copy.jpg";
  frame='assetss/images/bframe.png';
 legacy='assetss/images/bronze.png';
  how='assetss/images/bronzehow.png';
  badge='assetss/images/br$fillingcount.png'; 
  rewards="assetss/images/bronzereward.png";
 middleborder=const Color.fromARGB(255, 203, 139, 108);
downborder=const Color.fromARGB(255, 120, 75, 63);
first= const Color.fromARGB(255, 203, 139, 108);
second=const Color.fromARGB(255, 193, 123, 91);

}else if(timemin>=210 && timemin<810){

backgroundimage="assetss/images/Silver NO UI copy.jpg";
frame='assetss/images/sframe.png';
legacy='assetss/images/silver.png';
 how='assetss/images/silverhow.png';
 badge='assetss/images/s$fillingcount.png'; 
 rewards="assetss/images/silverreward.png";
 middleborder=Color.fromARGB(255, 186, 221, 230);
downborder= const Color.fromARGB(255, 106, 137, 155);
first= const Color.fromARGB(255, 181, 216, 225);
 
second=const Color.fromARGB(255, 125, 157, 173);

}else if(timemin>=810 && timemin<2100){

backgroundimage="assetss/images/Gold NO UI copy.jpg";
frame='assetss/images/gframe.png';
legacy='assetss/images/gold.png';
 how='assetss/images/goldhow.png';
 badge='assetss/images/g$fillingcount.png'; 
 rewards="assetss/images/goldreward.png";
 middleborder=Color.fromARGB(255, 234, 209, 123);
downborder= const Color.fromARGB(255, 219, 155, 60);
first= const Color.fromARGB(255, 233, 207, 120);
 
second=const Color.fromARGB(255, 222, 167, 74);



}else if(timemin>=2100 && timemin<4650){

backgroundimage="assetss/images/Platinum NO UI copy.jpg";
frame='assetss/images/pframe.png';
legacy='assetss/images/platinum.png';
 how='assetss/images/platinumhow.png';
 badge='assetss/images/p$fillingcount.png'; 
 rewards="assetss/images/platinumreward.png";
 middleborder=Color.fromARGB(255, 208, 198, 166);
downborder= const Color.fromARGB(255, 149, 139, 105);
first= const Color.fromARGB(255, 204, 194, 162);
 
second=const Color.fromARGB(255, 156, 146, 112);




}else if(timemin>=4650){

backgroundimage="assetss/images/Diamond NO UI copy.jpg";
 frame='assetss/images/dframe.png';
legacy='assetss/images/diamond.png';
 how='assetss/images/how.png';
 badge='assetss/images/dl$fillingcount.png'; 
 rewards="assetss/images/reward.png";
 middleborder=Color.fromARGB(255, 188, 171, 216);
downborder= const Color.fromARGB(255, 94, 92, 136);
first= const Color.fromARGB(255, 188, 172, 216);
 
second=const Color.fromARGB(255, 151, 144, 210);


}

}

  @override
  Widget build(BuildContext context) {    
final fillCount = Provider.of<fillcount>(context).fillCount;
final timemin=Provider.of<fillcount>(context).fetchedMinutes;
final want=Provider.of<fillcount>(context).want;
getting(fillCount,timemin);
  
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;

          return Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundimage),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
               
                
               
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(top: height/60,left: width/30),
                         child: Icon(
                          Icons.arrow_back_ios,
                          size:width / 25,
                          color: Colors.white,
                                           ),
                       ),
                                              Padding(
                         padding:  EdgeInsets.only(top: height/60,right: width/30),
                  
                                           child: GestureDetector(
                           onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(
                               builder: (context) {
                                 return question();
                               },
                             ));
                           },
                           child: Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                               shape: BoxShape.circle,
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Center(
                                 child: Icon(
                                   Icons.question_mark,
                                   size: width / 25,
                                 ),
                               ),
                             ),
                           ),
                         ),
                  
                  
                  
                       ),
                     ],
                   ),
                
                Container(
                  height: height / 3.3,
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          // DFrame image container
                               Positioned(
       top: height / 35,
       left: width /   25,
       child: Container(
         height: height / 10,
         width: height / 10,
         decoration: BoxDecoration(
           shape: BoxShape.circle,
           image: DecorationImage(
             image: AssetImage("assetss/images/User.jpg"),
             fit: BoxFit.cover,
           ),
         ),
       ),
     ),
                          Container(
                            height: height / 7,
                            width: height / 7,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage(frame),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          // User image container
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: width / 3.5,
                          right: width / 3.5,
                          top: height / 200,
                        ),
                        child: Container(
                          width: width,
                          height: height / 17,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight,
                              colors: [
                               first,
                               second
                               
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: downborder,
                              width: 5,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: width / 30),
                                child: Text(
                                  "LEVEL $fillCount",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height / 40,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              Container(
                                height: height / 50,
                                width: width / 10,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: downborder,
                                       
                                    width: 3,
                                  ),
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height/200,),
                      ProgressBar(ID: widget.ID,),
                      // Adding the text below the ProgressBar
                      Padding(
                        padding: EdgeInsets.only(top: height / 100),
                        child: Text(
                          "You need $want Min for next level",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: height / 65,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: width / 7,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                  image:
                                      AssetImage(rewards),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: middleborder,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  offset: Offset(0, 5),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              badge),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            legacy),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height / 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              frame),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: height / 50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: SizedBox(
                                    child: Image.asset(
                                      how,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                SizedBox(height: height/60,),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: SingleChildScrollView(
                                      
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: 30,right: 30),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("• The longer the login duration,\n  the higher the level.",style: TextStyle(decoration: TextDecoration.none,color: Colors.black,fontSize: height/50),),
                                            SizedBox(height: height/40,),
                                             Text("• The higher the level, the more\n  popular you are in Leo.",style: TextStyle(decoration: TextDecoration.none,color: Colors.black,fontSize: height/50)),
                                                                                  SizedBox(height: height/40,),
       
                                            Text("• Speak in the group",style: TextStyle(decoration: TextDecoration.none,color: Colors.black,fontSize: height/50)),
                                                                                       SizedBox(height: height/40,),

                                            Text("• Group=00 Exp,up to 5.00 Exp per day",style: TextStyle(decoration: TextDecoration.none,color: Colors.black,fontSize: height/50)),
                                                                                       SizedBox(height: height/40,),

                                            Text("• Click the button if you want to know\n  more",style: TextStyle(decoration: TextDecoration.none,color: Colors.black,fontSize: height/50)),
                                            SizedBox(height: height/60,),

                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: middleborder
                                              ),
                                              onPressed:() {
                                              Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                                                return question();
                                              },));
                                            }, child:Text("GO",style: TextStyle(color: Colors.white,fontSize: height/50),))
                                            
                                           
                                        
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
