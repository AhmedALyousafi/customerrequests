import 'package:customerrequests/adaptivelayout.dart';
import 'package:flutter/material.dart';

class BarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      desktopLayout: AppBar(
        backgroundColor: const Color(0xff094F90),
        foregroundColor: Colors.white,
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
          Text('احمد جميل'),
          SizedBox(
            width: 6,
          ),
          CircleAvatar(
            child: Icon(Icons.person),
          ),
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: const Icon(Icons.mail), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          Spacer(),
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.message))),
        ],
      ),
      tabletLayout: AppBar(
        backgroundColor: const Color(0xff094F90),
        foregroundColor: Colors.white,
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
          Text('احمد جميل'),
          SizedBox(
            width: 6,
          ),
          CircleAvatar(
            child: Icon(Icons.person),
          ),
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: const Icon(Icons.mail), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          Spacer(),
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.message))),
        ],
      ),
      mobileLayout: AppBar(
        backgroundColor: const Color(0xff094F90),
        foregroundColor: Colors.white,
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
          Text('احمد جميل'),
          SizedBox(
            width: 6,
          ),
          CircleAvatar(
            child: Icon(Icons.person),
          ),
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: const Icon(Icons.mail), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          Spacer(),
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.message))),
        ],
      ),
    );
  }
}
