import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class SensorSample1 extends StatefulWidget {
  const SensorSample1({Key? key}) : super(key: key);

  @override
  State<SensorSample1> createState() => _SensorSample1State();
}

class _SensorSample1State extends State<SensorSample1> {
  List<double> accelerometerValues = [0.0, 0.0, 0.0];

  @override
  void initState() {
    super.initState();

    accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        accelerometerValues = [event.x, event.y, event.z];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sensor Data Display'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Accelerometer Data:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'X: ${accelerometerValues[0].toStringAsFixed(2)}',
            ),
            Text(
              'Y: ${accelerometerValues[1].toStringAsFixed(2)}',
            ),
            Text(
              'Z: ${accelerometerValues[2].toStringAsFixed(2)}',
            ),
          ],
        ),
      ),
    );
  }
}
