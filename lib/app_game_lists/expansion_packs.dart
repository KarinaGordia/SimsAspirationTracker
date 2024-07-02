import 'package:achievements/models/models.dart';
import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

class ExpansionPackList {
  ExpansionPackList._();

  static final theSimsTwoExpansionPacks = <String, ExpansionPackModel>{
    'BG' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.theSims3Png_),
        name: 'Base Game',
        key: 'BG'),
    'WA' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.WorldAdventuresPng_),
        name: 'World Adventures',
        key: 'WA'),
    'A' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.AmbitionsPng_),
        name: 'Ambitions',
        key: 'A'),
  };

  static final theSimsThreeExpansionPacks = <String, ExpansionPackModel>{
    'BG' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.theSims3Png_),
        name: 'Base Game',
        key: 'BG'),
    'WA' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.WorldAdventuresPng_),
        name: 'World Adventures',
        key: 'WA'),
    'A' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.AmbitionsPng_),
        name: 'Ambitions',
        key: 'A'),
    'LN' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.LateNightPng_),
        name: 'Late Night',
        key: 'LN'),
    'P' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.PetsPng_),
        name: 'Pets',
        key: 'P'),
    'ST' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.ShowtimePng_),
        name: 'Showtime',
        key: 'ST'),
    'SN' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.SupernaturalPng_),
        name: 'Supernatural',
        key: 'SN'),
    'UL' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.UniversityLifePng_),
        name: 'University Life',
        key: 'UL'),
    'IP' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.IslandParadisePng_),
        name: 'Island Paradise',
        key: 'IP'),
    'ITF' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.IntoTheFuturePng_),
        name: 'Into the Future',
        key: 'ITF'),
  };

  static final theSimsFourExpansionPacks = <String, ExpansionPackModel>{
    'UL' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.UniversityLifePng_),
        name: 'University Life',
        key: 'UL'),
    'IP' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.IslandParadisePng_),
        name: 'Island Paradise',
        key: 'IP'),
    'ITF' : ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.IntoTheFuturePng_),
        name: 'Into the Future',
        key: 'ITF'),
  };
}