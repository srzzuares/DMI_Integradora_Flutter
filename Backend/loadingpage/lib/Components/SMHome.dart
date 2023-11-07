import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:loadingpage/Components/SDAbout.dart';
import 'package:loadingpage/Components/SDHistory.dart';
import 'package:loadingpage/Components/SDHome.dart';
import 'package:loadingpage/Components/SDHome1.dart';
import 'package:loadingpage/Components/SDScore.dart';
import 'package:loadingpage/Components/SDUP.dart';
import 'package:loadingpage/Components/SDValoracion.dart';
import 'package:loadingpage/Pages/login.dart';
import 'package:loadingpage/services/googleSignInApi.dart';

class SMHo_M extends StatelessWidget {
  final String userName;
  final String Photo;
  final String correo;

  SMHo_M(
      {super.key,
      required this.userName,
      required this.Photo,
      required this.correo});

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
              height: 10,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: Colors.amber),
                alignment: AlignmentDirectional.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SDUP_UserProfile(
                          userName: userName,
                          correo: correo,
                          Photo: Photo,
                        ),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(Photo),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            userName,
                            style: TextStyle(
                                color: Color(0xFFfafaf9),
                                fontFamily: 'rdl2',
                                fontSize: 14),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SDH_Home1(
                            name: userName, email: correo, photo: Photo),
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
                        builder: (BuildContext context) => SDS_Score(
                          userName: userName,
                          correo: correo,
                          Photo: Photo,
                        ),
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
                        builder: (BuildContext context) => SDUP_UserProfile(
                          userName: userName,
                          correo: correo,
                          Photo: Photo,
                        ),
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
                        builder: (BuildContext context) => SDH_History(
                          userName: userName,
                          correo: correo,
                          Photo: Photo,
                        ),
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
                        builder: (BuildContext context) => SDA_About(
                          userName: userName,
                          correo: correo,
                          Photo: Photo,
                        ),
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
                        builder: (BuildContext context) => SDV_Valoracion(
                          userName: userName,
                          correo: correo,
                          Photo: Photo,
                        ),
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
                  onTap: () async {
                    await GoogleSignInApi.logout();
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
