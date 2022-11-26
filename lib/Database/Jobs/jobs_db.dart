import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:psut_portal/Constants/Database/database_constants.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class JobsSqlDb {
  static Database? _db;
  Future<Database?> get db async {
    _db ??= await initialDb();
    return _db;
  }

  initialDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, '${DatabaseConstants.databaseJobs}.db');
    Database db = await openDatabase(path,
        onCreate: _onCreate, onUpgrade: _onUpgrade, version: 1);
    return db;
  }

  _onCreate(Database db, int version) async {
    Batch batch = db.batch();

    batch.execute('''
CREATE TABLE "Jobs"(
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "jobTitle" TEXT NOT NULL,
  "jobResponsanbilities" TEXT NOT NULL,
  "jobRequierments" TEXT NOT NULL,
  "companyName" TEXT NOT NULL,
  "college" TEXT NOT NULL,
  "jobDeadline" TEXT NOT NULL,
  "jobIconImage" TEXT NOT NULL,
  "jobDescription" TEXT NOT NULL
)
''');
    await batch.commit();
    debugPrint("Jobs Datebase Tabel Has Been Created");
  }

  _onUpgrade(Database db, int oldVersion, int newVersion) {
    debugPrint("On Upgrade ==============================================");
  }

  Future<List<Map>> readData(String sql) async {
    Database? myDb = await db;
    List<Map> response = await myDb!.rawQuery(sql);
    return response;
  }

  Future<int> insertData(String sql) async {
    Database? myDb = await db;
    int response = await myDb!.rawInsert(sql);
    return response;
  }

  updateData(String sql) async {
    Database? myDb = await db;
    int response = await myDb!.rawUpdate(sql);
    return response;
  }

  deleteData(String sql) async {
    Database? myDb = await db;
    int response = await myDb!.rawDelete(sql);
    return response;
  }
}
