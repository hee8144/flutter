import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  static Future<Database> getDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'memo.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE TBL_MEMO (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            content TEXT NOT NULL,
            date TEXT
          )
        ''');
      },
    );
  }
//조회
  static Future<List<Map<String, dynamic>>> getData() async {
    final db = await getDatabase();
    return await db.query('TBL_MEMO'); // 'Test' 테이블의 모든 데이터를 조회
  }

  static Future<List<Map<String, dynamic>>> getBoard(int id) async {
    final db = await getDatabase();
    return await db.query('TBL_MEMO',where: 'id = ?', whereArgs: [id]); // 'Test' 테이블의 모든 데이터를 조회
  }
//추가
  static Future<void> insertData(String title, String content) async {
    print("name === > $title");
    final db = await getDatabase();
    await db.insert('TBL_MEMO', {'title': title, 'content': content, 'DATE': DateTime.now().toIso8601String()});
  }
//제거
  static Future<int> deleteData(int id) async {
    final db = await getDatabase();
    return await db.delete('TBL_MEMO', where: 'id = ?', whereArgs: [id]);
  }
  //수정
  static Future<int> updateBoard(String title, String content, int id) async {
    final db = await getDatabase();
    return await db.update('TBL_MEMO', {'title': title, 'content': content}, where: 'id = ?', whereArgs: [id]);
  }
// 함수 작성
// date 넣을 때 'DATE': DateTime.now().toIso8601String(), 이런식
// ex )
// await db.insert(
//   'TBL_MEMO',
//   {
//     'title': title,
//     'content': content,
//     'date': DateTime.now().toIso8601String(),
//   },
// );
// 2025-12-16

// 꺼내서 쓸때는
// DateTime date = DateTime.parse(map['DATE']);
// 이런식으로 변경
}
