
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'container_provider.dart';

class SlidersSection extends StatelessWidget {
  const SlidersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final container = context.watch<ContainerProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSlider(
          context,
          'Width',
          container.width,
              (value) {
            context.read<ContainerProvider>().setWidth(value);
          },
        ),
        _buildSlider(
          context,
          'Height',
          container.height,
              (value) {
            context.read<ContainerProvider>().setHeight(value);
          },
        ),
        _buildSlider(
          context,
          'Radius',
          container.radius,
              (value) {
            context.read<ContainerProvider>().setRadius(value);
          },
        ),
      ],
    );
  }

  Widget _buildSlider(
      BuildContext context,
      String title,
      double value,
      ValueChanged<double> onChanged,
      ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 12,
            top: 4,
          ),
          child: Text(
            '$title: ${value.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
        Slider(
          value: value,
          min: 0,
          max: 150,
          activeColor: const Color(0xFF67508A),
          inactiveColor: const Color(0xFFDDD6E3),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
