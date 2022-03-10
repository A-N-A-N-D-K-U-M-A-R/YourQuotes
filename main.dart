// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoastertoast.dart';
// import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(title: "YourQuote", home: Login()));
}

class SearchScreen extends StatefulWidget {
  static const String id = 'search_screen';
  const SearchScreen({Key? key}) : super(key: key);
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _currentIndex = 0;

  final Tabs = [
    MyApp(),
    Center(
      child: Text("Search Page"),
    ),
    AddPostWidget(),
    Center(
      child: Text("Notification Page"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: "New Post"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_rounded),
              label: "Notification"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: "Profile")
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Tabs[_currentIndex],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(200, 150, 100, 1),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline_outlined), label: "New Post"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_rounded),
                label: "Notification"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: "Profile")
          ],

        ),
        body: SafeArea(
            child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    child: PageView(
                        // controller: pageViewController ??=
                        //     PageController(initialPage: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 1,
                              decoration: BoxDecoration(
                                color: Color(0xFFBAB2B2),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Color(0xFFF7F7F7),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.09,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF5963F3),
                                    ),

                                    //NAVBAR STARTS HERE
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 3, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Image.network(
                                              'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/v1502774745/stji3z7kun1jqcn0rsf0.png',
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.04,
                                              fit: BoxFit.scaleDown,
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(1, 0),
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.mail_outline_outlined,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                                onPressed: () {
                                                  print('Premium Referrel');
                                                },
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.auto_awesome,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              onPressed: () {
                                                print('Filter Post');
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  //STATUS BAR STARTS HERE
                                  Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 5),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.11,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: ListView(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Container(
                                                  width: 120,
                                                  height: 120,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'data:image/jpeg;base64,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',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              //2ND STORY STARTS
                                              Container(
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Container(
                                                  width: 120,
                                                  height: 120,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTCDB9K-S-32MeRoT0x7CbmCbtebzYivA-dg&usqp=CAU",
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                              //3RD STORY STARTS HERE
                                              Container(
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Container(
                                                  width: 120,
                                                  height: 120,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTisiyvbCZpcDTGYaGLY1ZtY_pG46ROws0eXw&usqp=CAU',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              //4TH STORY STARTS HERE
                                              Container(
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Container(
                                                  width: 120,
                                                  height: 120,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOBbLNL0zhKBfpl-BJadrsMtlGo5g9UNuLFQ&usqp=CAU',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              //5TH STORY STARTS HERE
                                              Container(
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Container(
                                                  width: 120,
                                                  height: 120,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'data:image/jpeg;base64,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',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      )),

                                  //BODY STARTS HERE
                                  Expanded(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 2),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 400,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF607D8B),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2,
                                                                          2,
                                                                          2,
                                                                          2),
                                                              child: Container(
                                                                width: 120,
                                                                height: 120,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://picsum.photos/seed/560/600',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.85, 0),
                                                              child: Text(
                                                                'Pragati',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        IconButton(
                                                          icon: Icon(
                                                            Icons
                                                                .more_vert_rounded,
                                                            color: Colors.black,
                                                            size: 42,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'More options');
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  //new one post
                                                  Expanded(
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF9F9F9),
                                                      ),
                                                      child: Image.network(
                                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPFWm_sDwD1361qJmHQemhfCabRBTmSPsnVg&usqp=CAU",
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 55,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.4,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'Like the Post');
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons.comment,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'Comment on Post');
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .bookmark,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'Save the Post');
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.6, 0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.4,
                                                              height: 100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .add_circle_outline,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'Set your Story');
                                                                    },
                                                                  ),
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .chat_rounded,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'Share on WhatsApp');
                                                                    },
                                                                  ),
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .share_outlined,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'Share on Different platforms');
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                          //2nd post

                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 2),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 400,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF607D8B),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2,
                                                                          2,
                                                                          2,
                                                                          2),
                                                              child: Container(
                                                                width: 120,
                                                                height: 120,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://picsum.photos/seed/560/600',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.85, 0),
                                                              child: Text(
                                                                'YourQuote Baba',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        IconButton(
                                                          icon: Icon(
                                                            Icons
                                                                .more_vert_rounded,
                                                            color: Colors.black,
                                                            size: 42,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  //new one post
                                                  Expanded(
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF9F9F9),
                                                      ),
                                                      child: Image.network(
                                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSG5GxiSclBdlo_8rXS4RoZxH6kV_gMEHAfA&usqp=CAU",
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 55,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.4,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons.comment,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .bookmark,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.6, 0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.4,
                                                              height: 100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .add_circle_outline,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .chat_rounded,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .share_outlined,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                          //3rd
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 2),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 400,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF607D8B),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2,
                                                                          2,
                                                                          2,
                                                                          2),
                                                              child: Container(
                                                                width: 120,
                                                                height: 120,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://picsum.photos/seed/560/600',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.85, 0),
                                                              child: Text(
                                                                'Sanjeev Sharma',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        IconButton(
                                                          icon: Icon(
                                                            Icons
                                                                .more_vert_rounded,
                                                            color: Colors.black,
                                                            size: 42,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  //new one post
                                                  Expanded(
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF9F9F9),
                                                      ),
                                                      child: Image.network(
                                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt-zRHjMe7fzgL69TqWjNc9Aw5xZL_WZvv4w&usqp=CAU",
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 55,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.4,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons.comment,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .bookmark,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.6, 0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.4,
                                                              height: 100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .add_circle_outline,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .chat_rounded,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .share_outlined,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                          //4th one
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 2),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 400,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF607D8B),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2,
                                                                          2,
                                                                          2,
                                                                          2),
                                                              child: Container(
                                                                width: 120,
                                                                height: 120,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://picsum.photos/seed/560/600',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.85, 0),
                                                              child: Text(
                                                                'YourQuote Baba',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        IconButton(
                                                          icon: Icon(
                                                            Icons
                                                                .more_vert_rounded,
                                                            color: Colors.black,
                                                            size: 42,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  //new one post
                                                  Expanded(
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 200,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF9F9F9),
                                                      ),
                                                      child: Image.network(
                                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTudhO0K8JfAAXKmOZUDLctLH2tpkwFuMqR5Q&usqp=CAU",
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 55,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.4,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons.comment,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .bookmark,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.6, 0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.4,
                                                              height: 100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .add_circle_outline,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .chat_rounded,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .share_outlined,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                          //5th one
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 2),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 400,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF607D8B),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2,
                                                                          2,
                                                                          2,
                                                                          2),
                                                              child: Container(
                                                                width: 120,
                                                                height: 120,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://picsum.photos/seed/560/600',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.85, 0),
                                                              child: Text(
                                                                'Monika',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        IconButton(
                                                          icon: Icon(
                                                            Icons
                                                                .more_vert_rounded,
                                                            color: Colors.black,
                                                            size: 42,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  //new one post
                                                  Expanded(
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF9F9F9),
                                                      ),
                                                      child: Image.network(
                                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLpUvuuG80bAgmXBR755_hqhD50F83um71ZA&usqp=CAU",
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 55,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.4,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons.comment,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .bookmark,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.6, 0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.4,
                                                              height: 100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .add_circle_outline,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .chat_rounded,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                  IconButton(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .share_outlined,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 20,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
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
                            ),
                          ),
                        ])))));
  }
}

