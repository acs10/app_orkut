import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'home_store.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.account_circle_rounded,
                          color: Colors.purple,
                        ),
                        Text("Perfil"),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.settings,
                          color: Colors.purple,
                        ),
                        Text("Configurações"),
                      ],
                    ),
                  ),
                ];
              },
              icon: const Icon(
                Icons.supervised_user_circle,
                size: 40,
              ),
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromARGB(255, 255, 64, 191),
                Colors.purple,
              ],
            ),
          ),
        ),
        leading: const Icon(
          Icons.circle_outlined,
          color: Colors.purple,
          size: 40,
        ),
        title: const Text(
          'Orkut',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar.badge(
        const {2: '99+'},
        items: const [
          TabItem(title: 'Add', icon: Icons.add),
          TabItem(title: 'Comunidade', icon: Icons.web),
          TabItem(title: 'Recados', icon: Icons.chat),
          TabItem(title: 'Amigos', icon: Icons.people),
        ],
        badgeColor: Colors.pinkAccent,
        backgroundColor: Colors.purple,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.purple,
            Color.fromARGB(255, 255, 64, 191),
          ],
        ),
      ),
      body: ScopedBuilder<HomeStore, Exception, int>(
        store: store,
        onState: (context, counter) => buildPageOnState(context, counter),
        onError: (context, error) => buildPageOnError(context, error),
        onLoading: (context) => buildPageOnLoading(context),
      ),
    );
  }

  Widget buildPageOnState(BuildContext context, int counter){
    return Center(child: Column(children: const [],),);
  }

  Widget buildPageOnError(BuildContext context, Exception? error){
    return Center(child: Column(children: const [],),);
  }

  Widget buildPageOnLoading(BuildContext context){
    return Center(child: Column(children: const [],),);
  }

}
