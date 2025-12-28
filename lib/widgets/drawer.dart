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
      backgroundColor: AppTheme.whiteColor,
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
                      color: Colors.white,
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
                        "Aprim Regmi",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.darkBlueishColor,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "aprimregmi24@gmail.com",
                        style: TextStyle(
                          fontSize: 13,
                          color: AppTheme.darkBlueishColor,
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
                    icon: CupertinoIcons.home,
                    title: "Home",
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                  _drawerItem(
                    icon: CupertinoIcons.cart,
                    title: "My Cart",
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                  _drawerItem(
                    icon: CupertinoIcons.heart,
                    title: "Wishlist",
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                  _drawerItem(
                    icon: CupertinoIcons.gear,
                    title: "Settings",
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                  _drawerItem(
                    icon: CupertinoIcons.info,
                    title: "About",
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),

                  const Divider(height: 32),

                  _drawerItem(
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
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isLogout = false,
  }) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: isLogout ? Colors.redAccent : AppTheme.darkBlueishColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: isLogout ? Colors.redAccent : Colors.black87,
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
