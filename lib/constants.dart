import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const TextStyle standardText = TextStyle(color: Colors.white, fontSize: 14);
const TextStyle mediumText = TextStyle(color: Colors.white, fontSize: 16);
const TextStyle bigText =
    TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

const Color mainBackgroundColor = Color(0xFF202528);

const Color secondaryBackgroundColor = Color(0xFF283137);

const MaterialColor primeColor =
    MaterialColor(_primecolorPrimaryValue, <int, Color>{
  50: Color(0xFFFDE4EA),
  100: Color(0xFFFABBCB),
  200: Color(0xFFF78EA9),
  300: Color(0xFFF36186),
  400: Color(0xFFF13F6C),
  500: Color(_primecolorPrimaryValue),
  600: Color(0xFFEC1A4B),
  700: Color(0xFFE91541),
  800: Color(0xFFE71138),
  900: Color(0xFFE20A28),
});
const int _primecolorPrimaryValue = 0xFFEE1D52;

const MaterialColor primeColorAccent =
    MaterialColor(_primecolorAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primecolorAccentValue),
  400: Color(0xFFFFA6AF),
  700: Color(0xFFFF8C98),
});
const int _primecolorAccentValue = 0xFFFFD9DD;

Map<String, dynamic> jsonMock = {
  "user": {
    "login_name": "buzova86",
    "name": "Ольга Бузова",
    "followers": 7844819,
    "following": 50,
    "likes": 187289910,
    "avatar":
        "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
    "sid":
        "MS4wLjABAAAA2SgYerI2EXaTG15-hvRri322can6T9giHaNYPfaZ5HsvywBa0YU2NeqWB9fmin2m"
  },
  "posts": [
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
  ]
};

Map<String, dynamic> badJsonMock = {
  "user": {
    "login_name": null,
    "name": null,
    "followers": null,
    "following": null,
    "likes": null,
    "avatar":
        "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
    "sid":
        "MS4wLjABAAAA2SgYerI2EXaTG15-hvRri322can6T9giHaNYPfaZ5HsvywBa0YU2NeqWB9fmin2m"
  },
  "posts": [
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
    {
      "cover":
          "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1643837999171589~c5_168x168.jpeg?x-expires=1635325200&x-signature=MONEGK7LQpTvCwOFjdt%2BG%2B4m2%2Fk%3D",
      "animated_cover":
          "https://p58-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/36fcf810c9864efbbaafc6004075f4b1_1632685464?x-expires=1635260400&x-signature=01IFsbbzS9CsEoIS5plpFjgXwtY%3D",
      "aweme_id": "7012330659410676993"
    },
  ]
};
