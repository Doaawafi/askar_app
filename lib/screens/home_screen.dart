import 'package:askar_app/screens/faqs_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter =0;
  String _content ='استغفر الله';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/InfoScreen',
                arguments: {
                   'message':'Info Screen'
                });
          }, icon: Icon(Icons.info)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>FAQSScreen(message: 'FAQs Screen',)));
          }, icon: Icon(Icons.question_answer)),
          PopupMenuButton<String>(
            onSelected: (String value){
              if(_content!=value){
               setState((){
                 _content=value;
                 _counter=0;
               });
              }
            },
            itemBuilder: (context) {
             return[
               PopupMenuItem(
                 value: 'استغفر الله',
                 height: 10,
                 child:Text('استغفر الله',style: GoogleFonts.arefRuqaa(
                   fontWeight: FontWeight.bold,
                     fontSize: 15,
                   ),),),
               const PopupMenuDivider(),
               PopupMenuItem(
                 value: 'الحمدلله',
                 height: 10,
                 child:Text('الحمدلله',style: GoogleFonts.arefRuqaa(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              ),),),
               const PopupMenuDivider(),
               PopupMenuItem(
                 value: 'الله أكبر',
                 height: 10,
                 child:Text('الله أكبر',style: GoogleFonts.arefRuqaa(
                     fontWeight: FontWeight.bold,
                     fontSize: 15,
                   ),),),
               const PopupMenuDivider(),
               PopupMenuItem(
                 value: 'لا اله الا الله',
                 height: 10,
                 child:Text('لا اله الا الله',style: GoogleFonts.arefRuqaa(
                     fontWeight: FontWeight.bold,
                     fontSize: 15,
                   ),),),
             ];
          },)
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('مسبحة الأذكار',style: GoogleFonts.arefRuqaa(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),),),
      body: Container(

       alignment: Alignment.center,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF82A284),
              Color(0xFF83BD75)
            ],
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               height: 70,
               width: 70,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.white,
                 image: DecorationImage(
                   image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdaf4JRlAWNH--GQp32OJXJWfMG6m9FaGC6A&usqp=CAU')
                 ),
                 boxShadow:[ BoxShadow(
                   color:Colors.black45,
                   blurRadius: 12,
                   offset: Offset(0,6)
                 )]
                   
                 )
               ),
             Container(
               clipBehavior: Clip.antiAlias,
               height: 60,
               margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.white,

                   )
                 ]
               ),
               child: Row(
                 children: [
                   Expanded(
                     child: Text(_content,style: GoogleFonts.arefRuqaa(
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                     ),textAlign: TextAlign.center,),
                   ),
                   Container(
                     width: 50,
                     height: 60,
                     alignment: Alignment.center,
                     color: Color(0xFFB4E197),
                     child:
                     Text(_counter.toString(),
                       style: GoogleFonts.arefRuqaa(
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                     ),
                     ),
                    )

                 ],
               )
             ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Row(
                children: [
                  Expanded(flex: 2,
                      child: ElevatedButton(onPressed: (){
                        setState((){
                          ++_counter;
                        });
                      },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF9F9F9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(10),
                              )
                            )
                          ),
                          child: Text('تسبيح',style: GoogleFonts.arefRuqaa(
                            color: Colors.black
                          ),))),
                  Expanded(
                      child: ElevatedButton(onPressed: (){
                        setState((){
                          _counter=0;
                        });
                      },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFEEC373),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(10),
                              )
                            )
                          ),
                          child: Text('اعادة ',style: GoogleFonts.arefRuqaa(
                            color: Colors.black,
                          ),))),
                ],
              ),
            ),

           ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(()=> _counter+=1);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
