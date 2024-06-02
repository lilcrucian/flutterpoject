import 'package:flutter/material.dart';
import 'package:flutterpoject/main.dart';
import 'package:go_router/go_router.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 1')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'This is Screen 1',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.go("/"),
                  child: Text('HomePage', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, double.infinity),
                  ),
                ),

              ),
              SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.go("/screen2"),
                  child: Text('Screen 2', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
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

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'This is Screen 2',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

              ),
              SizedBox(height: 20),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.go("/"),
                  child: Text('HomePage', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, double.infinity),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.go("/screen1"),
                  child: Text('Screen 1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
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

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 3')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'This is Screen 3',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              Expanded(
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Return", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, double.infinity),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.go("/screen1"),
                  child: Text('Screen 1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, double.infinity),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.go("/screen2"),
                  child: Text('Screen 2', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
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

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 4')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'This is Screen 4',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Return", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, double.infinity),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.go("/screen1"),
                  child: Text('Screen 1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, double.infinity),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.go("/screen2"),
                  child: Text('Screen 2', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
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
                  child: Text("Screen 3",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
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
