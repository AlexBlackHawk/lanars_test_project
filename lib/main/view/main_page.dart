import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanars_test_project/main/bloc/main_bloc.dart';
import 'package:photos_repository/photos_repository.dart';

import '../../authentication/bloc/authentication_bloc.dart';

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

    return BlocProvider(
      create: (context) => MainBloc(photosRepository: context.read<PhotosRepository>())..add(const MainPhotosLoaded()),
      child: Scaffold(
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
        drawer: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
      return Drawer(
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
                  backgroundImage: NetworkImage(state.user!.image),
                ),
                title: Text(
                  state.user!.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    color: theme.onSurface,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                  state.user!.email,
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
        );
        },
      ),
        body: BlocBuilder<MainBloc, MainState>(
  builder: (context, state) {
    return RefreshIndicator(
          backgroundColor: theme.primary,
          color: theme.onPrimary,
          onRefresh: () {
            context.read<MainBloc>().add(const MainPhotosRefreshed());
            return Future<void>.delayed(const Duration(seconds: 3));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Scrollbar(
              thickness: 3,
              radius: Radius.circular(21),
              thumbVisibility: true,
              child: ListView.builder(
                itemCount: state.photos.length,
                itemBuilder: (context, index) {
                  return ListTile(
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
                        state.photos[index].url,
                        fit: BoxFit.cover,
                        height: height * 0.08,
                        width: width * 0.16,
                      ),
                    ),
                    title: Text(
                      state.photos[index].photographer,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        color: theme.onSurface,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      state.photos[index].alt,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: theme.onSurfaceVariant,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
    );
  },
),
          ),
        );
  }
}