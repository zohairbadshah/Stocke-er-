import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:page_transition/page_transition.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:stocker/Homepage.dart';
import 'package:stocker/Profilepage.dart';
import 'package:stocker/global_var.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'Graphpage.dart';
import 'Inboxpage.dart';
import 'Settingspage.dart';
import 'Stockpage.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
//
// class chart extends StatefulWidget {
//   const chart({Key? key}) : super(key: key);
//
//   @override
//   State<chart> createState() => _chartState();
// }
//
// class _chartState extends State<chart> {
//   @override
//   Widget build(BuildContext context) {
//     final List<ChartData> chartData = [
//       ChartData(2010, 35),
//       ChartData(2011, 28),
//       ChartData(2012, 34),
//       ChartData(2013, 32),
//       ChartData(2014, 40)
//     ];
//     return Center(
//         child: Container(
//             child: SfCartesianChart(
//                 primaryXAxis: DateTimeAxis(),
//                 series: <ChartSeries>[
//           // Renders CandleSeries
//           CandleSeries<ChartData, DateTime>(
//             dataSource: financialData,
//             xValueMapper: (ChartData data, _) => data.x,
//             lowValueMapper: (ChartData data, _) => data.low,
//             highValueMapper: (ChartData data, _) => data.high,
//             openValueMapper: (ChartData data, _) => data.open,
//             closeValueMapper: (ChartData data, _) => data.close,
//           )
//         ])));
//   }
// }

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}

SalomonBottomBar Navigate(_currentIndex, context) {
  return SalomonBottomBar(
    currentIndex: _currentIndex,
    onTap: (i) {
      _currentIndex = i;
      if (_currentIndex != globals.current) {
        if (_currentIndex == 0) {
          Navigator.pushReplacement(
            context,
            PageTransition(
              child: HomePage(),
              type: PageTransitionType.leftToRightWithFade,
              duration: Duration(milliseconds: 400),
            ),
          );
        }
        if (_currentIndex == 1) {
          Navigator.pushReplacement(
            context,
            PageTransition(
              child: StockPage(),
              type: PageTransitionType.rightToLeftWithFade,
              duration: Duration(milliseconds: 400),
            ),
          );
        }
        if (_currentIndex == 2) {
          Navigator.pushReplacement(
            context,
            PageTransition(
              child: InboxPage(),
              type: PageTransitionType.rightToLeftWithFade,
              duration: Duration(milliseconds: 400),
            ),
          );
        }
        if (_currentIndex == 3) {
          Navigator.pushReplacement(
            context,
            PageTransition(
              child: SettingsPage(),
              type: PageTransitionType.rightToLeftWithFade,
              duration: Duration(milliseconds: 400),
            ),
          );
        }
      }
    },
    items: [
      SalomonBottomBarItem(
        icon: Icon(Icons.home),
        title: Text("Home"),
        selectedColor: Colors.teal.withOpacity(0.7),
      ),
      SalomonBottomBarItem(
        icon: Icon(CupertinoIcons.chart_bar_square_fill),
        title: Text("Stocks"),
        selectedColor: Colors.teal.withOpacity(0.7),
      ),
      SalomonBottomBarItem(
        icon: Icon(CupertinoIcons.mail_solid),
        title: Text("Inbox"),
        selectedColor: Colors.teal.withOpacity(0.7),
      ),
      SalomonBottomBarItem(
        icon: Icon(
          Icons.settings_applications_rounded,
        ),
        title: Text("Settings"),
        selectedColor: Colors.teal.withOpacity(0.7),
      ),
    ],
  );
}

