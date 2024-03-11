import 'package:flutter/material.dart';
import 'package:to_do_list/ui/list_tap/ListTap.dart';
import 'package:to_do_list/ui/settings_tap/SettingsTap.dart';

class HomeScreen extends StatefulWidget {
  static String routName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: Color(0xffDFECDB)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton: FloatingActionButton(
            shape: const StadiumBorder(
                side: BorderSide(color: Colors.white, width: 4)),
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                currentIndex: selectedItem,
                onTap: (value) {
                  setState(() {
                    selectedItem = value;
                  });
                },
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: ""),
                ]),
          ),
          body: taps[selectedItem],
        ),
      ),
    );
  }

  List<Widget> taps = [const SettingsTap(), const ListTap()];
}
