
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'container_provider.dart';

class RedContainer extends StatelessWidget {
  const RedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final container = context.watch<ContainerProvider>();

    return Container(
      width: container.width,
      height: container.height,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(container.radius),
        ),
      ),
    );
  }
}