class graph extends StatelessWidget {
  const graph({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: MediaQuery.of(context).size.height - 380,
          width: MediaQuery.of(context).size.height - 380,
          child: LineChart(
            LineChartData(
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  maxContentWidth: 100,
                  tooltipBgColor: Colors.white30,
                  getTooltipItems: (touchedSpots) {
                    return touchedSpots.map((LineBarSpot touchedSpot) {
                      final textStyle = TextStyle(
                        color: touchedSpot.bar.gradient?.colors[0] ??
                            touchedSpot.bar.color,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      );
                      return LineTooltipItem(
                        '${touchedSpot.x},${touchedSpot.y.toStringAsFixed(2)}',
                        textStyle,
                      );
                    }).toList();
                  },
                ),
                handleBuiltInTouches: true,
                getTouchLineStart: (data, index) => 2,
                getTouchedSpotIndicator:
                    (LineChartBarData barData, List<int> indicators) {
                  return indicators.map(
                    (int index) {
                      final line = FlLine(
                          color: Colors.grey,
                          strokeWidth: 0,
                          dashArray: [2, 4]);
                      return TouchedSpotIndicatorData(
                        line,
                        FlDotData(
                            show: true,
                            getDotPainter: (spot, percent, barData, index) =>
                                FlDotCirclePainter(
                                    radius: 8,
                                    color:
                                        Colors.lightBlueAccent.withOpacity(0.3),
                                    strokeWidth: 0)),
                      );
                    },
                  ).toList();
                },
              ),
              minY: 0,
              maxY: 20,
              borderData: FlBorderData(show: false),
              clipData: FlClipData.all(),
              backgroundColor: Colors.white,
              gridData: FlGridData(
                  show: false,
                  drawVerticalLine: false,
                  horizontalInterval: 0.5,
                  verticalInterval: 5),
              lineBarsData: [
                LineChartBarData(
                    isStrokeCapRound: true,
                    show: true,
                    spots: [
                      FlSpot(0, 10),
                      FlSpot(1, 5),
                      FlSpot(2, 10),
                      FlSpot(3, 1.2),
                      FlSpot(4, 15),
                      FlSpot(5, 10),
                      FlSpot(6, 0),
                      FlSpot(7, 5),
                      FlSpot(8, 4),
                      FlSpot(9, 15),
                      FlSpot(10, 15),
                      FlSpot(11, 3),
                    ],
                    color: Colors.lightBlueAccent.withOpacity(0.1),
                    barWidth: 0,
                    isCurved: true,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        begin: Alignment(5, 0),
                        end: Alignment(0, 5),
                        colors: <Color>[
                          Colors.lightBlueAccent.withOpacity(0.9),
                          Colors.lightBlueAccent.withOpacity(0.9),
                          Colors.lightBlueAccent.withOpacity(0.3),
                          Colors.lightBlueAccent.withOpacity(0.2),
                          Colors.lightBlueAccent.withOpacity(0.1),
                          Colors.lightBlueAccent.withOpacity(0.1),
                        ],
                      ),
                    ),
                    dotData: FlDotData(show: false)),
              ],
              titlesData: FlTitlesData(
                show: true,
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                    getTitlesWidget: leftTitleWidgets,
                    reservedSize: 20,
                    interval: 0.5,
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: bottomTitleWidgets,
                    reservedSize: 60,
                    interval: 1,
                  ),
                ),
              ),
            ),
            swapAnimationDuration: Duration(milliseconds: 800), // Optional
            swapAnimationCurve: Curves.bounceIn, // Optional
          ),
        ),
      ),
    );
  }
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 10,
      decoration: TextDecoration.none);
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('JAN', style: style);
      break;
    case 1:
      text = const Text('FEB', style: style);
      break;
    case 2:
      text = const Text('MAR', style: style);
      break;
    case 3:
      text = const Text('APRIL', style: style);
      break;
    case 4:
      text = const Text('MAY', style: style);
      break;
    case 5:
      text = const Text('JUN', style: style);
      break;
    case 6:
      text = const Text('JUL', style: style);
      break;
    case 7:
      text = const Text('AUG', style: style);
      break;
    case 8:
      text = const Text('SEP', style: style);
      break;
    case 9:
      text = const Text('OCT', style: style);
      break;
    case 10:
      text = const Text('NOV', style: style);
      break;
    case 11:
      text = const Text('DEC', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18,
      decoration: TextDecoration.none);
  String text;
  switch (value.toInt()) {
    case 1:
      text = '10K';
      break;
    case 3:
      text = '30k';
      break;
    case 4:
      text = '50k';
      break;
    default:
      return Container();
  }
  return Text(text, style: style, textAlign: TextAlign.right);
}

class SepContainers extends StatefulWidget {
  String stockname;
  double price;

  SepContainers(this.stockname, this.price);

  @override
  State<SepContainers> createState() => _SepContainersState();
}

class _SepContainersState extends State<SepContainers> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
              child: GraphPage(),
              type: PageTransitionType.bottomToTop,
              duration: Duration(milliseconds: 1000),
            ),
          );
        },
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(1),
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 10, 35, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${widget.stockname}",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Sono",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "\$${widget.price}",
                style: TextStyle(
                  color: Colors.indigoAccent,
                  wordSpacing: -5,
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  fontFamily: "Sono",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatefulWidget {
  String image;
  Avatar({required this.image});
  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    var image = widget.image;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProfilePage())),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(
              'images/$image.jpg',
            ),
          ),
        ),
      ),
    );
  }
}

class Assets_Card extends StatefulWidget {
  const Assets_Card({
    Key? key,
  }) : super(key: key);

  @override
  State<Assets_Card> createState() => _Assets_CardState();
}

class _Assets_CardState extends State<Assets_Card> {
  Color _colorContainer = Colors.black;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _colorContainer = Color(0xFF5C5D5E).withOpacity(0.1);
        });
      },
      child: Container(
        height: 90,
        width: double.maxFinite,
        margin: new EdgeInsets.only(left: 0.0),
        decoration: new BoxDecoration(
          color: _colorContainer,
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
