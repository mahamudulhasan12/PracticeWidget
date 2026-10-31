import 'package:flutter/material.dart';
import 'package:grid_view_practrice/responsive%20desing/widget/dashbord/dashbord.dart';
import 'package:grid_view_practrice/responsive%20desing/widget/resonsive_layout.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ResponsiveLayout(mobile: MobileDashboard(), desktop: DesktopDashboard(),tablet: TabletDashboard(),),
    );
  }
}
