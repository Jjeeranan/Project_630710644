import 'package:flutter/material.dart';
import 'package:project_630710644/models/project.dart';
import 'package:intl/intl.dart';

class DetailsPage extends StatelessWidget {
  final Project project;

  const DetailsPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var formatter = NumberFormat('#,###,000');
    var recieve = formatter.format(project.receiveAmount);
    var join = 'ร่วมการประมูล';
    var moreDetails = 'รายละเอียดเพิ่มเติม';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          project.title,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Container(
        decoration:const BoxDecoration(
          color: Color(0xFFF8C471),
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    project.title,
                    style:const TextStyle(fontSize: 25.0,color: Colors.white70),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    project.imageUrl,
                    width: 250.0,
                    height: 250.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children:[
                      Expanded(
                        child: Center(
                          child: Container(
                            color:const Color(0xfffef9e7),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                project.description,
                                style:const TextStyle(fontSize: 14.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                            onPressed: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.more_horiz),
                                Text(moreDetails,style:const TextStyle(color: Colors.white),),
                                const Icon(Icons.more_horiz),
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          project.time,
                          style:const TextStyle(fontSize: 14,color: Colors.black38),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                   Column(
                    children: [
                      const SizedBox(height: 4.0),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('ยอดการประมูล ณ ปัจจุบัน', style: TextStyle(fontSize: 18.0, color: Colors.black),
                                ),
                                Text('$recieve บาท ⚡ ', style:const  TextStyle(fontSize: 20.0, color: Colors.red),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('ระยะเวลาในการประมูล ${project.duration} วัน',style:const TextStyle(fontSize: 12.0, color: Colors.black38),),
                            Row(
                              children: [
                                Text('เคาะครั้งละ ${project.add} บาท', style:const TextStyle(fontSize: 12.0, color: Colors.black38),),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                  onPressed: (){},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(join,style:const TextStyle(color: Colors.white),),
                                    ],
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
            Container(
              decoration:const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: Offset(0, 15),
                    )
                  ]
              ),
              child: Column(
                children: [
                  const Text('หากพบปัญหาหรือมีข้อสงสัย'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:const EdgeInsets.all(4.0),
                        child: TextButton (
                            onPressed: () {  },
                            child:const Icon(Icons.headset_mic_sharp),
                      ),
                      ),
                      Padding(
                        padding:const EdgeInsets.all(4.0),
                        child: TextButton (
                          onPressed: () {  },
                          child:const Icon(Icons.insert_comment),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

