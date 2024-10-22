// // ignore_for_file: unnecessary_cast, avoid_print
//
// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';
//
// import '../models/key_value_model.dart';
//
// class IsarObjectService<T> {
//   //final IsarCollection<T> collection;
//   final CollectionSchema schima;
//   late Future<Isar> _db;
//
//   IsarObjectService(this.schima) {
//     _db = openDatabase();
//   }
//
//   Future<Isar> openDatabase() async {
//     if (Isar.instanceNames.isEmpty) {
//       final dir = await getApplicationDocumentsDirectory();
//       final isar = await Isar.open([KeyValueSchema], directory: dir.path);
//
//       //collection = isar.getCollectionByNameInternal(schima.name) as IsarCollection<T>;
//
//       return isar;
//     }
//
//     return Future.value(Isar.getInstance());
//   }
//
//   //create new record of object
//   Future<int> create(object) async {
//     final Isar isar = await _db;
//     print(isar);
//     try {
//       var x = await isar
//           .writeTxn(() async => await isar.collection<T>().put(object));
//       return x;
//     } catch (e) {
//       return 0;
//     }
//   }
//
//   //get the record of object by id
//   Future<T?> get(int id) async {
//     final Isar isar = await _db;
//     return await isar.collection<T>().get(id);
//   }
//
//   //get all records
//   Future<List<T>> getAll() async {
//     final Isar isar = await _db;
//     return await isar.collection<T>().where().findAll() as List<T>;
//   }
//
//   //update
//   Future<void> update(int id, T updatedObject) async {
//     final Isar isar = await _db;
//     await isar.writeTxn(() async {
//       final object = await isar.collection<T>().get(id);
//       if (object != null) {
//         await isar.collection<T>().put(updatedObject);
//       }
//     });
//   }
//
//   //delete
//   Future<void> delete(int id) async {
//     final Isar isar = await _db;
//     await isar.writeTxn(() async => await isar.collection<T>().delete(id));
//   }
//
//   //get by key
//   Future<String?> getValueByKey(String key) async {
//     final Isar isar = await _db;
//     final keyValue = await isar.keyValues.filter().keyEqualTo(key).findFirst();
//     return keyValue?.value;
//   }
// }
// /*
// class IsarKeyValue{
//
//   // Key-value specific methods
//   Future<void> saveKeyValue(String key, String value) async {
//     final Isar isar = await _db;
//     final keyValue = KeyValue()
//       ..key = key
//       ..value = value;
//     await isar.writeTxn(() async => await isar.keyValues.put(keyValue));
//   }
//
//   Future<String?> getValueByKey(String key) async {
//     final Isar isar = await _db;
//     final keyValue = await isar.keyValues.filter().keyEqualTo(key).findFirst();
//     return keyValue?.value;
//   }
//
//   Future<void> deleteByKey(String key) async {
//     final Isar isar = await _db;
//     final keyValue = await isar.keyValues.filter().keyEqualTo(key).findFirst();
//     if (keyValue != null) {
//       await isar.writeTxn(() async => await isar.keyValues.delete(keyValue.id));
//     }
//   }
// }*/
