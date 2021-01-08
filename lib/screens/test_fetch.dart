// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:mookfood/models/user_fetch.dart';

// class TestFetch extends StatefulWidget {
//   @override
//   _TestFetchState createState() => _TestFetchState();
// }

// class _TestFetchState extends State<TestFetch> {
//   UserFetch userFetch;

//   @override
//   void initState() {
//     fetchUserFromApi();
//     super.initState();
//   }

//   Future<void> fetchUserFromApi() async {
//     final response = await http.get("https://randomuser.me/api/?results=10");

//     if (response.statusCode == 200) {
//       Map map = jsonDecode(response.body);
//       setState(() {
//         userFetch = UserFetch.fromJson(map);
//       });
//       print(userFetch);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Fetch User"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(8),
//         child: ListView(
//           shrinkWrap: true,
//           children: [
//             userFetch != null
//                 ? ListView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: userFetch.results.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       return ListTile(
//                         title: Text(userFetch.results[index].name.first),
//                       );
//                     },
//                   )
//                 : Center(
//                     child: CircularProgressIndicator(
//                       backgroundColor: Colors.greenAccent,
//                     ),
//                   )
//           ],
//         ),
//       ),
//     );
//   }
// }
