import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:intl/intl.dart';
import 'package:taejai/pages/project/project_details_page.dart';

class ProjectListPage extends StatefulWidget {
  const ProjectListPage({Key? key}) : super(key: key);

  @override
  State<ProjectListPage> createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  List<Project> projects = [
    Project(
      id: 1,
      title: 'อิ่มท้องน้องพิเศษ',
      description:
      'ชวนมอบมื้ออาหารกลางวันให้เด็กพิเศษ 240 คนในมูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ\n'
      'ที่ต้องเผชิญค่าใช้จ่ายด้านอาหารกลางวันหลักแสนต่อเดือน เงินจำนวน 3,500 บาท\n'
      'สามารถเลี้ยงอาหารทุกคนได้ 1 มื้อ\n'
'\n'
      'ระยะเวลาโครงการ 06 ก.พ. 2566 ถึง 06 มี.ค. 2566\n'
'\n'
      'พื้นที่ดำเนินโครงการ ระบุพื้นที่: ตำบลพลูตาหลวง อำเภอสัตหีบ จังหวัดชลบุรี (มูลนิธิบ้านครูบุญชู\n'
      'เพื่อเด็กพิเศษ)',
      targetAmount: 119350,
      duration: 22,
      receiveAmount: 10000,
      donateCount: 13,
      imageUrl: 'assets/images/project01.jpg',
      imagePP: 'assets/images/p1.jpg',
    ),
    Project(
      id: 2,
      title: 'I’m ABLE “โอกาสจากพี่ ช่วยหนูได้เรียนร่วม”',
      description:
      'ระดมทุนการศึกษา 1 ปีให้กับเด็กนักเรียนพิการจำนวน 150 คนๆ ละ 4,000 บาท ให้กับ\n'
      'เด็กนักเรียนพิการที่กำลังศึกษาอยู่ในระดับชั้นประถมศึกษาถึงมัธยมศึกษาในจังหวัด\n'
      'ต่างๆของภาคตะวันออกเฉียงเหนือภาคตะวันตกและภาคใต้ที่มีความพิการทางร่างกาย\n'
      'หรือพัฒนาการช้าแต่สามารถสื่อสารและเรียนหนังสือได้เพื่อส่งเสริมเด็กนักเรียนพิการ\n'
      'เหล่านั้นได้เรียนร่วมในโรงเรียนปกติกับนักเรียนทั่วไปเสริมสร้างพัฒนาการทางร่างกาย\n'
      'สติปัญญา ส่งเสริมการเรียนรู้การเข้าสังคมและช่วยเหลือตนเองในสถานการณ์ต่างๆโดย\n'
      'ไม่รู้สึกว่าตนเองเป็นภาระของครูและเพื่อนๆในโรงเรียน\n'
          '\n'
      'ระยะเวลาโครงการ 01 ก.พ. 2566 ถึง 30 มิ.ย. 256\n'
          '\n'
      'พื้นที่ดำเนินโครงการ ระบุพื้นที่: ภาคตะวันออกเฉียงเหนือ ภาคตะวันตกและภาคใต้ของประเทศไทย',
      targetAmount: 825000,
      duration: 138,
      receiveAmount: 400000,
      donateCount: 8,
      imageUrl: 'assets/images/project02.jpg',
      imagePP: 'assets/images/p2.jpg',
    ),
    Project(
      id: 3,
      title: 'พาพญาแร้งที่สูญพันธุ์จากธรรมชาติกลับคืนป่าเมืองไทย',
      description:
      'เกือบ 30 ปี ที่พญาแร้งหายไปจากป่าเมืองไทย ในวันนี้พวกเราพยายามวางแผนเพาะพันธุ์\n'
      'พญาแร้งที่เหลืออยู่ในกรงเลี้ยงจำนวน 6 ตัว เพื่อหวังว่าสักวันในผืนป่าประเทศไทยจะมี\n'
      'พญาแร้งโผบินอีกครั้งแต่โจทย์นี้ไม่ง่าย เพราะการจะทำให้สัตว์ที่สูญพันธุ์จากธรรมชาติ\n'
      'กลับคืนมา ยากกว่าการทำให้มันหายไป\n'
          '\n'
      'ระยะเวลาโครงการ 01 ก.พ. 2566 ถึง 31 ม.ค. 2567\n'
          '\n'
      'พื้นที่ดำเนินโครงการ ระบุพื้นที่: ตำบลลานสัก อำเภอลานสัก จังหวัดอุทัยธานี(เขตรักษาพันธุ์สัตว์\n'
      'ป่าห้วยขาแข้งและพื้นที่โดยรอบ)ตำบลไชยมงคล อำเภอเมืองนครราชสีมา จังหวัด\n'
      'นครราชสีมา (สวนสัตว์นครราชสีมา)',
      targetAmount: 299200,
      duration: 322,
      receiveAmount: 200000,
      donateCount: 28,
      imageUrl: 'assets/images/project03.jpg',
      imagePP: 'assets/images/p3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('เทใจ')),
      body: ListView.builder(
        itemCount: projects.length,
        // Callback function
        itemBuilder: (BuildContext context, int index) {
          var project = projects[index];

          var descriptionStyle = const TextStyle(
            fontSize: 12.0,
            color: Colors.black54,
          );
          var amountStyle = const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          );

          var formatter = NumberFormat('#,###,000');
          var target = formatter.format(project.targetAmount);
          var percentText =
          ((project.receiveAmount / project.targetAmount) * 100)
              .toStringAsFixed(0);
          var percent = int.tryParse(percentText);

          return Card(
            child: InkWell(
              onTap: () {
                _handleClickProjectItem(projects[index]);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          project.imageUrl,
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                        /*Container(
                          width: 60.0,
                          height: 60.0,
                          color: Colors.pink,
                        ),*/
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(project.title),
                              const SizedBox(height: 8.0),
                              Text(project.description, style: descriptionStyle),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('เป้าหมาย', style: descriptionStyle),
                            Text('$target บาท', style: amountStyle),
                          ],
                        ),
                        Text('$percentText%', style: descriptionStyle),
                      ],
                    ),
                    Row(

                      children: [
                        Expanded(
                          flex: percent!,
                          child: Container(
                            height: 10.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 0.0),
                            color: Colors.orange,
                          ),
                        ),
                        Expanded(
                          flex: 100 - percent,
                          child: Container(
                            height: 10.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 0.0),
                            color: const Color(0xFFE8E8E8), //Colors.grey[200],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('${project.duration} วัน', style: descriptionStyle),
                        Row(
                          children: [
                            const Icon(Icons.person, size: 14.0),
                            Text('${project.donateCount}',
                                style: descriptionStyle),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleClickProjectItem(Project p) {
    print(p.targetAmount.toString());

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProjectDetailsPage(project: p)),
    );
  }
}