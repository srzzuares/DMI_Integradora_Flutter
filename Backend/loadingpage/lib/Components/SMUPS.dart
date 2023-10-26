import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loadingpage/Components/SDAbout.dart';
import 'package:loadingpage/Components/SDHistory.dart';
import 'package:loadingpage/Components/SDHome.dart';
import 'package:loadingpage/Components/SDScore.dart';
import 'package:loadingpage/Components/SDUP.dart';
import 'package:loadingpage/Components/SDValoracion.dart';
import 'package:loadingpage/Pages/login.dart';

class SMU_UserProfileSettings extends StatelessWidget {
  const SMU_UserProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => ZoomDrawer.of(context)!.close(),
              child: const Icon(
                Icons.arrow_back,
                color: Color(0xFFfafaf9),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: Colors.amber),
                alignment: AlignmentDirectional.center,
                child: Column(
                  children: [
                    Icon(
                      Icons.person_4_rounded,
                      size: 100,
                      color: Color(0xFFfafaf9),
                    ),
                    Text(
                      'Username',
                      style: TextStyle(
                          color: Color(0xFFfafaf9),
                          fontFamily: 'rdl2',
                          fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SDH_Home(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.leaderboard_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'LeaderBoard',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SDS_Score(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.scoreboard_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'ScoreBoard',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SDUP_UserProfile(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.person_4_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Perfil',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SDH_History(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.history_edu_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Historia',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SDA_About(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.device_hub_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Acerca de',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SDV_Valoracion(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.star_rate_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Valoración',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage(),
                      ),
                    );
                  },
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
