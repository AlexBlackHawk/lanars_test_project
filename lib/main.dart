import 'package:flutter/material.dart';

void main() {
  runApp(const LanarsTestApp());
}

class LanarsTestApp extends StatelessWidget {
  const LanarsTestApp({super.key});

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF0061A6),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFD2E4FF),
    onPrimaryContainer: Color(0xFF001C37),
    secondary: Color(0xFF535F70),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD7E3F8),
    onSecondaryContainer: Color(0xFF101C2B),
    tertiary: Color(0xFF6B5778),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFF3DAFF),
    onTertiaryContainer: Color(0xFF251431),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    outline: Color(0xFF73777F),
    surface: Color(0xFFFAF9FC),
    onSurface: Color(0xFF1A1C1E),
    surfaceContainerHighest: Color(0xFFDFE2EB),
    onSurfaceVariant: Color(0xFF43474E),
    inverseSurface: Color(0xFF2F3033),
    onInverseSurface: Color(0xFFF1F0F4),
    inversePrimary: Color(0xFFA0CAFF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF0061A6),
    outlineVariant: Color(0xFFC3C6CF),
    scrim: Color(0xFF000000),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lanars',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign in",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: theme.onSurface,
                fontSize: 32,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: height * 0.09,
            ),
            TextField(
              enabled: true,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                // errorText: "Email is incorrect",
                // errorText: displayError != null ? 'invalid email' : null,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2,
                    color: theme.surfaceTint,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2,
                    color: theme.error,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 1,
                    color: theme.outline,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 1,
                    // color: theme.,
                  ),
                ),
                labelStyle: TextStyle(
                  color: theme.onSurfaceVariant,
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
                errorStyle: TextStyle(
                  color: theme.error,
                  fontSize: 12,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
                hintStyle: TextStyle(
                  color: theme.onSurfaceVariant,
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.045,
            ),
            TextField(
              enabled: true,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                // errorText: "Password is incorrect",
                // errorText: displayError != null ? 'invalid email' : null,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2,
                    color: theme.surfaceTint,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2,
                    color: theme.error,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 1,
                    color: theme.outline,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 1,
                    // color: theme.,
                  ),
                ),
                labelStyle: TextStyle(
                  color: theme.onSurfaceVariant,
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
                errorStyle: TextStyle(
                  color: theme.error,
                  fontSize: 12,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
                hintStyle: TextStyle(
                  color: theme.onSurfaceVariant,
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.055,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Log in",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: theme.onPrimary,
                backgroundColor: theme.primary,
                fixedSize: Size(width, height * 0.05),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
      body: Padding(
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
    );
  }
}

