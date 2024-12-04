import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const MainPage());
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "List page",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 22,
            color: theme.onSurface,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(
            top: 50,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 35,
                right: 15,
              ),
              child: Text(
                "Profile",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: theme.onSurfaceVariant,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              horizontalTitleGap: 0,
              minTileHeight: height * 0.09,
              // minLeadingWidth: 0,
              leading: CircleAvatar(
                // minRadius: 15,
                // maxRadius: 45,
                radius: 56,
                backgroundImage: NetworkImage("https://randomuser.me/api/portraits/med/men/31.jpg"),
              ),
              title: Text(
                "User name",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  color: theme.onSurface,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Text(
                "example@email.com",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Roboto",
                  color: theme.onSurface,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        backgroundColor: theme.primary,
        color: theme.onPrimary,
        onRefresh: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Scrollbar(
            thickness: 3,
            radius: Radius.circular(21),
            thumbVisibility: true,
            child: ListView(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        "A",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: theme.primary,
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        children: <Widget>[
                          ListTile(
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            minTileHeight: height * 0.11,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1,
                                color: theme.outlineVariant,
                              ),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://picsum.photos/seed/picsum/200/300",
                                fit: BoxFit.cover,
                                height: height * 0.08,
                                width: width * 0.16,
                              ),
                            ),
                            title: Text(
                              "Arande Allée",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: theme.onSurface,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              "Indulge in the bold",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: theme.onSurfaceVariant,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          ListTile(
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            minTileHeight: height * 0.11,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1,
                                color: theme.outlineVariant,
                              ),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://picsum.photos/seed/picsum/200/300",
                                fit: BoxFit.cover,
                                height: height * 0.08,
                                width: width * 0.16,
                              ),
                            ),
                            title: Text(
                              "Arande Allée",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: theme.onSurface,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              "Indulge in the bold and hoppy goodness of our...",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: theme.onSurfaceVariant,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          ListTile(
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            minTileHeight: height * 0.11,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1,
                                color: theme.outlineVariant,
                              ),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://picsum.photos/seed/picsum/200/300",
                                fit: BoxFit.cover,
                                height: height * 0.08,
                                width: width * 0.16,
                              ),
                            ),
                            title: Text(
                              "Arande Allée",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: theme.onSurface,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              "Indulge in the bold",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: theme.onSurfaceVariant,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        "B",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: theme.primary,
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        children: <Widget>[
                          ListTile(
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            minTileHeight: height * 0.11,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1,
                                color: theme.outlineVariant,
                              ),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://picsum.photos/seed/picsum/200/300",
                                fit: BoxFit.cover,
                                height: height * 0.08,
                                width: width * 0.16,
                              ),
                            ),
                            title: Text(
                              "Brande Allée",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: theme.onSurface,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              "Indulge in the bold",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: theme.onSurfaceVariant,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          ListTile(
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            minTileHeight: height * 0.11,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1,
                                color: theme.outlineVariant,
                              ),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://picsum.photos/seed/picsum/200/300",
                                fit: BoxFit.cover,
                                height: height * 0.08,
                                width: width * 0.16,
                              ),
                            ),
                            title: Text(
                              "Brande Allée",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: theme.onSurface,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              "Indulge in the bold and hoppy goodness of our...",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: theme.onSurfaceVariant,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          ListTile(
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            minTileHeight: height * 0.11,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1,
                                color: theme.outlineVariant,
                              ),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://picsum.photos/seed/picsum/200/300",
                                fit: BoxFit.cover,
                                height: height * 0.08,
                                width: width * 0.16,
                              ),
                            ),
                            title: Text(
                              "Brande Allée",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: theme.onSurface,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              "Indulge in the bold",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: theme.onSurfaceVariant,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        "G",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: theme.primary,
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        children: <Widget>[
                          ListTile(
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            minTileHeight: height * 0.11,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1,
                                color: theme.outlineVariant,
                              ),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://picsum.photos/seed/picsum/200/300",
                                fit: BoxFit.cover,
                                height: height * 0.08,
                                width: width * 0.16,
                              ),
                            ),
                            title: Text(
                              "Grande Allée",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: theme.onSurface,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              "Indulge in the bold",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: theme.onSurfaceVariant,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          ListTile(
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            minTileHeight: height * 0.11,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1,
                                color: theme.outlineVariant,
                              ),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://picsum.photos/seed/picsum/200/300",
                                fit: BoxFit.cover,
                                height: height * 0.08,
                                width: width * 0.16,
                              ),
                            ),
                            title: Text(
                              "Grande Allée",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: theme.onSurface,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              "Indulge in the bold and hoppy goodness of our...",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: theme.onSurfaceVariant,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          ListTile(
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            minTileHeight: height * 0.11,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1,
                                color: theme.outlineVariant,
                              ),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://picsum.photos/seed/picsum/200/300",
                                fit: BoxFit.cover,
                                height: height * 0.08,
                                width: width * 0.16,
                              ),
                            ),
                            title: Text(
                              "Grande Allée",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: theme.onSurface,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              "Indulge in the bold",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: theme.onSurfaceVariant,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}