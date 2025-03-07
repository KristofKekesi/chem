import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:elements_rework/widgets/drawer.dart';

import 'package:elements_rework/widgets/localization.dart';
import 'package:elements_rework/widgets/resultWindow.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

String percentageModifier(double value) {
  final roundedValue = value.toStringAsFixed(2).toString();
  return roundedValue;
}

String percentageModifierNull(double value) {
  final roundedValue = value.toStringAsFixed(0).toString();
  return roundedValue;
}

// reset visibility
bool resetVisibility = false;

// types
bool defTypesOthernonmetals = true;
bool defTypesNoblegases = true;
bool defTypesAlkalimetals = true;
bool defTypesAlkaliearthmetals = true;
bool defTypesMetalloids = true;
bool defTypesPosttransitionmetals = true;
bool defTypesTransitionMetals = true;
bool defTypesLantanoids = true;
bool defTypesActinoids = true;
bool defTypesUnknown = true;

bool stateTypes = false;
bool enabledTypes = false;

bool typesOthernonmetals = true;
bool typesNoblegases = true;
bool typesAlkalimetals = true;
bool typesAlkaliearthmetals = true;
bool typesMetalloids = true;
bool typesPosttransitionmetals = true;
bool typesTransitionmetals = true;
bool typesLanthanoids = true;
bool typesActinoids = true;
bool typesUnknown = true;

// e-
double defElectronegativityMin = 0;
double defElectronegativityMax = 4;
bool defElectronegativityUnknown = true;

bool stateElectronegativity = false;
bool enabledElectronegativity = false;

double electronegativityMin = 0;
double electronegativityMax = 4;
bool electronegativityUnknown = true;

// atomic number
int settingAtomicnumberMin = 1;
int settingAtomicnumberMax = 118;

int defAtomicnumberMin = 1;
int defAtomicnumberMax = 118;

bool stateAtomicnumber = false;
bool enabledAtomicnumber = false;

int atomicnumberMin = 1;
int atomicnumberMax = 118;

// constructors
int defConstructorsElectronMin = 0;
int defConstructorsElectronMax = 118;

int defConstructorsProtonMin = 0;
int defConstructorsProtonMax = 118;

int defConstructorsNeutronMin = 0;
int defConstructorsNeutronMax = 177;

bool stateConstructors = false;
bool enabledConstructors = false;

int constructorsElectronMin = 0;
int constructorsElectronMax = 118;

int constructorsProtonMin = 0;
int constructorsProtonMax = 118;

int constructorsNeutronMin = 0;
int constructorsNeutronMax = 177;

// weight
double defWeightMin = 1;
double defWeightMax = 294;

bool stateWeight = false;
bool enabledWeight = false;

double weightMin = 1;
double weightMax = 294;

// isotopenum
double defIsotopenumMin = 1;
double defIsotopenumMax = 40;

bool stateIsotopenum = false;
bool enabledIsotopenum = false;

double isotopenumMin = 1;
double isotopenumMax = 40;

// proof
bool defProof = true;
bool defHypothetical = false;

bool stateProof = false;
bool enabledProof = false;

bool proof = true;
bool hypothetical = false;

void checkResetVisibility() {
  if (enabledElectronegativity == true ||
      enabledTypes == true ||
      enabledAtomicnumber == true ||
      enabledConstructors == true ||
      enabledConstructors == true ||
      enabledWeight == true ||
      enabledIsotopenum == true ||
      enabledProof == true) {
    resetVisibility = true;
  } else {
    resetVisibility = false;
  }
}

// ignore: camel_case_types
class elements extends StatefulWidget {
  final double bottomPadding;

  const elements({Key key, this.bottomPadding}) : super(key: key);

  @override
  _elementsState createState() => _elementsState();
}

// ignore: camel_case_types
class _elementsState extends State<elements> {
  void setElectronegativity() {
    setState(() {
      if (electronegativityUnknown == defElectronegativityUnknown &&
          electronegativityMin == defElectronegativityMin &&
          electronegativityMax == defElectronegativityMax) {
        stateElectronegativity = false;
        enabledElectronegativity = false;
      } else {
        stateElectronegativity = true;
        enabledElectronegativity = true;
      }
    });
  }

  void setTypes() {
    setState(() {
      if (typesOthernonmetals == defTypesOthernonmetals &&
          typesNoblegases == defTypesNoblegases &&
          typesAlkalimetals == defTypesAlkalimetals &&
          typesAlkaliearthmetals == defTypesAlkaliearthmetals &&
          typesMetalloids == defTypesMetalloids &&
          typesPosttransitionmetals == defTypesPosttransitionmetals &&
          typesTransitionmetals == defTypesTransitionMetals &&
          typesLanthanoids == defTypesLantanoids &&
          typesActinoids == defTypesActinoids &&
          typesUnknown == defTypesUnknown) {
        stateTypes = false;
        enabledTypes = false;
      } else {
        stateTypes = true;
        enabledTypes = true;
      }
    });
  }

