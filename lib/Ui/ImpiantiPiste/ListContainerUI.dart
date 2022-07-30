import 'package:flutter/material.dart';
import 'package:sarnanoneve/Ui/Home/HomeUi.dart';

import 'package:sarnanoneve/Ui/ImpiantiPiste/ImpiantiUI.dart';
import 'package:sarnanoneve/Ui/ImpiantiPiste/PisteUi.dart';

import '../../icons/done.dart';
import '../GenericComponent.dart';

class ListContainer extends StatefulWidget {
  final int value;

  const ListContainer({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListContainer();
}

class _ListContainer extends State<ListContainer>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  int get thisPage => 1;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller.animateTo(widget.value);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: const [PisteUI(), ImpiantiUI()],
      ),
      appBar: AppBar(
          toolbarHeight: 20,
          bottom: PreferredSize(
            preferredSize: const Size(400, 30.0),
            child: Container(
              color: Colors.white,
              child: TabBar(
                indicatorColor: Colors.blueAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.indigo,
                controller: controller,
                tabs: const [
                  Tab(
                    text: "Piste",
                  ),
                  Tab(
                    text: "Impianti",
                  )
                ],
              ),
            ),
          )),
      bottomNavigationBar: getBottomBar(context,thisPage),
    );
  }


}
