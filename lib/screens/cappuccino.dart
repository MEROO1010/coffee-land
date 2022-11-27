import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

void main() {
  runApp(cappuccino());
}

class cappuccino extends StatelessWidget {
  cappuccino({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MaterialApp(
          title: 'SideBar',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: primaryColor,
            canvasColor: canvasColor,
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            textTheme: const TextTheme(
              headlineSmall: TextStyle(
                color: Colors.white,
                fontSize: 46,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          home: Builder(
            builder: (context) {
              final isSmallScreen = MediaQuery.of(context).size.width < 600;
              return Scaffold(
                key: _key,
                appBar: isSmallScreen
                    ? AppBar(
                        backgroundColor: canvasColor,
                        title: Text('Cappuccino'),
                        leading: IconButton(
                          onPressed: () {
                            // if (!Platform.isAndroid && !Platform.isIOS) {
                            //   _controller.setExtended(true);
                            // }
                            _key.currentState?.openDrawer();
                          },
                          icon: const Icon(Icons.menu),
                        ),
                      )
                    : null,
                drawer: ExampleSidebarX(controller: _controller),

                //THE CONTENT OF THE PAGE
              );
            },
          ),
        ),
        Container(
          child: Text(
            'Find your favorite coffee',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Schyler',
                decoration: TextDecoration.none,
                color: Color.fromRGBO(112, 112, 112, 1),
                fontWeight: FontWeight.w900),
          ),
          padding: EdgeInsets.only(left: 80, top: 120),
        ),
        Row(
          children: [
            Container(
              child: TextButton(onPressed: () {}, child: Text('Cappuccino')),
              padding: EdgeInsets.only(left: 20, top: 190),
            ),
            Container(
              child: TextButton(onPressed: () {}, child: Text('Latte')),
              padding: EdgeInsets.only(left: 20, top: 190),
            ),
            Container(
              child: TextButton(onPressed: () {}, child: Text('Espresso')),
              padding: EdgeInsets.only(left: 20, top: 190),
            ),
            Container(
              child: TextButton(onPressed: () {}, child: Text('Mocha')),
              padding: EdgeInsets.only(left: 20, top: 190),
            )
          ],
        ),
      ],
    );
  }
}

class ExampleSidebarX extends StatelessWidget {
  const ExampleSidebarX({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: scaffoldBackgroundColor,
        textStyle: TextStyle(color: accentCanvasColor),
        selectedTextStyle: const TextStyle(color: accentCanvasColor),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [canvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: primaryColor,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: canvasColor,
        ),
      ),
      //footerDivider: divider,
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/images/coffee_land.png'),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.shopping_cart_outlined,
          label: 'My Orders',
          onTap: () {
            debugPrint('My Orders');
          },
        ),
        const SidebarXItem(
          icon: Icons.account_circle_outlined,
          label: 'My Profile',
        ),
        const SidebarXItem(
          icon: Icons.pin_drop_outlined,
          label: 'Delivery Address',
        ),
        const SidebarXItem(
          icon: Icons.payment,
          label: 'Payment Method',
        ),
        const SidebarXItem(
          icon: Icons.email,
          label: 'Contact Us',
        ),
        const SidebarXItem(
          icon: Icons.settings,
          label: 'Setting',
        ),
      ],
    );
  }
}

class _ScreensExample extends StatelessWidget {
  const _ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final pageTitle = _getTitleByIndex(controller.selectedIndex);
        switch (controller.selectedIndex) {
          case 0:
            return ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemBuilder: (context, index) => Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).canvasColor,
                  boxShadow: const [BoxShadow()],
                ),
              ),
            );
          default:
            return Text(
              pageTitle,
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Search';
    case 2:
      return 'People';
    case 3:
      return 'Favorites';
    case 4:
      return 'Custom iconWidget';
    case 5:
      return 'Profile';
    case 6:
      return 'Settings';
    default:
      return 'Not found page';
  }
}

const primaryColor = Color.fromRGBO(237, 229, 218, 1);
const canvasColor = Color.fromARGB(255, 255, 193, 106);
const scaffoldBackgroundColor = Color.fromRGBO(237, 229, 218, 1);
const accentCanvasColor = Color.fromRGBO(147, 75, 60, 1);
const white = Colors.white;
final actionColor = const Color.fromRGBO(147, 75, 60, 1);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
