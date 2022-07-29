import 'package:flutter/material.dart';
import 'package:sarnanoneve/Ui/PisteUi.dart';

class ListContainer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ListContainer();
  }



class _ListContainer extends State<ListContainer> with SingleTickerProviderStateMixin{

  late TabController controller;

  @override
  void initState(){
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  TabBarView(
        controller: controller,
        children: const [
          PisteUI(),
          PisteUI()
          

        ],
      ),
      appBar: AppBar(
        bottom:  TabBar(
          controller: controller,
          tabs: const [
            Tab(text: 'Impianti',icon: Icon(Icons.downhill_skiing)),
            Tab(text: 'Piste',icon: Icon(Icons.wrap_text))
            
          ],

        ),
      ),

    );
  }

}