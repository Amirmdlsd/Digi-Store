import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HoursChart extends StatelessWidget {
  const HoursChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 24,
        minY: 0,
        maxY: 50,
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 10),
              FlSpot(1, 20),
              FlSpot(2, 15),
              FlSpot(3, 30),
              // Add more data points for each hour of the day
            ],
            isCurved: true,
            barWidth: 3,
          ),
        ],
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, _) {
                return Text('${value.toInt()}h');
              },
            ),
          ),
        ),
      ),
    );
  }
}

class DailyChart extends StatelessWidget {
  const DailyChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 1,
        maxX: 31,
        minY: 0,
        maxY: 100,
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(1, 50),
              FlSpot(2, 60),
              FlSpot(3, 40),
              FlSpot(4, 70),
              // Add more data points for each day of the month
            ],
            isCurved: true,
            barWidth: 3,
          ),
        ],
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, _) {
                return Text(value.toInt().toString());
              },
            ),
          ),
        ),
      ),
    );
  }
}

class YearsChart extends StatelessWidget {
  const YearsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 2020,
        maxX: 2024,
        minY: 0,
        maxY: 500,
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(2020, 300),
              FlSpot(2021, 350),
              FlSpot(2022, 320),
              FlSpot(2023, 400),
              // Add more data points for each year
            ],
            isCurved: true,
            barWidth: 3,
          ),
        ],
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, _) {
                return Text(value.toInt().toString());
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MonthlyChart extends StatelessWidget {
  const MonthlyChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 1,
        maxX: 12,
        minY: 0,
        maxY: 100,
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(1, 30),
              FlSpot(2, 45),
              FlSpot(3, 60),
              FlSpot(4, 55),
              // Add more data points for each month
            ],
            isCurved: true,
            barWidth: 3,
          ),
        ],
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, _) {
                switch (value.toInt()) {
                  case 1:
                    return Text('Jan');
                  case 2:
                    return Text('Feb');
                  case 3:
                    return Text('Mar');
                  case 4:
                    return Text('Apr');
                  // Add titles for all months
                }
                return Text('');
              },
            ),
          ),
        ),
      ),
    );
  }
}
