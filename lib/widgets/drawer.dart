import 'package:catalog_app/utils/routes.dart';
import 'package:catalog_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const photoURL =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLeASuSCE7fb-i4EYnnc5gtWXA6lwtDyBf9g&s";

    return Drawer(
      backgroundColor: Theme.of(context).canvasColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor,
                    ),
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(photoURL),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aprim",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "_aprimr",
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                children: [
                  _drawerItem(
                    context: context,
                    icon: CupertinoIcons.home,
                    title: "Home",
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                  _drawerItem(
                    context: context,
                    icon: CupertinoIcons.cart,
                    title: "My Cart",
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, MyRoutes.cartRoute);
                    },
                  ),
                  _drawerItem(
                    context: context,
                    icon: CupertinoIcons.heart,
                    title: "Wishlist",
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                  _drawerItem(
                    context: context,
                    icon: CupertinoIcons.gear,
                    title: "Settings",
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                  _drawerItem(
                    context: context,
                    icon: CupertinoIcons.info,
                    title: "About",
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),

                  const Divider(height: 32),

                  _drawerItem(
                    context: context,
                    icon: Icons.logout,
                    title: "Logout",
                    isLogout: true,
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isLogout = false,
  }) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: isLogout ? Colors.redAccent : Theme.of(context).primaryColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: isLogout ? Colors.redAccent : Theme.of(context).primaryColor,
        ),
      ),
      trailing: Icon(
        CupertinoIcons.chevron_right,
        size: 16,
        color: AppTheme.grayColor,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
  }
}
