import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:sample_flutter_app_01/components/toolbar.dart';
import 'package:sample_flutter_app_01/configurations/app_strings.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.nearby,
      ),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(
            12.9692,
            79.1559,
          ),
          initialZoom: 15,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.vit.vellore',
            // Plenty of other options available!
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(
                  12.9692,
                  79.1559,
                ),
                child: Icon(
                  Icons.location_on,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
