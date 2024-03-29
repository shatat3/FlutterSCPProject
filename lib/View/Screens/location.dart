import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/View/Widgets/custombutton.dart';
import 'package:s_c_p/colors.dart';
//import 'package:geolocator/geolocator.dart';

class Location extends StatelessWidget {
  /*Future<void> _getDeviceLocation() async {
    var geolocator = GeolocatorPlatform.instance;
    var locationPermission = await geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await geolocator.requestPermission();
      if (locationPermission != LocationPermission.whileInUse &&
          locationPermission != LocationPermission.always) {
        return;
      }
    }
    var locationOptions =
        LocationSettings(accuracy: LocationAccuracy.high, distanceFilter: 10);
    Position position = await geolocator.getCurrentPosition();
    print(position);
  }
*/
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.Green,
      body: Padding(
        padding: EdgeInsets.only(
            left: media.width * 0.01, right: media.width * 0.01),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "What's Your Location?",
              style: TextStyle(
                  color: TColor.White,
                  fontSize: media.height * 0.04,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "We need your location to show available\nFood banks & Association",
              style: TextStyle(color: TColor.White),
            ),
            SizedBox(
              height: media.height * 0.08,
            ),
            Icon(
              Icons.location_on,
              size: media.height * 0.25,
              color: TColor.Gold,
            ),
            SizedBox(
              height: media.height * 0.08,
            ),
            CustomButton(
              text: "Allow Location Access",
              onpressed: () {},
              bordercolor: TColor.Gold,
              buttoncolor: TColor.Gold,
              textcolor: TColor.Green,
              fontsize: media.height * 0.025,
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            CustomButton(
              text: "Enter Location Manually",
              onpressed: () {
                Get.toNamed("/manual");
              },
              bordercolor: TColor.Gold,
              buttoncolor: TColor.Green,
              textcolor: TColor.Gold,
              fontsize: media.height * 0.025,
            )
          ],
        ),
      ),
    );
  }
}
