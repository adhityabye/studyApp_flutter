import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:study_app_flutter/firebase_ref/references.dart';

import '../../models/question_paper_model.dart';

class DataUploader extends GetxController {
  @override
  void onReady() {
    uploadData();
    super.onReady();
  }

  Future<void> uploadData() async {
    final fireStore = FirebaseFirestore.instance;
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString("AssetManifest.json");
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    final papersInAssets = manifestMap.keys
        .where((path) =>
            path.startsWith("assets/DB/paper") &&
            path.contains(".json")) //used to traversing
        .toList();

    List<QuestionPaperModel> questionPapers = [];
    //print out the content for each of the json file
    for (var paper in papersInAssets) {
      String stringPaperContent = await rootBundle.loadString(paper);
      questionPapers
          .add(QuestionPaperModel.fromJson(json.decode(stringPaperContent)));
    }
    //print('items number ${questionPapers[0].description}}');
    var batch = fireStore.batch();

    for (var paper in questionPapers) {
      batch.set(questionPaperRF.doc(paper.id), {
        "title": paper.title,
        "image_url": paper.imageUrl,
        "description": paper.description,
        "time_seconds": paper.timeSeconds,
        "questions_count":
            paper.questions == null ? 0 : paper.questions!.length,
      });
    }
    await batch.commit();
  }
}
