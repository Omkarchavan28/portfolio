import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/social_icons_icons.dart';
import 'package:portfolio_app/widgets/navList.dart';
import 'package:portfolio_app/widgets/nav_head.dart';
import 'package:portfolio_app/widgets/responsive_widget.dart';

class ProjectPage extends StatelessWidget {
  List<Widget> projectCardList = [
    ProjectCard(
        title: 'La Casa De Papel Wiki Application',
        description:
            'La Casa de Papel(Money Heist) Wiki. All Season Episode Infomartion with Cast Details',
        image: 'icon.jpg'),
    ProjectCard(
        title: 'La Casa De Papel Wiki Application',
        description:
            'La Casa de Papel(Money Heist) Wiki. All Season Episode Infomartion with Cast Details',
        image: 'icon.jpg'),
    ProjectCard(
        title: 'La Casa De Papel Wiki Application',
        description:
            'La Casa de Papel(Money Heist) Wiki. All Season Episode Infomartion with Cast Details',
        image: 'icon.jpg'),
    ProjectCard(
        title: 'La Casa De Papel Wiki Application',
        description:
            'La Casa de Papel(Money Heist) Wiki. All Season Episode Infomartion with Cast Details',
        image: 'icon.jpg'),
    ProjectCard(
        title: 'La Casa De Papel Wiki Application',
        description:
            'La Casa de Papel(Money Heist) Wiki. All Season Episode Infomartion with Cast Details',
        image: 'icon.jpg'),
    ProjectCard(
        title: 'La Casa De Papel Wiki Application',
        description:
            'La Casa de Papel(Money Heist) Wiki. All Season Episode Infomartion with Cast Details',
        image: 'icon.jpg'),
    ProjectCard(
        title: 'La Casa De Papel Wiki Application',
        description:
            'La Casa de Papel(Money Heist) Wiki. All Season Episode Infomartion with Cast Details',
        image: 'icon.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              centerTitle: true,
              title: Text('Projects', style: TextStyle(color: Colors.white)),
              elevation: 0.0,
              backgroundColor: Colors.black,
            )
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
                Container(
                  // color: Colors.red,
                  child: GridView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        crossAxisCount: ResponsiveWidget.isSmallScreen(context)
                            ? 1
                            : ResponsiveWidget.isMediumScreen(context) ? 2 : 3),
                    children: <Widget>[...projectCardList],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key key,
    this.title,
    this.description,
    this.image,
  }) : super(key: key);
  final title;
  final description;
  final image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: ResponsiveWidget.isSmallScreen(context) ? 3 : 2,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,

                      fontSize: ResponsiveWidget.isSmallScreen(context)
                          ? 12
                          : ResponsiveWidget.isMediumScreen(context)
                              ? 20
                              : 25, //25
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  child: Text(
                    description,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: ResponsiveWidget.isSmallScreen(context)
                          ? 15
                          : ResponsiveWidget.isMediumScreen(context) ? 12 : 15,
                    ),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: <Widget>[
                //     IconButton(
                //       onPressed: () {},
                //       icon: new Icon(
                //         SocialIcons.github_circled_alt2,
                //         size: 30,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
