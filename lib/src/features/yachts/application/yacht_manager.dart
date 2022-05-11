import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_yachts/src/data/repository.dart';

import '../domain/domain.dart';

class YachtManager extends StateNotifier<YachtState> {
  YachtManager(Repository<Yacht> yachtRepository)
      : _repository = yachtRepository,
        super(YachtState.initial());

  final Repository<Yacht> _repository;

  Future<void> saveYacht(Yacht yacht) async => _repository.setItem(yacht);

  Future<List<Yacht>> get yachts => _repository.getItems();

  Future<Yacht?> getYacht(String id) async => _repository.getItem(id);

  void deleteYacht(Yacht yacht) async => _repository.deleteItem(yacht);
}
