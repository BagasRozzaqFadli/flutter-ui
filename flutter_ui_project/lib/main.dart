import 'package:flutter/material.dart';

//List file yang ingin dipanggil
import 'basic_widget/button.dart';

import '2_layout/column.dart';
import '2_layout/row.dart';
import '2_layout/listview.dart';
import '2_layout/gridview.dart';
import '2_layout/padding.dart';
import '2_layout/aspecratio.dart';
import '2_layout/center.dart';
import '2_layout/sizedbox.dart';
import '2_layout/wrap.dart';

import '3_form/textfield.dart';
import '3_form/dropdown.dart' as dropdown;
import '3_form/switch.dart' as switch_widget;
import '3_form/radio.dart' as radio_widget;
import '3_form/checkbox.dart' as checkbox_widget;
import '3_form/datapicker.dart' as datepicker_widget;
import '3_form/dialog.dart' as dialog_widget;
import '3_form/bottomsheet.dart' as BottomSheetWidget;
import '3_form/snackbar.dart' as SnackbarWidget;

import '4_navigator/navigator.dart';
import '4_navigator/bottomnavigationbar.dart';
import '4_navigator/tabBar.dart';
import '4_navigator/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Widget>> pages = [
      {'Button (Basic)': const ButtonWidget()},
      {'Column': const Kolom()},
      {'Row': const Baris()},
      {'ListView': ListViewWidget()},
      {'GridView': const GridViewWidget()},
      {'Padding': const PaddingWidget()},
      {'AspectRatio': const AspectRatioWidget()},
      {'Center': const CenterWidget()},
      {'SizedBox': const SizedBoxWidget()},
      {'Wrap': WrapWidget()},

      {'TextField': const MyTextField()},
      {'Dropdown': const dropdown.MyDropDown()},
      {'Switch': const switch_widget.MyDropDown()},
      {'Radio': const radio_widget.MyDropDown()},
      {'Checkbox': const checkbox_widget.MyDropDown()},
      {'DatePicker': const datepicker_widget.MyDropDown()},
      {'Dialog': const dialog_widget.MyDropDown()},
      {'BottomSheet': const BottomSheetWidget.MyDropDown()},
      {'Snackbar': const SnackbarWidget.MyDropDown()},

      {'Navigator': NavigatorWidget()},
      {'BottomNavBar': BottomNavBarWidget()},
      {'TabBar': TabBarWidget()},
      {'Drawer': DrawerWidget()},
      {'SliverAppBar': const SliverAppBar()},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter UI Demo')),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          final title = pages[index].keys.first;
          final widget = pages[index].values.first;
          return ListTile(
            title: Text(title),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => widget),
              );
            },
          );
        },
      ),
    );
  }
}