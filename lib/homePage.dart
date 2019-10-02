import 'package:flutter/material.dart';
import 'package:flutter_enucompi_whatsapp/ui/camera.dart';
import 'package:flutter_enucompi_whatsapp/ui/chamadas.dart';
import 'package:flutter_enucompi_whatsapp/ui/mensagens.dart';
import 'package:flutter_enucompi_whatsapp/ui/status.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  TabController _tabController;

  var iconButton = Icons.message;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this,initialIndex: 1,length: 4)
    ..addListener(() {
        setState(() {
          switch (_tabController.index) {
            case 0:
              break;
            case 1:
              iconButton = Icons.message;
              break;
            case 2:
              iconButton = Icons.camera_alt;
              break;
            case 3:
              iconButton = Icons.add_call;
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600),),
        elevation: 1.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0,),
            child:Icon(Icons.search,size: 28.0,),
          ),
           Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child:Icon(Icons.more_vert,size: 28.0,),
          ),
        ],
        bottom: TabBar(
          indicatorColor:Colors.white ,
          controller: _tabController,
          isScrollable: true,
          labelPadding: EdgeInsets.only(left: 15.0,right: 15.0),
          tabs: <Widget>[
            Tab(child: Icon(Icons.camera_alt),),
            Tab(child: Text('CONVERSAS')),
            Tab(child: Text('STATUS')),
            Tab(child: Text('CHAMADAS')),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Camera(),Mensagens(), Status(), Chamadas(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(iconButton,color: Colors.white,),
        onPressed: (){},
      ),
    );
  }
}
