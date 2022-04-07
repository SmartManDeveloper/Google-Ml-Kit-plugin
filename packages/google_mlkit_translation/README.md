# Google's ML Kit On-Device Translation for Flutter

[![Pub Version](https://img.shields.io/pub/v/google_mlkit)](https://pub.dev/packages/google_mlkit)

A Flutter plugin to use [Google's ML Kit On-Device Translation](https://developers.google.com/ml-kit/language/translation).

## Getting Started

Before you get started read about the requirements and known issues of this plugin [here](https://github.com/bharat-biradar/Google-Ml-Kit-plugin).

## Usage

#### 1. Create an instance of translator

```dart
final onDeviceTranslator = OnDeviceTranslator();
```

#### 2. Process text

```dart
final String response = await onDeviceTranslator.translateText(text);
```

#### 3. Release resources with `close()`

```dart
onDeviceTranslator.close();
```
## Managing language models

#### 1. Create an instance of model manager.

```dart
final translateLanguageModelManager = TranslateLanguageModelManager();
```

#### 2. Check if model is downloaded.

```dart
final String response = await translateLanguageModelManager.isModelDownloaded(TranslateLanguage.english);
```
#### 3. Download model.

```dart
final String response = await translateLanguageModelManager.downloadModel(TranslateLanguage.english);
```
#### 4. Delete model.

```dart
final String response = await translateLanguageModelManager.deleteModel(TranslateLanguage.english);
```

#### 5. Get all available models.

```dart
final List<String> response = await translateLanguageModelManager.getAvailableModels();
```

## Example app

Look at this [example](https://github.com/bharat-biradar/Google-Ml-Kit-plugin/tree/master/packages/google_mlkit/example) to see the plugin in action.

## Contributing

Contributions are welcome.
In case of any problems look at [existing issues](https://github.com/bharat-biradar/Google-Ml-Kit-plugin/issues), if you cannot find anything related to your problem then open an issue.
Create an issue before opening a [pull request](https://github.com/bharat-biradar/Google-Ml-Kit-plugin/pulls) for non trivial fixes.
In case of trivial fixes open a [pull request](https://github.com/bharat-biradar/Google-Ml-Kit-plugin/pulls) directly.