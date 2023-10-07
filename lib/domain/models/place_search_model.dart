import 'package:flutter/material.dart';

import '../service/constants/images.dart';
import '../service/constants/strings.dart';

class PlaceSearchModel {
  AssetImage image;
  String placeName;
  String placeLocation;
  String price;

  PlaceSearchModel({
    required this.image,
    required this.placeName,
    required this.placeLocation,
    required this.price,
  });
}

List placeSearchModel = [
  PlaceSearchModel(
    image: CustomImageN.image1,
    placeName: CustomStringsN.niladriReservoir,
    placeLocation: CustomStringsN.tekergatSunamgnj,
    price: CustomStringsN.price,
  ),
  PlaceSearchModel(
    image: CustomImageN.image2,
    placeName: CustomStringsN.casaLasTirtugas,
    placeLocation: CustomStringsN.avDameroMexico,
    price: CustomStringsN.price,
  ),
  PlaceSearchModel(
    image: CustomImageN.image3,
    placeName: CustomStringsN.aonangVillaResort,
    placeLocation: CustomStringsN.bastolaIslampur,
    price: CustomStringsN.price,
  ),
  PlaceSearchModel(
    image: CustomImageN.image4,
    placeName: CustomStringsN.rangautiResort,
    placeLocation: CustomStringsN.sylhetAirportRoad,
    price: CustomStringsN.price,
  ),
  PlaceSearchModel(
    image: CustomImageN.image3,
    placeName: CustomStringsN.aonangVillaResort,
    placeLocation: CustomStringsN.bastolaIslampur,
    price: CustomStringsN.price,
  ),
  PlaceSearchModel(
    image: CustomImageN.image4,
    placeName: CustomStringsN.rangautiResort,
    placeLocation: CustomStringsN.sylhetAirportRoad,
    price: CustomStringsN.price,
  ),
];