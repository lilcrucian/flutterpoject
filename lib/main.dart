import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/screen1',
        builder: (context, state) => Screen1(),
      ),
      GoRoute(
        path: '/screen2',
        builder: (context, state) => Screen2(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("HomePage"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.go("/screen1"),
                  child: Text("Screen 1", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, double.infinity),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.go("/screen2"),
                  child: Text("Screen 2", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, double.infinity),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen3()),
                  ),
                  child: Text("Screen 3", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, double.infinity),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen4()),
                  ),
                  child: Text("Screen 4", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, double.infinity),
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
