import 'package:flutter/material.dart';
class SwitchWidget extends StatefulWidget {
  const SwitchWidget({ Key? key }) : super(key: key);

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

//joy sen

class _SwitchWidgetState extends State<SwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Switch Example"),
        ),
        body: Today(),
      ),
    );
  }
}
class Today extends StatefulWidget {
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State<Today> {
  bool isSwitched = false;
  var textValue = "Switch is off";
  void toggleSwitch(bool value){
    if(isSwitched == false){
      setState(() {
        isSwitched = true;
        textValue = "Switch Button is On";
      });
      print("Switch Button is ON");
    }
    else{
      setState(() {
        isSwitched = false;
        textValue = "Switch Button is OFF";
      });
      print("Switch Button is OFF");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(scale: 2,
        child: Switch( onChanged: toggleSwitch,
        value: isSwitched,
        activeColor: Colors.blue,
        activeTrackColor: Colors.yellow,
        inactiveThumbColor: Colors.green,
        inactiveTrackColor: Colors.red,
        ),
        ),
        Text(
          "$textValue",
          style: TextStyle(fontSize: 20,
        )
        )],
    );
  }
}