  void setAtomicnumber() {
    setState(() {
      if (atomicnumberMin == defAtomicnumberMin &&
          atomicnumberMax == defAtomicnumberMax) {
        stateAtomicnumber = false;
        enabledAtomicnumber = false;
      } else {
        stateAtomicnumber = true;
        enabledAtomicnumber = true;
      }
    });
  }

  void setConstructors() {
    setState(() {
      if (constructorsProtonMin == defConstructorsProtonMin &&
          constructorsProtonMax == defConstructorsProtonMax &&
          constructorsElectronMin == defConstructorsElectronMin &&
          constructorsElectronMax == defConstructorsElectronMax &&
          constructorsNeutronMin == defConstructorsNeutronMin &&
          constructorsNeutronMax == defConstructorsNeutronMax) {
        stateConstructors = false;
        enabledConstructors = false;
      } else {
        stateConstructors = true;
        enabledConstructors = true;
      }
    });
  }

  void setWeight() {
    setState(() {
      if (weightMin == defWeightMin && weightMax == defWeightMax) {
        stateWeight = false;
        enabledWeight = false;
      } else {
        stateWeight = true;
        enabledWeight = true;
      }
    });
  }

  void setIsotopenum() {
    setState(() {
      if (isotopenumMin == defIsotopenumMin &&
          isotopenumMax == defIsotopenumMax) {
        stateIsotopenum = false;
        enabledIsotopenum = false;
      } else {
        stateIsotopenum = true;
        enabledIsotopenum = true;
      }
    });
  }

