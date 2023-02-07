import 'package:get/get.dart';
import 'package:study_app_flutter/firebase_ref/references.dart';
import 'package:study_app_flutter/models/question_paper_model.dart';

import '../../services/firebase_storage_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = <String>[].obs;
  final allPapers = <QuestionPaperModel>[].obs;

  @override
  void onReady() {
    getAllPaper();
    super.onReady();
  }

  Future<void> getAllPaper() async {
    List<String> imgName = [
      "biology",
      "chemistry",
      "physics",
      "maths",
    ];
    try {
      QuerySnapshot<Map<String, dynamic>> data = await questionPaperRF.get();
      final paperList = data.docs
          .map((paper) => QuestionPaperModel.fromSnapshot(paper))
          .toList();
      allPapers.assignAll(paperList);

      for (var paper in paperList) {
        final imgUrl =
            await Get.find<FirebaseStorageService>().getImage(paper.title);
        paper.imageUrl = imgUrl;
      }
      allPapers.assignAll(paperList);
    } catch (e) {
      print(e);
    }
  }
}
