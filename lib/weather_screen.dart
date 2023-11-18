import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additional_info_item.dart';
import 'package:weather_app/hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather APP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('refresh button');
            },
            icon: const Icon(Icons.refresh_sharp),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main card
            // const Placeholder(
            //   fallbackHeight: 250,
            // ),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            '64564*F',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Icon(Icons.cloud, size: 80),
                          SizedBox(height: 20),
                          Text(
                            'Rain',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Weather Forecast',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 16),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                    icon: Icons.sunny_snowing,
                    temperature: '54',
                    time: '12:00',
                  ),
                  HourlyForecastItem(
                    icon: Icons.sunny,
                    temperature: '54',
                    time: '12:00',
                  ),
                  HourlyForecastItem(
                    icon: Icons.heart_broken,
                    temperature: '54',
                    time: '12:00',
                  ),
                  HourlyForecastItem(
                    icon: Icons.cloud_off_sharp,
                    temperature: '54',
                    time: '12:00',
                  ),
                  HourlyForecastItem(
                    icon: Icons.cloudy_snowing,
                    temperature: '54',
                    time: '12:00',
                  ),
                ],
              ),
            ),

            // const Placeholder(
            //   fallbackHeight: 150,
            // ),

            const SizedBox(height: 20),
            const Text(
              'Additional Information',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 16),

            // const Placeholder(
            //   fallbackHeight: 150,
            // ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoItem(
                    icon: Icons.water_drop, label: 'Humidity', value: '91'),
                AdditionalInfoItem(
                  icon: Icons.air,
                  label: 'Pollution',
                  value: '78',
                ),
                AdditionalInfoItem(
                  icon: Icons.beach_access,
                  label: 'Umbrella',
                  value: '44',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