  void setProof() {
    setState(() {
      if (proof == true && hypothetical == false) {
        stateProof = true;
        enabledProof = false;
      } else if (proof == false && hypothetical == false) {
        stateProof = true;
        enabledProof = true;
      } else {
        stateProof = true;
        enabledProof = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .1,
                      right: MediaQuery.of(context).size.width * .25,
                      bottom: MediaQuery.of(context).size.height * .02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Tooltip(
                          message:
                              AppLocalizations.of(context).translate("menu"),
                          child: Image(
                              image: AssetImage("lib/icons/right_500.png"),
                              height: MediaQuery.of(context).size.width * .105,
                              width: MediaQuery.of(context).size.width * .105),
                        ),
                      ),
                      AutoSizeText(
                        " " +
                            AppLocalizations.of(context)
                                .translate('titleElements'),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * .1,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                        minFontSize: 1,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * .01,
                    right: MediaQuery.of(context).size.width * .1,
                    left: MediaQuery.of(context).size.width * .1),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        AppLocalizations.of(context).translate('selectorTag'),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .1,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff62a39c),
                              Color(0xff13547a),
                            ],
                        ),
                        borderRadius: BorderRadius.circular(
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .02),
                      ),
                      child: ListView(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .04,
                                right: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .04,
                                top: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .02,
                                bottom: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .02),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return DraggableScrollableSheet(
                                          initialChildSize: .95,
                                          maxChildSize: 1,
                                          builder: (BuildContext context,
                                              scrollController) {
                                            return ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .height +
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) /
                                                        2 *
                                                        .1),
                                                topRight: Radius.circular(
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .height +
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) /
                                                        2 *
                                                        .1),
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .3)),
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05,
                                                      sigmaY: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05),
                                                  child: SingleChildScrollView(
                                                    controller:
                                                        scrollController,
                                                    child: Center(
                                                      child: Column(
                                                        children: <Widget>[
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                                top: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .04,
                                                                bottom: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .05),
                                                            child: Text(
                                                              AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'electronegativitySelector') +
                                                                  ':',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    .09,
                                                              ),
                                                            ),
                                                          ),
                                                          SleekCircularSlider(
                                                            initialValue:
                                                                electronegativityMin,
                                                            min: 0,
                                                            max: 4,
                                                            appearance:
                                                                CircularSliderAppearance(
                                                              animationEnabled:
                                                                  false,
                                                              size: (MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height +
                                                                      MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width) /
                                                                  2 *
                                                                  .4,
                                                              infoProperties:
                                                                  InfoProperties(
                                                                modifier:
                                                                    percentageModifier,
                                                                topLabelStyle: TextStyle(
                                                                    fontSize:
                                                                        (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                            2 *
                                                                            .06,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white),
                                                                mainLabelStyle:
                                                                    TextStyle(
                                                                  fontSize: (MediaQuery.of(context)
                                                                              .size
                                                                              .height +
                                                                          MediaQuery.of(context)
                                                                              .size
                                                                              .width) /
                                                                      2 *
                                                                      .08,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                topLabelText: AppLocalizations.of(
                                                                        context)
                                                                    .translate(
                                                                        'sliderMin'),
                                                              ),
                                                              customColors:
                                                                  CustomSliderColors(
                                                                trackColor:
                                                                    Colors
                                                                        .white,
                                                                hideShadow:
                                                                    true,
                                                                progressBarColors: <
                                                                    Color>[
                                                                  Color(
                                                                      0xff13547a),
                                                                  Color(
                                                                      0xff62a39c),
                                                                ],
                                                              ),
                                                            ),
                                                            onChangeEnd: (v) {
                                                              setState(() {
                                                                electronegativityMin =
                                                                    num.parse(v
                                                                        .toStringAsFixed(
                                                                            2));

                                                                if (electronegativityMin == defElectronegativityMin &&
                                                                    electronegativityMax ==
                                                                        defElectronegativityMax &&
                                                                    electronegativityUnknown ==
                                                                        defElectronegativityUnknown) {
                                                                  stateElectronegativity =
                                                                      false;
                                                                  enabledElectronegativity =
                                                                      false;
                                                                } else {
                                                                  stateElectronegativity =
                                                                      true;
                                                                  enabledElectronegativity =
                                                                      true;
                                                                  resetVisibility =
                                                                      true;
                                                                }
                                                              });

                                                              checkResetVisibility();
                                                            },
                                                          ),
                                                          SleekCircularSlider(
                                                            initialValue:
                                                                electronegativityMax,
                                                            min: 0,
                                                            max: 4,
                                                            appearance:
                                                                CircularSliderAppearance(
                                                              animationEnabled:
                                                                  false,
                                                              size: (MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height +
                                                                      MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width) /
                                                                  2 *
                                                                  .4,
                                                              infoProperties:
                                                                  InfoProperties(
                                                                modifier:
                                                                    percentageModifier,
                                                                topLabelStyle: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                            2 *
                                                                            .06,
                                                                    color: Colors
                                                                        .white),
                                                                mainLabelStyle: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        (MediaQuery.of(context).size.height +
                                                                                MediaQuery.of(context).size.width) /
                                                                            2 *
                                                                            .08),
                                                                topLabelText: AppLocalizations.of(
                                                                        context)
                                                                    .translate(
                                                                        'sliderMax'),
                                                              ),
                                                              customColors:
                                                                  CustomSliderColors(
                                                                trackColor:
                                                                    Colors
                                                                        .white,
                                                                hideShadow:
                                                                    true,
                                                                progressBarColors: <
                                                                    Color>[
                                                                  Color(
                                                                      0xff13547a),
                                                                  Color(
                                                                      0xff62a39c),
                                                                ],
                                                              ),
                                                            ),
                                                            onChangeEnd: (v) {
                                                              setState(() {
                                                                electronegativityMax =
                                                                    num.parse(v
                                                                        .toStringAsFixed(
                                                                            2));

                                                                if (electronegativityMin == defElectronegativityMin &&
                                                                    electronegativityMax ==
                                                                        defElectronegativityMax &&
                                                                    electronegativityUnknown ==
                                                                        defElectronegativityUnknown) {
                                                                  stateElectronegativity =
                                                                      false;
                                                                  enabledElectronegativity =
                                                                      false;
                                                                } else {
                                                                  stateElectronegativity =
                                                                      true;
                                                                  enabledElectronegativity =
                                                                      true;
                                                                }
                                                              });

                                                              checkResetVisibility();
                                                            },
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'unknownelectronegativity')),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    electronegativityUnknown,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(() {
                                                                    electronegativityUnknown =
                                                                        value;

                                                                    setElectronegativity();
                                                                    checkResetVisibility();
                                                                  });
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Tooltip(
                                      message: AppLocalizations.of(context)
                                          .translate(
                                              'electronegativitySelector'),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            AppLocalizations.of(context).translate(
                                                'electronegativityMinSelector'),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            child: GestureDetector(
                                              onTap: () {
                                                print('lol');
                                              },
                                              child: StatefulBuilder(
                                                builder: (BuildContext context,
                                                    StateSetter setState) {
                                                  return Opacity(
                                                    opacity:
                                                        enabledElectronegativity
                                                            ? 1
                                                            : 0,
                                                    child: Checkbox(
                                                      activeColor:
                                                          Color.fromRGBO(
                                                              255, 255, 255, 0),
                                                      value:
                                                          stateElectronegativity,
                                                      onChanged:
                                                          enabledElectronegativity
                                                              ? (bool value) {
                                                                  setState(
                                                                    () {
                                                                      stateElectronegativity =
                                                                          value;
                                                                    },
                                                                  );
                                                                }
                                                              : null,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return DraggableScrollableSheet(
                                          initialChildSize: .95,
                                          maxChildSize: 1,
                                          builder: (BuildContext context,
                                              scrollController) {
                                            return ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                      (MediaQuery.of(context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .1),
                                                  topRight: Radius.circular(
                                                      (MediaQuery.of(context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .1)),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .3)),
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05,
                                                      sigmaY: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05),
                                                  child: SingleChildScrollView(
                                                    controller:
                                                        scrollController,
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: <Widget>[
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                                top: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .04,
                                                                bottom: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .05),
                                                            child: Text(
                                                              AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'typesSelector') +
                                                                  ':',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    .08,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'otherNonmetals'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    typesOthernonmetals,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      typesOthernonmetals =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setTypes();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'nobleGases'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    typesNoblegases,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      typesNoblegases =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setTypes();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'alkaliMetals'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    typesAlkalimetals,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      typesAlkalimetals =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setTypes();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'alkaliEarthMetals'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    typesAlkaliearthmetals,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      typesAlkaliearthmetals =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setTypes();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'metalloids'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    typesMetalloids,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      typesMetalloids =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setTypes();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'post-transitionMetals'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    typesPosttransitionmetals,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      typesPosttransitionmetals =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setTypes();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'transitionMetals'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    typesTransitionmetals,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      typesTransitionmetals =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setTypes();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'lanthanoids'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    typesLanthanoids,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      typesLanthanoids =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setTypes();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'actinoids'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    typesActinoids,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      typesActinoids =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setTypes();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'unknown'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    typesUnknown,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      typesUnknown =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setTypes();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Tooltip(
                                      message: AppLocalizations.of(context)
                                          .translate('typesSelector'),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            AppLocalizations.of(context)
                                                .translate('typesMinSelector'),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            child: StatefulBuilder(
                                              builder: (BuildContext context,
                                                  StateSetter setState) {
                                                return Opacity(
                                                  opacity: enabledTypes ? 1 : 0,
                                                  child: Checkbox(
                                                    activeColor: Color.fromRGBO(
                                                        255, 255, 255, 0),
                                                    value: stateTypes,
                                                    onChanged: enabledTypes
                                                        ? (bool value) {
                                                            setState(
                                                              () {
                                                                stateTypes =
                                                                    value;
                                                              },
                                                            );
                                                          }
                                                        : null,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return DraggableScrollableSheet(
                                          initialChildSize: .95,
                                          maxChildSize: 1,
                                          builder: (BuildContext context,
                                              scrollController) {
                                            return ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .height +
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) /
                                                        2 *
                                                        .1),
                                                topRight: Radius.circular(
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .height +
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) /
                                                        2 *
                                                        .1),
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .3)),
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05,
                                                      sigmaY: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05),
                                                  child: SingleChildScrollView(
                                                    controller:
                                                        scrollController,
                                                    child: Container(
                                                      child: Center(
                                                        child: Column(
                                                          children: <Widget>[
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .04,
                                                                  bottom: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .05),
                                                              child: Text(
                                                                AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'atomicnumSelector') +
                                                                    ':',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .09,
                                                                ),
                                                              ),
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  double.parse(
                                                                      atomicnumberMin
                                                                          .toString()),
                                                              min: double.parse(
                                                                  settingAtomicnumberMin
                                                                      .toString()),
                                                              max: double.parse(
                                                                  settingAtomicnumberMax
                                                                      .toString()),
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifierNull,
                                                                  topLabelStyle: TextStyle(
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        (MediaQuery.of(context).size.height +
                                                                                MediaQuery.of(context).size.width) /
                                                                            2 *
                                                                            .08,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMin'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xff13547a),
                                                                    Color(
                                                                        0xff62a39c),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd: (v) {
                                                                setState(() {
                                                                  atomicnumberMin =
                                                                      num.parse(
                                                                          v.toStringAsFixed(
                                                                              0));

                                                                  setState(() {
                                                                    weightMin =
                                                                        double.parse(
                                                                            percentageModifier(v));
                                                                  });
                                                                });

                                                                setAtomicnumber();
                                                                checkResetVisibility();
                                                              },
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  double.parse(
                                                                      atomicnumberMax
                                                                          .toString()),
                                                              min: double.parse(
                                                                  settingAtomicnumberMin
                                                                      .toString()),
                                                              max: double.parse(
                                                                  settingAtomicnumberMax
                                                                      .toString()),
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifierNull,
                                                                  topLabelStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: (MediaQuery.of(context).size.height +
                                                                              MediaQuery.of(context).size.width) /
                                                                          2 *
                                                                          .08),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMax'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xff13547a),
                                                                    Color(
                                                                        0xff62a39c),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd: (v) {
                                                                setState(() {
                                                                  atomicnumberMax =
                                                                      num.parse(
                                                                          v.toStringAsFixed(
                                                                              0));
                                                                });

                                                                setAtomicnumber();
                                                                checkResetVisibility();
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Tooltip(
                                          message: AppLocalizations.of(context)
                                              .translate('atomicnumSelector'),
                                          child: Text(
                                            AppLocalizations.of(context)
                                                .translate(
                                                    'atomicnumMinSelector'),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: StatefulBuilder(
                                            builder: (BuildContext context,
                                                StateSetter setState) {
                                              return Opacity(
                                                opacity:
                                                    enabledAtomicnumber ? 1 : 0,
                                                child: Checkbox(
                                                  activeColor: Color.fromRGBO(
                                                      255, 255, 255, 0),
                                                  value: stateAtomicnumber,
                                                  onChanged: enabledAtomicnumber
                                                      ? (bool value) {
                                                          setState(
                                                            () {
                                                              stateAtomicnumber =
                                                                  value;
                                                            },
                                                          );
                                                        }
                                                      : null,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return DraggableScrollableSheet(
                                          initialChildSize: .95,
                                          maxChildSize: 1,
                                          builder: (BuildContext context,
                                              scrollController) {
                                            return ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .height +
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) /
                                                        2 *
                                                        .1),
                                                topRight: Radius.circular(
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .height +
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) /
                                                        2 *
                                                        .1),
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .3)),
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05,
                                                      sigmaY: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05),
                                                  child: SingleChildScrollView(
                                                    controller:
                                                        scrollController,
                                                    child: Container(
                                                      child: Center(
                                                        child: Column(
                                                          children: <Widget>[
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .04,
                                                                  bottom: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .05),
                                                              child: Text(
                                                                AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'constructorsSelector') +
                                                                    ':',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .09,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .04,
                                                                  bottom: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .05),
                                                              child: Text(
                                                                AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'constructorsProtons') +
                                                                    ':',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .09,
                                                                ),
                                                              ),
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  double.parse(
                                                                      constructorsProtonMin
                                                                          .toString()),
                                                              min: 0,
                                                              max: 118,
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifierNull,
                                                                  topLabelStyle: TextStyle(
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        (MediaQuery.of(context).size.height +
                                                                                MediaQuery.of(context).size.width) /
                                                                            2 *
                                                                            .08,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMin'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xffff881b),
                                                                    Color(
                                                                        0xffffcf1b),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd: (v) {
                                                                setState(() {
                                                                  constructorsProtonMin =
                                                                      num.parse(
                                                                          v.toStringAsFixed(
                                                                              0));
                                                                });

                                                                setConstructors();
                                                                checkResetVisibility();
                                                              },
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  double.parse(
                                                                      constructorsProtonMax
                                                                          .toString()),
                                                              min: 0,
                                                              max: 118,
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifierNull,
                                                                  topLabelStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: (MediaQuery.of(context).size.height +
                                                                              MediaQuery.of(context).size.width) /
                                                                          2 *
                                                                          .08),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMax'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xffff881b),
                                                                    Color(
                                                                        0xffffcf1b),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd: (v) {
                                                                setState(() {
                                                                  constructorsProtonMax =
                                                                      num.parse(
                                                                          v.toStringAsFixed(
                                                                              0));

                                                                  setConstructors();
                                                                  checkResetVisibility();
                                                                });
                                                              },
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .04,
                                                                  bottom: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .05),
                                                              child: Text(
                                                                AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'constructorsElectrons') +
                                                                    ':',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .09,
                                                                ),
                                                              ),
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  double.parse(
                                                                      constructorsElectronMin
                                                                          .toString()),
                                                              min: 0,
                                                              max: 118,
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifierNull,
                                                                  topLabelStyle: TextStyle(
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        (MediaQuery.of(context).size.height +
                                                                                MediaQuery.of(context).size.width) /
                                                                            2 *
                                                                            .08,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMin'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xffb80733),
                                                                    Color(
                                                                        0xfff22447),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd: (v) {
                                                                setState(() {
                                                                  constructorsElectronMin =
                                                                      num.parse(
                                                                          v.toStringAsFixed(
                                                                              0));
                                                                });

                                                                setConstructors();
                                                                checkResetVisibility();
                                                              },
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  double.parse(
                                                                      constructorsElectronMax
                                                                          .toString()),
                                                              min: 0,
                                                              max: 118,
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifierNull,
                                                                  topLabelStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: (MediaQuery.of(context).size.height +
                                                                              MediaQuery.of(context).size.width) /
                                                                          2 *
                                                                          .08),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMax'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xffb80733),
                                                                    Color(
                                                                        0xfff22447),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd: (v) {
                                                                setState(() {
                                                                  constructorsElectronMax =
                                                                      num.parse(
                                                                          v.toStringAsFixed(
                                                                              0));
                                                                });

                                                                setConstructors();
                                                                checkResetVisibility();
                                                              },
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .04,
                                                                  bottom: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .05),
                                                              child: Text(
                                                                AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'constructorsNeutrons') +
                                                                    ':',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .09,
                                                                ),
                                                              ),
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  double.parse(
                                                                      constructorsNeutronMin
                                                                          .toString()),
                                                              min: 0,
                                                              max: 177,
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifierNull,
                                                                  topLabelStyle: TextStyle(
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        (MediaQuery.of(context).size.height +
                                                                                MediaQuery.of(context).size.width) /
                                                                            2 *
                                                                            .08,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMin'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xff059142),
                                                                    Color(
                                                                        0xff07da63),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd: (v) {
                                                                setState(() {
                                                                  constructorsNeutronMin =
                                                                      num.parse(
                                                                          v.toStringAsFixed(
                                                                              0));
                                                                });

                                                                setConstructors();
                                                                checkResetVisibility();
                                                              },
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  double.parse(
                                                                      constructorsNeutronMax
                                                                          .toString()),
                                                              min: 0,
                                                              max: 177,
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifierNull,
                                                                  topLabelStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: (MediaQuery.of(context).size.height +
                                                                              MediaQuery.of(context).size.width) /
                                                                          2 *
                                                                          .08),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMax'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xff059142),
                                                                    Color(
                                                                        0xff07da63),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd: (v) {
                                                                setState(() {
                                                                  constructorsNeutronMax =
                                                                      num.parse(
                                                                          v.toStringAsFixed(
                                                                              0));
                                                                });

                                                                setConstructors();
                                                                checkResetVisibility();
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Tooltip(
                                      message: AppLocalizations.of(context)
                                          .translate('constructorsSelector'),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            AppLocalizations.of(context)
                                                .translate(
                                                    'constructorsMinSelector'),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            child: StatefulBuilder(
                                              builder: (BuildContext context,
                                                  StateSetter setState) {
                                                return Opacity(
                                                  opacity: enabledConstructors
                                                      ? 1
                                                      : 0,
                                                  child: Checkbox(
                                                    activeColor: Color.fromRGBO(
                                                        255, 255, 255, 0),
                                                    value: stateConstructors,
                                                    onChanged:
                                                        enabledConstructors
                                                            ? (bool value) {
                                                                setState(
                                                                  () {
                                                                    stateConstructors =
                                                                        value;
                                                                  },
                                                                );
                                                              }
                                                            : null,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return DraggableScrollableSheet(
                                          initialChildSize: .95,
                                          maxChildSize: 1,
                                          builder: (BuildContext context,
                                              scrollController) {
                                            return ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .height +
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) /
                                                        2 *
                                                        .1),
                                                topRight: Radius.circular(
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .height +
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) /
                                                        2 *
                                                        .1),
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .3)),
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05,
                                                      sigmaY: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05),
                                                  child: SingleChildScrollView(
                                                    controller:
                                                        scrollController,
                                                    child: Container(
                                                      child: Center(
                                                        child: Column(
                                                          children: <Widget>[
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .04,
                                                                  bottom: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .05),
                                                              child: Text(
                                                                AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'weightSelector') +
                                                                    ':',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .09,
                                                                ),
                                                              ),
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  weightMin,
                                                              min: 1,
                                                              max: 294,
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifier,
                                                                  topLabelStyle: TextStyle(
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        (MediaQuery.of(context).size.height +
                                                                                MediaQuery.of(context).size.width) /
                                                                            2 *
                                                                            .08,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMin'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xff13547a),
                                                                    Color(
                                                                        0xff62a39c),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd:
                                                                  (double v) {
                                                                setState(() {
                                                                  weightMin =
                                                                      double.parse(
                                                                          percentageModifier(
                                                                              v));
                                                                });

                                                                setWeight();
                                                                checkResetVisibility();
                                                              },
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  weightMax,
                                                              min: 1,
                                                              max: 294,
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifier,
                                                                  topLabelStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: (MediaQuery.of(context).size.height +
                                                                              MediaQuery.of(context).size.width) /
                                                                          2 *
                                                                          .08),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMax'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xff13547a),
                                                                    Color(
                                                                        0xff62a39c),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd:
                                                                  (double v) {
                                                                setState(() {
                                                                  weightMax =
                                                                      double.parse(
                                                                          percentageModifier(
                                                                              v));
                                                                });

                                                                setWeight();
                                                                checkResetVisibility();
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    //width: MediaQuery.of(context).size.width,
                                    child: Tooltip(
                                      message: AppLocalizations.of(context)
                                          .translate('weightSelector'),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            AppLocalizations.of(context)
                                                .translate('weightMinSelector'),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            child: StatefulBuilder(
                                              builder: (BuildContext context,
                                                  StateSetter setState) {
                                                return Opacity(
                                                  opacity:
                                                      enabledWeight ? 1 : 0,
                                                  child: Checkbox(
                                                    activeColor: Color.fromRGBO(
                                                        255, 255, 255, 0),
                                                    value: stateWeight,
                                                    onChanged: enabledWeight
                                                        ? (bool value) {
                                                            setState(
                                                              () {
                                                                stateWeight =
                                                                    value;
                                                              },
                                                            );
                                                          }
                                                        : null,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return DraggableScrollableSheet(
                                          initialChildSize: .95,
                                          maxChildSize: 1,
                                          builder: (BuildContext context,
                                              scrollController) {
                                            return ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .height +
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) /
                                                        2 *
                                                        .1),
                                                topRight: Radius.circular(
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .height +
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) /
                                                        2 *
                                                        .1),
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .3)),
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05,
                                                      sigmaY: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05),
                                                  child: SingleChildScrollView(
                                                    controller:
                                                        scrollController,
                                                    child: Container(
                                                      child: Center(
                                                        child: Column(
                                                          children: <Widget>[
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .04,
                                                                  bottom: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .05),
                                                              child: Text(
                                                                AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'isotopenumSelector') +
                                                                    ':',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      .09,
                                                                ),
                                                              ),
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  isotopenumMin,
                                                              min: 1,
                                                              max: 40,
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifierNull,
                                                                  topLabelStyle: TextStyle(
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        (MediaQuery.of(context).size.height +
                                                                                MediaQuery.of(context).size.width) /
                                                                            2 *
                                                                            .08,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMin'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xff13547a),
                                                                    Color(
                                                                        0xff62a39c),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd:
                                                                  (double v) {
                                                                setState(() {
                                                                  isotopenumMin =
                                                                      double.parse(
                                                                          percentageModifierNull(
                                                                              v));
                                                                });

                                                                setIsotopenum();
                                                                checkResetVisibility();
                                                              },
                                                            ),
                                                            SleekCircularSlider(
                                                              initialValue:
                                                                  isotopenumMax,
                                                              min: 1,
                                                              max: 40,
                                                              appearance:
                                                                  CircularSliderAppearance(
                                                                animationEnabled:
                                                                    false,
                                                                size: (MediaQuery.of(context)
                                                                            .size
                                                                            .height +
                                                                        MediaQuery.of(context)
                                                                            .size
                                                                            .width) /
                                                                    2 *
                                                                    .4,
                                                                infoProperties:
                                                                    InfoProperties(
                                                                  modifier:
                                                                      percentageModifierNull,
                                                                  topLabelStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) /
                                                                              2 *
                                                                              .06,
                                                                      color: Colors
                                                                          .white),
                                                                  mainLabelStyle: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: (MediaQuery.of(context).size.height +
                                                                              MediaQuery.of(context).size.width) /
                                                                          2 *
                                                                          .08),
                                                                  topLabelText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'sliderMax'),
                                                                ),
                                                                customColors:
                                                                    CustomSliderColors(
                                                                  trackColor:
                                                                      Colors
                                                                          .white,
                                                                  hideShadow:
                                                                      true,
                                                                  progressBarColors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xff13547a),
                                                                    Color(
                                                                        0xff62a39c),
                                                                  ],
                                                                ),
                                                              ),
                                                              onChangeEnd:
                                                                  (double v) {
                                                                setState(() {
                                                                  isotopenumMax =
                                                                      double.parse(
                                                                          percentageModifierNull(
                                                                              v));
                                                                });

                                                                setIsotopenum();
                                                                checkResetVisibility();
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    //width: MediaQuery.of(context).size.width,
                                    child: Tooltip(
                                      message: AppLocalizations.of(context)
                                          .translate('isotopenumSelector'),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            AppLocalizations.of(context)
                                                .translate(
                                                    'isotopenumMinSelector'),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            child: StatefulBuilder(
                                              builder: (BuildContext context,
                                                  StateSetter setState) {
                                                return Opacity(
                                                  opacity:
                                                      enabledIsotopenum ? 1 : 0,
                                                  child: Checkbox(
                                                    activeColor: Color.fromRGBO(
                                                        255, 255, 255, 0),
                                                    value: stateIsotopenum,
                                                    onChanged: enabledIsotopenum
                                                        ? (bool value) {
                                                            setState(
                                                              () {
                                                                stateIsotopenum =
                                                                    value;
                                                              },
                                                            );
                                                          }
                                                        : null,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return DraggableScrollableSheet(
                                          initialChildSize: .95,
                                          maxChildSize: 1,
                                          builder: (BuildContext context,
                                              scrollController) {
                                            return ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                      (MediaQuery.of(context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .1),
                                                  topRight: Radius.circular(
                                                      (MediaQuery.of(context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .1)),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, .3)),
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05,
                                                      sigmaY: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05),
                                                  child: SingleChildScrollView(
                                                    controller:
                                                        scrollController,
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: <Widget>[
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                                top: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .04,
                                                                bottom: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .05),
                                                            child: Text(
                                                              AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'proofSelector') +
                                                                  ':',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    .08,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'proofed'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value: proof,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      proof =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setProof();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return CheckboxListTile(
                                                                title: Text(
                                                                  Capitalizate(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                            'hypothetical'),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          .04),
                                                                ),
                                                                controlAffinity:
                                                                    ListTileControlAffinity
                                                                        .platform,
                                                                activeColor: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        0),
                                                                value:
                                                                    hypothetical,
                                                                onChanged: (bool
                                                                    value) {
                                                                  setState(
                                                                    () {
                                                                      hypothetical =
                                                                          value;
                                                                    },
                                                                  );

                                                                  setProof();
                                                                  checkResetVisibility();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Tooltip(
                                      message: AppLocalizations.of(context)
                                          .translate('proofSelector'),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            AppLocalizations.of(context)
                                                .translate('proofMinSelector'),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            child: StatefulBuilder(
                                              builder: (BuildContext context,
                                                  StateSetter setState) {
                                                return Opacity(
                                                  opacity: enabledProof ? 1 : 0,
                                                  child: Checkbox(
                                                    activeColor: Color.fromRGBO(
                                                        255, 255, 255, 0),
                                                    value: stateProof,
                                                    onChanged: enabledProof
                                                        ? (bool value) {
                                                            setState(
                                                              () {
                                                                stateProof =
                                                                    value;
                                                              },
                                                            );
                                                          }
                                                        : null,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Opacity(
                      opacity: resetVisibility ? 1 : 0,
                      child: GestureDetector(
                        onTap: () {
                          if (resetVisibility == true) {
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  AppLocalizations.of(context)
                                      .translate('resetWarnSelector'),
                                ),
                                action: SnackBarAction(
                                  label: AppLocalizations.of(context)
                                      .translate('resetWarnLabelSelector'),
                                  textColor: Color(0xfff22447),
                                  onPressed: () {
                                    typesOthernonmetals =
                                        defTypesOthernonmetals;
                                    typesNoblegases = defTypesNoblegases;
                                    typesAlkalimetals =
                                        defTypesAlkaliearthmetals;
                                    typesAlkaliearthmetals =
                                        defTypesAlkaliearthmetals;
                                    typesMetalloids = defTypesMetalloids;
                                    typesPosttransitionmetals =
                                        defTypesPosttransitionmetals;
                                    typesTransitionmetals =
                                        defTypesTransitionMetals;
                                    typesLanthanoids = defTypesLantanoids;
                                    typesActinoids = defTypesActinoids;
                                    typesUnknown = defTypesUnknown;

                                    electronegativityMin =
                                        defElectronegativityMin;
                                    electronegativityMax =
                                        defElectronegativityMax;
                                    electronegativityUnknown =
                                        defElectronegativityUnknown;

                                    atomicnumberMin = defAtomicnumberMin;
                                    atomicnumberMax = defAtomicnumberMax;

                                    constructorsElectronMin =
                                        defConstructorsElectronMin;
                                    constructorsElectronMax =
                                        defConstructorsElectronMax;

                                    constructorsProtonMin =
                                        defConstructorsProtonMin;
                                    constructorsProtonMax =
                                        defConstructorsProtonMax;

                                    constructorsNeutronMin =
                                        defConstructorsNeutronMin;
                                    constructorsNeutronMax =
                                        defConstructorsNeutronMax;

                                    weightMin = defWeightMin;
                                    weightMax = defWeightMax;

                                    isotopenumMin = defIsotopenumMin;
                                    isotopenumMax = defIsotopenumMax;

                                    proof = defProof;
                                    hypothetical = defHypothetical;

                                    stateElectronegativity = false;
                                    stateTypes = false;
                                    stateAtomicnumber = false;
                                    stateConstructors = false;
                                    stateWeight = false;
                                    stateIsotopenum = false;

                                    enabledElectronegativity = false;
                                    enabledTypes = false;
                                    enabledAtomicnumber = false;
                                    enabledConstructors = false;
                                    enabledWeight = false;
                                    enabledIsotopenum = false;
                                    enabledProof = false;

                                    resetVisibility = false;

                                    setState(() {});

                                    Scaffold.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(AppLocalizations.of(
                                                context)
                                            .translate('resetDoneSelector')),
                                        action: SnackBarAction(
                                            label: AppLocalizations.of(context)
                                                .translate(
                                                    'resetDoneLabelSelector'),
                                            textColor: Color(0xfffffffff),
                                            onPressed: () {}),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          }
                        },
                        child: Text(
                          AppLocalizations.of(context)
                              .translate('resetSelector'),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * .06,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => searchResults(
                        bottomPadding: MediaQuery.of(context).size.height,
                        typesOthernonmetals: typesOthernonmetals,
                        typesNoblegases: typesNoblegases,
                        typesAlkalimetals: typesAlkalimetals,
                        typesAlkaliearthmetals: typesAlkaliearthmetals,
                        typesMetalloids: typesMetalloids,
                        typesPosttransitionmetals: typesPosttransitionmetals,
                        typesTransitionmetals: typesTransitionmetals,
                        typesLanthanoids: typesLanthanoids,
                        typesActionids: typesActinoids,
                        typesUnknown: typesUnknown,
                        electronegativityMin: electronegativityMin,
                        electronegativityMax: electronegativityMax,
                        electronegativityUnknown: electronegativityUnknown,
                        atomicnumberMin: atomicnumberMin,
                        atomicnumberMax: atomicnumberMax,
                        constructorsProtonMin: constructorsProtonMin,
                        constructorsProtonMax: constructorsProtonMax,
                        constructorsElectronMin: constructorsElectronMin,
                        constructorsElectronMax: constructorsElectronMax,
                        constructorsNeutronMin: constructorsNeutronMin,
                        constructorsNeutronMax: constructorsNeutronMax,
                        weightMin: weightMin,
                        weightMax: weightMax,
                        isotopenumMin: isotopenumMin,
                        isotopenumMax: isotopenumMax,
                        proof: proof,
                        hypothetical: hypothetical,
                        stateElectronegativity: stateElectronegativity,
                        stateTypes: stateTypes,
                        stateAtomicnumber: stateAtomicnumber,
                        stateConstructors: stateConstructors,
                        stateWeight: stateWeight,
                        stateIsotopenum: stateIsotopenum,
                        stateProof: stateProof,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * .03,
                      right: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          2 *
                          .05,
                      left: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          2 *
                          .05),
                  child: Tooltip(
                    message:
                        AppLocalizations.of(context).translate('searchTooltip'),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .8,
                      height: MediaQuery.of(context).size.width * .18,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xff62a39c),
                              Color(0xff13547a),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .02),
                      ),
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context).translate('search'),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * .08),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