class AddPostWidget extends StatefulWidget {
  @override
  _AddPostWidgetState createState() => _AddPostWidgetState();
}

class _AddPostWidgetState extends State<AddPostWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.09,
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFF2542BF),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: IconButton(
                          icon: Icon(
                            Icons.keyboard_backspace,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MyApp()),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.05, 0),
                        child: Text(
                          'Compose',
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(1, 0),
                          child: IconButton(
                            icon: Icon(
                              Icons.description_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              print('Drafts');
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1, 0),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_sharp,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            print('Add the background to your Text');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.783,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: TextFormField(
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Write your original quote...',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0.05),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0.95, 0.2),
                                child: Text(
                                  '1200',
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.4, -0.35),
                              child: IconButton(
                                icon: Icon(
                                  Icons.add_circle_outline,
                                  color: Color(0xFF26C6DA),
                                  size: 20,
                                ),
                                onPressed: () {
                                  print('Add Multiple Pages to write...');
                                },
                              ),
                            ),
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
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();

  get height => null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var textFormField = TextFormField(
      controller: TextEditingController(),
      // obscureText: !passwordVisibility,
      decoration: InputDecoration(
        hintText: 'Enter your Password',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.grey)),
      ),
    );
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFF3F51B5),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-0.95, 0),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFF3F51B5),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.05, 0.6),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          Text('Account Login'),
                          Text('Sign in to your account'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    width: MediaQuery.of(context).size.width,
                    height: 695,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            child: Text("Username"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter your Username/Email/Phone Number",
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Container(
                            child: Text("Password"),
                          ),),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter your Password"
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                            ),
                            child: FloatingActionButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SearchScreen()),
                                );
                              },
                              child: Text("Sign in"),
                              shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          )
                        ],
                      ) 
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
