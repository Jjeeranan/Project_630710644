import 'package:flutter/material.dart';
import 'package:project_630710644/models/project.dart';
import 'package:project_630710644/pages/project/details_page.dart';

class ProjectListPage extends StatefulWidget {
  const ProjectListPage({Key? key}) : super(key: key);

  @override
  State<ProjectListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ProjectListPage> {
  List<Project> projects = [
    Project(
      title: 'กระจกวิเศษใครงามเลิศในปฐพี',
      description:
      'กระจกขนาด 80*80 รูปทรงอ้างอิงมาจากการ์ตูนเรื่องสโนว์ไวท์ สั่งตัดพิเศษส่งตรงมาจากประเทศอเมริการับประกันกรอบทำมาจากทองแท้ 99.99% น้ำหนัก 25 กิโลกรัม เหมาะสำหรับท่านที่ต้องการจะแต่งบ้านให้ดูหรูหรา เพิ่มมูลค่าให้กับกระจกที่ดูเหมือนจะธรรมดาแต่ก็ไม่ธรรมดา',
      duration: 30,
      receiveAmount: 15500,
      add: 1000,
      imageUrl: 'assets/images/กระจกวิเศษ.jpg',
      time: 'ระยะเวลาการประมูล: 01 ม.ค. 2566 ถึง 30 ม.ค. 2566',
    ),
    Project(
      title: 'ดาบทองคำ',
      description: 'ดาบทองคำแท้ ใช้ทองคำบริสุทธิ์ในการหล่อขึ้นมา มรดกตกทอดจากตระกูล มีอายุกว่า 1500 ปี',
      duration: 15,
      receiveAmount: 150000,
      add: 30000,
      imageUrl: 'assets/images/ดาบ.jpg',
      time: 'ระยะเวลาการประมูล: 01 ม.ค. 2566 ถึง 15 ม.ค. 2566',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ประมูล PRAMOON')),
      backgroundColor:const Color(0xFFF8C471),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) {
          var project = projects[index];
          var descriptionStyle = const TextStyle(
            fontSize: 15.0,
            color: Colors.black38,
          );
          return Card(
              child: InkWell(
              onTap: () {
            _handleClick(projects[index]);
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
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(project.title),
                            const SizedBox(height: 20.0),
                            Text(project.description, style: descriptionStyle),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ระยะเวลาการประมูล', style: descriptionStyle),
                        ],
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
                          Text('เคาะละ ',
                              style: descriptionStyle
                          ),
                          Text('${project.add} บาท',
                              style: descriptionStyle
                          ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child:const Icon(Icons.headset_mic_sharp),
      ),


    );
  }
  void _handleClick(Project p) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailsPage(project: p)),
    );
  }
}

