import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController desController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              _customBottomSheet(context);
            }),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text("Name"),
                  subtitle: Text("desigination"),
                ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: 10));
  }

  Future<dynamic> _customBottomSheet(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  enabled: true,
                  label: Text("name"),
                  hintText: "enter the name",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.yellow, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 2)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 2)),
                )),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                controller: desController,
                decoration: InputDecoration(
                  enabled: true,
                  label: Text("designation"),
                  hintText: "enter the designation",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.yellow, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 2)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 2)),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child:
                        ElevatedButton(onPressed: () {}, child: Text("save"))),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("cancel"))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
