import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({Key? key, required this.project}) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          project.title,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  width: 540,height: 510,
                  color: Colors.amber.shade50,
                  child: Column(
                    children: [
                      const SizedBox(width: 50.0 ,height: 20.0),
                      Text(
                        project.title,
                        style:const TextStyle(fontSize: 20.0),
                      ),
                      const SizedBox(height: 14.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            project.imageUrl,
                          ),
                        ],
                      ),
                      const SizedBox(height: 14.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            project.description,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    width: 650,height: 500,
                  child: Column(
                    children: [
                      const SizedBox(height: 14.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            project.imagePP,
                          ),
                        ],
                      ),
                      const SizedBox(height: 14.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40, //height of button
                            width: 350, //width of button
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.favorite_border_outlined),
                                  Text(" ร่วมบริจาค")
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 14.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40, //height of button
                            width: 350, //width of button
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.add_shopping_cart_outlined),
                                  Text(" หยิบใส่ตะกร้า")
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("แชร์ให้เพื่อน"),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(FontAwesomeIcons.line),
                          SizedBox(width: 20.0),
                          Icon(FontAwesomeIcons.facebook),
                          SizedBox(width: 20.0),
                          Icon(FontAwesomeIcons.twitter),
                        ],
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
