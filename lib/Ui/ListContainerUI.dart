import 'package:flutter/material.dart';
import 'package:sarnanoneve/Ui/ImpiantiUI.dart';
import 'package:sarnanoneve/Ui/PisteUi.dart';

class ListContainer extends StatefulWidget{
  final int value;

  const ListContainer({
    Key? key,
    required this.value,
}) :super(key: key);


  @override
  State<StatefulWidget> createState() => _ListContainer();
  }



class _ListContainer extends State<ListContainer> with SingleTickerProviderStateMixin{

  late TabController controller;


  @override
  void initState(){
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller.animateTo(widget.value);
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
          ImpiantiUI()
          

        ],
      ),
      appBar: AppBar(
        bottom:  TabBar(
          controller: controller,
          tabs: const [
            Tab(text: 'Piste',icon: Icon(Icons.downhill_skiing)),
            Tab(text: 'Impianti',icon: Icon(Icons.wrap_text))
            
          ],

        ),
      ),

    );
  }

}