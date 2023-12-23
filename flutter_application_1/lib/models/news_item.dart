//import 'package:flutter/cupertino.dart';

class NewsItem {
  final int id;
  final String title;
  final String imgUrl;
  final String category;

  NewsItem({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.category,
  });
}

List<NewsItem> news = [
  NewsItem(
      id: 1,
      title:
          'TEDx is a global movement devoted to bringing Ideas Worth Spreading to communities around the globe',
      imgUrl:
          'https://th.bing.com/th/id/OIP.nmo5iGHuGafNHExmUoqDNwHaEK?w=300&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      category: 'TEDX'),
  NewsItem(
      id: 1,
      title:
          'Enactus is the worlds largest experiential learning platform dedicated to creating a better world',
      imgUrl:
          'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/42888276_1012732002243467_8186657899007705088_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=300f58&_nc_eui2=AeFP6s-p9ZQ26sBKiQ0-lcASILwi6rSpHt8gvCLqtKke384LwMEe2mH9xoJhfHWOomtmLEWRgW2Medi7HkP0NLOc&_nc_ohc=J2Va-VTdAmsAX9e-N7H&_nc_ht=scontent.fcai1-2.fna&oh=00_AfDlz9XYtyQHnWhL5nNdEKC8uaN8imBE6aa_gXpgNDjzTw&oe=65A6AB3A',
      category: 'Enactus'),
  NewsItem(
      id: 1,
      title: 'Amazing business to Steal the show',
      imgUrl:
          'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/333030504_518908236990378_3098292104127359883_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=783fdb&_nc_eui2=AeFnzfljVEMLlDNJEbmvtg8dSIISZM1MFy1IghJkzUwXLVAuzh71L6seOagvY60U8H2FgFuBaqhSXVwtHnw0FJi-&_nc_ohc=XROwa0H0d-MAX8j3uUT&_nc_ht=scontent.fcai1-2.fna&oh=00_AfC9qIrL5-A5qsAoPU9fyYITTvU42fvPfdTUzE2_IfWW6w&oe=65852010',
      category: 'ABS'),
  NewsItem(
      id: 1,
      title:
          'Stock Market Simulation (SMS_AU) is a simple simulation of the stock markets held by Assiut university',
      imgUrl:
          'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/342368809_130233890039251_8699168662586063355_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=783fdb&_nc_eui2=AeGLT7UDPaEhXnDnrnP31jGXmlQpmTIfyZiaVCmZMh_JmAJu0OORtSpbda6hLSji1awhve8kOfI0dWwE9Arl5NAz&_nc_ohc=77SX4fZWMQUAX-RiVVu&_nc_ht=scontent.fcai1-2.fna&oh=00_AfDiw57FPEA9op2lIRZmgoKFUWsouU3Vb2jMXVxSKxBW2A&oe=65846804',
      category: 'SMS AU'),
];
