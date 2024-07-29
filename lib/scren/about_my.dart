import 'my_project.dart';
import 'contact_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AboutMy extends StatefulWidget {
  const AboutMy({Key? key}) : super(key: key);

  @override
  _AboutMyState createState() => _AboutMyState();
}

class _AboutMyState extends State<AboutMy> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 38, 58),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xff2F3D59),
            collapsedHeight: 100,
            expandedHeight: 300,
            flexibleSpace: Container(
              child: FlexibleSpaceBar(
                background: Image.asset(
                  "images/shuhrat.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  // SizedBox(height: 20),
                  Container(
                    width: 363,
                    height: 338,
                    decoration: BoxDecoration(
                      // image: DecorationImage(
                      //   image: AssetImage("images/Subtract.png"),
                      //   fit: BoxFit.fill,
                      // ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff2F3D59),
                          Color.fromARGB(255, 13, 22, 44),
                        ],
                      ),
                      // borderRadius: BorderRadius.circular(32),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                              "Shuhrat Shoimardonov",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "🎈05.05.2006",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "📍Flutter",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "👨‍💻Android/iOS Developer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 30),
                          TabBar(
                            dividerColor: Colors.transparent,
                            indicatorSize: TabBarIndicatorSize.label,
                            controller: _tabController,
                            indicatorColor: Color(0xffFFB829),
                            indicatorWeight: 5,
                            labelColor: Color(0xffFFFFFF),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            unselectedLabelColor: Color(0xffFFFFFF),
                            unselectedLabelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            tabs: [
                              Tab(text: "About"),
                              Tab(text: "Skill"),
                              Tab(text: "Project"),
                              Tab(text: "Contact"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 500,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Container(color: Colors.blue),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image(image: image)
                                ],
                              ),
                            ],
                          ),
                        ),
                        MyProject(),
                        MyContact(),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
