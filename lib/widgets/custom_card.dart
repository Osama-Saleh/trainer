import 'package:flutter/material.dart';
import 'package:train/data/data_model/items_model.dart';
import 'package:train/widgets/custom_text.dart';

class CustomCard extends StatelessWidget {
  final ItemsModel? itemsModel;
  const CustomCard({
    super.key,
    this.itemsModel
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.white70, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('${itemsModel?.image}',
          width: double.infinity,
          height: 150,
          fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomText(text: 'name',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.5)
                  ),),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: CustomText(
                    text: '${itemsModel?.name}',
                  ),
                ),

                CustomText(
                    text: '${itemsModel?.price}\$',
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomText(text: 'discreption',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.5)
                  ),),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                child: CustomText(
                  text: '${itemsModel?.description}'*10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
