import 'dart:async';

import 'package:flutter/services.dart';

/// Class to manage firebase remote models.
class RemoteModelManager {
  static const MethodChannel _channel =
      MethodChannel('google_ml_kit_remote_model');

  Future<bool> isModelDownloaded(String modelName) async {
    final result = await _channel.invokeMethod('vision#manageRemoteModel',
        <String, dynamic>{'task': 'check', 'model': modelName});
    return result as bool;
  }

  /// Downloads a model.
  /// Returns `success` if model downloads successfully or model is already downloaded.
  /// On failing to download it throws an error.
  Future<String> downloadModel(String modelTag,
      {bool isWifiRequired = true}) async {
    final result = await _channel.invokeMethod(
        'vision#manageRemoteModel', <String, dynamic>{
      'task': 'download',
      'model': modelTag,
      'wifi': isWifiRequired
    });
    return result.toString();
  }

  /// Deletes a model.
  /// Returns `success` if model is deleted successfully or model is not present.
  Future<String> deleteModel(String modelTag) async {
    final result = await _channel
        .invokeMethod('vision#manageRemoteModel', <String, dynamic>{
      'task': 'delete',
      'model': modelTag,
    });
    return result.toString();
  }
}
