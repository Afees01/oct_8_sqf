import 'package:sqflite/sqflite.dart';

class HomeScreenController {
  static late Database myDatabase;
  static Future intidb() async {
    // open the database
    myDatabase = await openDatabase("EmployeeData.db", version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, designation TEXT)');
    });
  }

  addEmployee() {}

  getAllEmployee() {}

  removeEmployee() {}

  updateEmployee() {}
}
