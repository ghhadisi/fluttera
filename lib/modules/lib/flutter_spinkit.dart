import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//https://github.com/jogboms/flutter_spinkit
//加载动画。支持多种常用效果，非常酷炫。
class SpinkitPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SpinkitPageState();
  }

}


class _SpinkitPageState extends State<SpinkitPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Spinkit'),
      ),
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitRotatingCircle(color: Colors.white),
                SpinKitRotatingPlain(color: Colors.white),
                SpinKitChasingDots(color: Colors.white),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitPumpingHeart(color: Colors.white),
                SpinKitPulse(color: Colors.white),
                SpinKitDoubleBounce(color: Colors.white),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitWave(color: Colors.white, type: SpinKitWaveType.start),
                SpinKitWave(color: Colors.white, type: SpinKitWaveType.center),
                SpinKitWave(color: Colors.white, type: SpinKitWaveType.end),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitThreeBounce(color: Colors.white),
                SpinKitWanderingCubes(color: Colors.white),
                SpinKitWanderingCubes(
                    color: Colors.white, shape: BoxShape.circle),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitCircle(color: Colors.white),
                SpinKitFadingFour(color: Colors.white),
                SpinKitFadingFour(
                    color: Colors.white, shape: BoxShape.rectangle),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitFadingCube(color: Colors.white),
                SpinKitCubeGrid(size: 51.0, color: Colors.white),
                SpinKitFoldingCube(color: Colors.white),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitRing(color: Colors.white),
                SpinKitDualRing(color: Colors.white),
                SpinKitRipple(color: Colors.white),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitFadingGrid(color: Colors.white),
                SpinKitFadingGrid(
                    color: Colors.white, shape: BoxShape.rectangle),
                SpinKitHourGlass(color: Colors.white),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitSpinningCircle(color: Colors.white),
                SpinKitSpinningCircle(
                    color: Colors.white, shape: BoxShape.rectangle),
                SpinKitFadingCircle(color: Colors.white),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitPouringHourglass(color: Colors.white),
              ],
            ),
            const SizedBox(height: 64.0),
          ],
        ),
      ),
    );
  }

}