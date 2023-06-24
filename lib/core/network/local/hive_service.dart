import 'package:chitto_tatto/config/constants/hive_table_constants.dart';
import 'package:chitto_tatto/features/auth/data/model/user_hive_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

final hiveServiceProvider = Provider(
  (ref) => HiveServices(),
);

class HiveServices {
  Future<void> init() async {
    var directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);

    Hive.registerAdapter(UserHiveModelAdapter());
    // Hive.registerAdapter(BatchHiveModelAdapter());
    // Hive.registerAdapter(CourseHiveModelAdapter());

    // await addDummyBatch();
    // await addDummyCourse();
  }

// //batches
//   Future<void> addBatch(BatchHiveModel batch) async {
//     var box = await Hive.openBox<BatchHiveModel>(HiveTableConstant.batchBox);
//     await box.put(batch.batchId, batch);
//     box.close();
//   }

//   Future<List<BatchHiveModel>> getAllBatches() async {
//     var box = await Hive.openBox<BatchHiveModel>(HiveTableConstant.batchBox);
//     var batches = box.values.toList();
//     // box.close();
//     return batches;
//   }

// //courses
//   Future<void> addCourse(CourseHiveModel course) async {
//     var box = await Hive.openBox<CourseHiveModel>(HiveTableConstant.courseBox);
//     await box.put(course.courseId, course);
//     box.close();
//   }

//   Future<List<CourseHiveModel>> getAllCourses() async {
//     var box = await Hive.openBox<CourseHiveModel>(HiveTableConstant.courseBox);
//     var courses = box.values.toList();
//     box.close();
//     return courses;
//   }

  //student
  Future<void> addUser(UserHiveModel user) async {
    var box = await Hive.openBox<UserHiveModel>(HiveTableConstant.userBox);
    await box.put(user.userId, user);
    box.close();
  }

  Future<List<UserHiveModel>> getAllUsers() async {
    var box = await Hive.openBox<UserHiveModel>(HiveTableConstant.userBox);
    var users = box.values.toList();
    box.close();
    return users;
  }

  //Login
  Future<UserHiveModel?> login(String email, String password) async {
    var box = await Hive.openBox<UserHiveModel>(HiveTableConstant.userBox);
    var user = box.values.firstWhere(
        (element) => element.email == email && element.password == password);
    box.close();
    return user;
  }

// //batch dummy data
//   Future<void> addDummyBatch() async {
//     var box = await Hive.openBox<BatchHiveModel>(HiveTableConstant.batchBox);
//     if (box.isEmpty) {
//       final batch1 = BatchHiveModel(batchName: '29-A');
//       final batch2 = BatchHiveModel(batchName: '29-B');
//       final batch3 = BatchHiveModel(batchName: '30-A');
//       final batch4 = BatchHiveModel(batchName: '30-B');

//       List<BatchHiveModel> batches = [batch1, batch2, batch3, batch4];

//       for (var batch in batches) {
//         await box.put(batch.batchId, batch);
//       }
//     }
//   }

//   //course dummy data
//   Future<void> addDummyCourse() async {
//     var box = await Hive.openBox<CourseHiveModel>(HiveTableConstant.courseBox);
//     if (box.isEmpty) {
//       final course1 = CourseHiveModel(courseName: 'Flutter');
//       final course2 = CourseHiveModel(courseName: 'Dart');
//       final course3 = CourseHiveModel(courseName: 'Computer Vision');
//       final course4 = CourseHiveModel(courseName: 'Design Thinking');
//       final course5 = CourseHiveModel(courseName: 'AWS');

//       List<CourseHiveModel> courses = [
//         course1,
//         course2,
//         course3,
//         course4,
//         course5
//       ];

//       for (var course in courses) {
//         await box.put(course.courseId, course);
//       }
//     }
//   }
}
