import 'package:flutter/material.dart';
import 'package:resumeflutter/utils/CustomContainer.dart';
import 'package:resumeflutter/utils/Title.dart';
import 'package:resumeflutter/utils/contants.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.70,
      width: size.width,
      color: defaultLighter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CustomTitle(
            center: true,
            text: 'Skills',
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            height: size.height * 0.20,
            child: ListView.builder(
              itemCount: tools.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: CustomContainer(
                    image: toolsImage[index],
                    text: tools[index],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: size.height * 0.20,
            child: ListView.builder(
              itemCount: language.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: CustomContainer(
                    image: langImage[index],
                    text: language[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
