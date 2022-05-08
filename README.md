## Installation

- Check if you are in the beta channel of flutter SDK and the version ">=2.16.1 <3.0.0". [Instruction to change flutter channel](https://github.com/flutter/flutter/wiki/Flutter-build-release-channels#how-to-change-channels).
- Clone the repo
  ```sh
  git clone https://github.com/dmontil/rick-Morty.git
  ```
- And then we can use the normal build and run procedure
  ```sh
  flutter pub get
  flutter run
  ```
- Some files like `*.freezed.dart`, `*.g.dart`, `*.mocks.dart` are auto generated. If there is any issue from these files just run this command to regenerate them.
  ```sh
  flutter pub run build_runner watch --delete-conflicting-outputs
  ```

## Screenshots

<p>
<img src="https://user-images.githubusercontent.com/24372906/167292393-e867e429-73b1-4636-859f-37c4c9037171.png" alt="Screen 1" width="250">
<img src="https://user-images.githubusercontent.com/24372906/167292394-94d96b65-9162-4465-b4f8-8993689d09ce.png" alt="Screen 2" width="250">
  <img src="https://user-images.githubusercontent.com/24372906/167292395-000e080e-d6e5-4093-a440-e79488fe33a8.png" alt="Screen 3" width="250">
  <img src="https://user-images.githubusercontent.com/24372906/167292396-43a8459e-d39c-48ce-9f1c-f32557cca959.png" alt="Screen 3" width="250">

</p>