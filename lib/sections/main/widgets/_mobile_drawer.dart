part of '../main_section.dart';

class _MobileDrawer extends StatelessWidget {
  const _MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Drawer(
      child: Material(
        color: appProvider.isDark ? Colors.grey[900] : Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: NavBarLogo(),
              ),
              Divider(
                color: appProvider.isDark ? Colors.white : Colors.grey[900],
              ),
              ListTile(
                leading: Icon(
                  Icons.light_mode,
                  color: AppTheme.c!.primary!,
                ),
                title: Text(
                  "Dark Mode",
                  style: TextStyle(
                    color: appProvider.isDark ? Colors.white : Colors.grey[900],
                  ),
                ),
                trailing: Switch(
                  inactiveTrackColor: Colors.grey,
                  value: appProvider.isDark,
                  onChanged: (value) {
                    appProvider
                        .setTheme(value ? ThemeMode.dark : ThemeMode.light);
                  },
                  activeColor: AppTheme.c!.primary,
                ),
              ),
              Divider(
                color: appProvider.isDark ? Colors.white : Colors.grey[900],
              ),
              ...NavBarUtils.names.asMap().entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        hoverColor: AppTheme.c!.primary!.withAlpha(70),
                        onPressed: () {
                          Responsive.isTablet(context)
                              ? scrollProvider.scrollTablet(e.key)
                              : scrollProvider.scrollMobile(e.key);
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Icon(
                            NavBarUtils.icons[e.key],
                            color: AppTheme.c!.primary,
                          ),
                          title: Text(
                            e.value,
                            style: AppText.l1!.copyWith(
                              color: appProvider.isDark
                                  ? Colors.white
                                  : Colors.grey[900],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              const SizedBox(
                height: 48,
              ),
              SizedBox(
                width: 180,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    hoverColor: AppTheme.c!.primary!.withAlpha(150),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        side: BorderSide(color: AppTheme.c!.primary!)),
                    onPressed: () => openURL(StaticUtils.resume),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.book,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            'RESUME',
                            style: TextStyle(
                              color: appProvider.isDark
                                  ? Colors.white
                                  : Colors.grey[900],
                            ),
                          ),
                        ],
                        // titleAlignment: ListTileTitleAlignment.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
