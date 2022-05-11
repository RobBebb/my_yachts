import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_yachts/src/data/data.dart';
import 'package:my_yachts/src/data/repository.dart';

import 'src/features/yachts/application/yacht_manager.dart';
import 'src/features/yachts/domain/domain.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

late Repository<Yacht> yachtRepository;

late StateNotifierProvider<YachtManager, YachtState> yachtManagerProvider;

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Create the full Yacht Repository
  yachtRepository = Repository<Yacht>(
    sourceList: [
      LocalMemorySource<Yacht>(),
    ],
  );

  yachtManagerProvider = StateNotifierProvider<YachtManager, YachtState>(
    (ref) => YachtManager(yachtRepository),
  );
}
