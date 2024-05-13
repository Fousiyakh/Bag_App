import 'package:sqflite/sqflite.dart ' as sql;
class SQLStorage{
  static Future<sql.Database> openOrCreatedb() async {
    return await sql.openDatabase("notes", version: 1,
    onCreate: (database, version) async {
      await createTable(database);
    }
    );
}

  static Future<void>  createTable(sql.Database database)async {
    await database.execute('CREATE TABLE MyTable (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, title TEXT, content TEXT )');
  }
}