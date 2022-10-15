import 'package:app_test/screens/watch/watch_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WatchView extends StatelessWidget {
  WatchViewModel watchViewModel = Get.put(WatchViewModel());

  WatchView({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(100, 100),
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Row(
                children: [
                  Text(
                    'Watch',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: 'Poppins'),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search_rounded,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
          body: ListView.separated(
            shrinkWrap: true,
            itemCount: watchViewModel.moviesList.length,
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: 100,
                child: Divider(
                  thickness: 0.3,
                  color: Color(0xffB8B8D2),
                ),
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return chatLayout(index);
            },
          )),
    );
  }

  Widget chatLayout(int item) {
    return Container(
      height: Get.height * 0.3,
      margin: const EdgeInsets.only(
        left: 10,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0)),
        image: DecorationImage(
            image: NetworkImage(
              'http://image.tmdb.org/t/p/w500' +
                  watchViewModel.moviesList[item]['poster_path'],
            ),
            fit: BoxFit.cover),
      ),
      padding: const EdgeInsets.only(right: 10, top: 10, bottom: 5),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(),
            child: Text("Title"),
          )
        ],
      ),
    );
  }
}
