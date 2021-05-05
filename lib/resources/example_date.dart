import 'package:test_task/model/count_nis_data.dart';
import 'package:test_task/model/list_credit_card_data.dart';
import 'package:test_task/model/list_history_data.dart';
import 'package:test_task/model/video_datа.dart';
import 'package:test_task/resources/images_path.dart';
import 'package:test_task/util.dart';

var exampleVideoDate = VideoDate(
  description: "Description Lorem ipsum fufb haonr s djkdh jaunr",
  imagePath: kImagesPath.video,
  title: 'Loop name',
  time: parseTime("11:57"),
);

var exampleListHistoryData = ListHistoryData(
  List.generate(
    3,
    (index) => HistoryCardDate(
      title: "Mifgash Moshe",
      subtitle: '0NIS',
      date: DateTime.now(),
      listTime: List.generate(
        index + 1,
        (index) => parseTime('${8 + index}:00'),
      ),
    ),
  ),
);

var exampleCountNis = CountNis(200);

var exampleListCardData = ListCardData(
  [
    CreditCardData('assets/images/master_card_image.png', '12355465890'),
    CreditCardData('assets/images/master_card_image.png', '25647859525'),
    CreditCardData('assets/images/master_card_image.png', '56879921456'),
  ],
);
