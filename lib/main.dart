import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:simple_theme_mode/theme_mode/theme_manage.dart';

import 'Model/task_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var systemTheme = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: systemTheme,
      theme: lightMode,
      darkTheme: darkMode,
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text("Personal Note",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          actions: [
            Icon(Icons.grid_view),
            IconButton(onPressed: () {
              setState(() {
                systemTheme=systemTheme==ThemeMode.light?ThemeMode.dark:ThemeMode.light;
              });
            }, icon: Icon(Icons.light_mode,),
            )
          ],
        ),
        body:Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: MasonryGridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            mainAxisSpacing: 7,
            crossAxisSpacing: 7,
            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              var listItem=listTaskItem[index];
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Theme.of(context).canvasColor),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${listItem.title}",style:Theme.of(context).textTheme.titleLarge),
                      SizedBox(height: 3,),
                      Text("${listItem.description}",style: Theme.of(context).textTheme.titleSmall,),
                    ],
                  ),
                ),
              );
            },
            itemCount: listTaskItem.length,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
          },child: Icon(Icons.add,color: Colors.white,),),
      ),
    );
  }
}
