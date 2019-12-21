import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_app/presentation/constants.dart';
import 'package:portfolio_app/presentation/social_icons_icons.dart';
import 'package:portfolio_app/widgets/navList.dart';
import 'package:portfolio_app/widgets/nav_head.dart';
import 'package:portfolio_app/widgets/responsive_widget.dart';
import 'package:portfolio_app/presentation/hover_effect.dart';
import 'dart:html' as html;

class ProjectPage extends StatelessWidget {
  List<Widget> projectCardList = [
    ProjectCard(
      title: 'La Casa De Papel Wiki Application',
      description:
          'La Casa de Papel(Money Heist) Wiki. All Season Episode Infomartion with Cast Details',
      image: 'icon.jpg',
      githubLink: 'https://github.com/meomkarchavan/lacasadepapel',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              title: appBar('Projects', false))
          : null,
      drawer: ResponsiveWidget.isSmallScreen(context)
          ? Drawer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: navButtons(context),
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: AnimatedPadding(
          duration: Duration(seconds: 1),
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
          child: ResponsiveWidget(
            largeScreen: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                NavHeader(navButtons: navButtons(context)),
                if (!ResponsiveWidget.isSmallScreen(context))
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Wrap(
                  children: <Widget>[
                    ...projectCardList,
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                copyRightText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    Key key,
    this.title,
    this.description,
    this.image,
    this.githubLink,
  }) : super(key: key);
  final title;
  final description;
  final image;
  final githubLink;
  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      constraints: BoxConstraints(
        maxHeight: 400,
        maxWidth: 400,
      ),
      color: Colors.amber,
      child: Card(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Image.asset(widget.image),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: Text(
                      widget.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,

                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? 20
                            : 25, //25
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: Text(
                      widget.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize:
                            ResponsiveWidget.isSmallScreen(context) ? 18 : 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: IconButton(
                    highlightColor: Colors.black,
                    hoverColor: Colors.white10,
                    padding: EdgeInsets.all(3),
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      // html.window
                      //     .open("https://github.com/meomkarchavan", "GitHub");
                    },
                  ).showCursorOnHover,
                ),
                Flexible(
                  flex: 2,
                  child: IconButton(
                    highlightColor: Colors.black,
                    hoverColor: Colors.white10,
                    padding: EdgeInsets.all(3),
                    icon: Icon(
                      SocialIcons.github_circled_alt2,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      html.window.open(widget.githubLink, "GitHub");
                    },
                  ).showCursorOnHover,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
