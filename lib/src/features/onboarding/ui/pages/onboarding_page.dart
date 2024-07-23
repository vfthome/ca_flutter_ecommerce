import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/services/i_onboarding_controller_service.dart';
import 'package:ca_flutter_test/src/features/onboarding/ui/widgets/company_logo.dart';
import 'package:ca_flutter_test/src/features/onboarding/ui/widgets/conta_azul_leafs.dart';
import 'package:ca_flutter_test/src/features/onboarding/ui/widgets/next_button.dart';
import 'package:ca_flutter_test/src/features/onboarding/ui/widgets/onboarding_page_view.dart';
import 'package:ca_flutter_test/src/features/onboarding/ui/widgets/previous_button.dart';
import 'package:ca_flutter_test/src/features/onboarding/ui/widgets/skip_button.dart';
import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';
import 'package:ca_flutter_test/src/shared/modules/responsive_layout/ui/responsive_layout.dart';
import 'package:ca_flutter_test/src/shared/widgets/progress_indicator/page_view_indicator/page_view_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with SingleTickerProviderStateMixin, HookStateMixin {
  //* --- PARAMETERS ---
  late PageController _controller;
  final onboardingService = Modular.get<IOnboardingControllerService>();

  //* --- INIT STATE METHOD ---
  @override
  void initState() {
    super.initState();

    // PAGE CONTROLLER INITIALIZATION
    _controller = PageController(
      initialPage: 0,
    );

    // SCROLL EVENT SUBSCRIPTION
    _controller.addListener(
      () {
        if (mounted) {
          onboardingService.scrollEvent(
            currentPage: (_controller.page ?? 0).round(),
          );
        }
      },
    );
  }

  //* --- DISPOSE METHOD ---
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //* --- BUILD METHOD ---
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileLayout: Stack(
        children: [
          //* Background
          Container(color: ds.colors.primary),

          //* Page view
          OnboardingPageView(controller: _controller),

          //* Logo
          const Align(
            alignment: Alignment(0, -0.67),
            child: ContaAzulLogo(),
          ),

          //* Conta Azul Leafs
          const Align(
            alignment: Alignment(0, 0.76),
            child: ContaAzulLeafs(),
          ),

          Align(
            alignment: const Alignment(0, 0.55),
            child: Align(
              alignment: const Alignment(0, 0.55),
              child: AtomBuilder(builder: (context, get) {
                //* Acess the current state with the exposed service method.
                final onboardingControllerState =
                    Modular.get<IOnboardingControllerService>().state;

                //* Listen for changes in the current page atom
                final currentPage =
                    get(onboardingControllerState.currentPageAtom);

                return PageViewProgressBar(currentPage: currentPage);
              }),
            ),
          ),

          //* Next button
          const Align(alignment: Alignment(1, 1), child: NextButton()),

          //* Previous button
          const Align(alignment: Alignment(-1, 1), child: PreviousButton()),

          //* Skip button
          const Align(alignment: Alignment(1, -1), child: SkipButton()),
        ],
      ),
    );
  }
}
