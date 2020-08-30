import 'package:geolocator/geolocator.dart';


class Location{

  double latitute;
  double longitute;


  Future<void>getCurrentLocation()async {
  try {
    Position position = await Geolocator().getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
  latitute=position.latitude;
  longitute=position.longitude;
  }
  catch(e){
    print(e);
  }
}
}