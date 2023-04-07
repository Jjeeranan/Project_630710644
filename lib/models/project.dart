class Project {
  final String title; // ชื่อสินค้าท
  final String description; // คำอธิบาย
  final int duration; // ระยะเวลา
  final int receiveAmount; // ยอดตอนนี้
  final int add; // เคาะครั้งละ
  final String imageUrl; //URL ของภาพ
  final String time; //ระยะเวลาแบบเป็นคำอธิบาย

  Project({
    required this.title,
    required this.description,
    required this.duration,
    required this.receiveAmount,
    required this.add,
    required this.imageUrl,
    required this.time,
  });
}
