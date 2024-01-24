import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/wellcome_controller.dart';

class WellcomeView extends StatefulWidget {
  const WellcomeView({Key? key}) : super(key: key);

  Widget build(context, WellcomeController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Discover",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                "Find and access educational content easily",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                height: 250.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1628258334105-2a0b3d6efee1?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              QOutlineButton(
                label: "Start learning",
                onPressed: () => Get.to(LoginView()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<WellcomeView> createState() => WellcomeController();
}
