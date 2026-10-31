import 'package:flutter/material.dart';

// ১. মোবাইলের জন্য ডিজাইন
class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: const Center(
        child: Text('মোবাইল ভিউ: এখানে শুধু সিঙ্গেল কলাম লিস্ট থাকবে।'),
      ),
    );
  }
}

// ২. ট্যাবলেটের জন্য ডিজাইন
class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100],
      child: const Center(
        child: Text('ট্যাবলেট ভিউ: এখানে গ্রিড ভিউ বা ২ কলাম লেআউট থাকবে।'),
      ),
    );
  }
}

// ৩. ডেক্সটপ বা ওয়েবের জন্য ডিজাইন
class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      child: const Center(
        child: Text('ডেক্সটপ ভিউ: এখানে বামে নেভিগেশন রেল এবং ডানে মেইন কন্টেন্ট থাকবে।'),
      ),
    );
  }
}