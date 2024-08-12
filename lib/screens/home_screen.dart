import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:train/data/data_source/data_source.dart';
import 'package:train/widgets/custom_card.dart';

import '../widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var itemModel = DataSource.itemsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
        body: GridView.builder(
      itemCount: itemModel.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return CustomCard(itemsModel: itemModel[index]);
      },
    ),
    );
  }
}
