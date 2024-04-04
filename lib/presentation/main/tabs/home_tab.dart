import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _menuSection(),
        _promotionSection(),
        _noticeSection(),
      ],
    );
  }
}

Widget _menuSection() {
  return Text('menu');
}

Widget _promotionSection() {
  return Text('menu');
}

Widget _noticeSection() {
  return Text('menu');
}
