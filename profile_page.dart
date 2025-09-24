import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safia_mobile/common/extensions/sizedbox_extensions.dart';
import 'package:safia_mobile/common/extensions/text_extensions.dart';
import 'package:safia_mobile/common/widget/common_button.dart';
import 'package:safia_mobile/presentation/app/widgets/base_box.dart';

import 'common/gen/assets.gen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        children: [
          BaseBox(
              child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: "S".s(12),
                  ),
                  12.kw,
                  Expanded(
                    child: Column(
                      children: [
                        "Little Safia ".s(14),
                        12.kh,
                        "Good brand with sweet thing here \n ou should try"
                            .s(12)
                      ],
                    ),
                  )
                ],
              ),
              12.kh,
              "Bio".s(14),
              CommonButton.elevated(text: "Submit")
            ],
          ))
        ],
      ),
    );
  }
}

class ProductListItem extends StatefulWidget {
  const ProductListItem({super.key});

  @override
  State<ProductListItem> createState() => _ProductListItemState();
}

class _ProductListItemState extends State<ProductListItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return BaseBox(
          child: Row(
            children: [
              Image.network(
                "https://i.ytimg.com/vi/sDS4c1C-Fdg/maxresdefault.jpg",
                width: 100,
                height: 100,
              ),
              12.kw,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: ["title".s(12), 12.kh, "desc".w(400).s(14)],
              ))
            ],
          ),
        );
      }),
    );
  }
}
