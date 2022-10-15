import 'package:app_test/helper/global_variable.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'bottom_navigation_viewmodel.dart';

class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({Key? key}) : super(key: key);
  final BottomNavigationViewModel bottomNavigationViewModel =
      Get.put(BottomNavigationViewModel());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => bottomNavigationViewModel
              .selectView(GlobalVariable.selectedIndex.value),
        ),
        bottomNavigationBar: bottomNavigation(),
      ),
    );
  }

  Widget floatingBtn() {
    return FloatingActionButton(
      backgroundColor: Color(0xffF5F7FF),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
      onPressed: () {},
      child: const Icon(
        Icons.add,
        color: Color(0xff3D5CFF),
      ),
    );
  }

  Widget bottomNavigation() {
    return BottomAppBar(
      elevation: 1,
      notchMargin: 2,
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        height: 80,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            child: BottomNavigationBar(
                showUnselectedLabels: true,
                items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    backgroundColor: Color(0xff2E2739),
                    icon: Icon(
                      Icons.dashboard,color: Color(0xff827D88),
                    ),
                    label: 'Dashboard'),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xff2E2739),
                  icon: FaIcon(FontAwesomeIcons.youtube,color: Color(0xff827D88)),
                  label: 'ddd',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xff2E2739),
                  icon: FaIcon(FontAwesomeIcons.folder,color: Color(0xff827D88)),
                  label: 'Media Library',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xff2E2739),
                  icon: Icon(Icons.list,color: Color(0xff827D88)),
                  label: 'Media Library',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
