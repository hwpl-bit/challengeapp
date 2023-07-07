import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../utils/responsive_utils.dart';
import '../controller/challengecontroller.dart';


class ChallengeScreen extends StatelessWidget {
   ChallengeScreen({Key? key}) : super(key: key);

  ChallengeController _challengeController = Get.put(ChallengeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Challenge App')),
        body: Obx(
              () => _challengeController.isLoading.value
              ? Center(
            child: CircularProgressIndicator(),
          )

          // check device is tab or app
              :ResponsiveUtils.isTab(context)?GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:3),
              itemCount: _challengeController.cheallengModellist?.length ?? 0,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  margin: EdgeInsets.all(16),
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      )
                  ),
                  height: 100,
                  child: Stack(
                    children: [
                      Container(
                        decoration:  BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple, Colors.blue],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        height: 40,
                      ),
                      Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child:
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 33,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(_challengeController.cheallengModellist[index].avatar.toString()),
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:30,left:10,),
                          child: Text(_challengeController.cheallengModellist[index].name.toString(),style:TextStyle(fontWeight:FontWeight.w900),),
                        )
                      ],)
                    ],
                  ),
                );
              }): ListView.builder(
              itemCount: _challengeController.cheallengModellist?.length ?? 0,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(16),
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      )
                  ),
                  height: 100,
                  child: Stack(
                    children: [
                      Container(
                        decoration:  BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple, Colors.blue],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        height: 40,
                      ),
                      Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child:
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 33,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(_challengeController.cheallengModellist[index].avatar.toString()),
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:30,left:10,),
                          child: Text(_challengeController.cheallengModellist[index].name.toString(),style:TextStyle(fontWeight:FontWeight.w900),),
                        )
                      ],)
                    ],
                  ),
                );
              }),
        ));
  }

}
