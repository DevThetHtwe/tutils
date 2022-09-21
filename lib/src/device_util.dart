part of tutils;

mWid(BuildContext context) => MediaQuery.of(context).size.width;
mHig(BuildContext context) => MediaQuery.of(context).size.height;

nsColor(Color stBar, Color navBar) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: stBar,
      systemNavigationBarColor: navBar,
    ),
  );
}

push(BuildContext context, Widget page) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (c) => page));

showSnack(BuildContext context, Widget content) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: content));
}
