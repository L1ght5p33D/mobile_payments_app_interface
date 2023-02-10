import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cash_app_interface/AppStateModel.dart';

// This is likely all your InheritedWidget will ever need.
class _InheritedStateContainer extends InheritedWidget {
  // InheritedWidgets are always just wrappers.
  // So there has to be a child,
  // Although Flutter just knows to build the Widget thats passed to it
  // So you don't have have a build method or anything.
  _InheritedStateContainer({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  // The data is whatever this widget is passing down.
  final AppStateContainerState data;

  // This is a better way to do this, which you'll see later.
  // But basically, Flutter automatically calls this method when any data
  // in this widget is changed.
  // You can use this method to make sure that flutter actually should
  // repaint the tree, or do nothing.
  // It helps with performance.
  @override
  bool updateShouldNotify(_InheritedStateContainer old) => true;
}

class AppStateContainer extends StatefulWidget {
  AppStateContainer(
      {Key? key,
        required this.child,
        required this.state,
});

  // Your apps state is managed by the container
  AppState state = AppState();


  // This widget is simply the root of the tree,
  // so it has to have a child!
  final Widget child;

  @override
  AppStateContainerState createState() => AppStateContainerState();

  // This creates a method on the AppState that's just like 'of'
  // On MediaQueries, Theme, etc
  // This is the secret to accessing your AppState all over your app
  static AppStateContainerState of(BuildContext context) {
    return (context
        .dependOnInheritedWidgetOfExactType<_InheritedStateContainer>()
    as _InheritedStateContainer)
        .data;
  }
// static AppStateContainerState? of(BuildContext context) {
//   return context.dependOnInheritedWidgetOfExactType<AppStateContainerState>();
// }
}

class AppStateContainerState extends State<AppStateContainer> {
  // Just padding the state through so we don't have to
  // manipulate it with widget.state.
  AppState state = AppState();

  void updateState() {
    setState(() {
      state;
    });
  }


  @override
  void initState() {
    // You'll almost certainly want to do some logic
    // in InitState of your AppStateContainer. In this example, we'll eventually
    // write the methods to check the local state
    // for existing users and all that.

    print("Init AppStateContainerState");
    // state = AppState();
    super.initState();
  }

  // So the WidgetTree is actually
  // AppStateContainer --> InheritedStateContainer --> The rest of your app.
  @override
  Widget build(BuildContext context) {
    print("AppStateContainerState build called");
    return _InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }
}