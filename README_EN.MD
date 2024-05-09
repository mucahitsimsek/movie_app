# Interview - Mücahit Şimşek
- Hello, I completed my case with the Figma UI view below. 
I proceeded with color selections and UI resemblances.
Please continue reading for installations.

- [Figma](https://www.figma.com/file/DT6W6xxKcXql8zjC3zNJ8h/Movies-app-(Community)?type=design&node-id=0-1&mode=design&t=LWVzr0UwZFvmC9vA-0)

# Flutter Setup
- Let's get our flutter resource files by using the 'flutter pub get' command in the Root folder of the project.

# Navigation Setup
- I used the [AutoRoute](https://pub.dev/packages/auto_route) package in the case.
As a result of the package, we need to use [build_runner](https://pub.dev/packages/build_runner).

- You need to use the 'flutter packages pub run build_runner build --delete-conflicting-outputs' command in the terminal (in the Root folder of the project).

# Modules Setup
- I created two modules named Common and Gen. It can be called as a local package.

- In the 'module' folder in the Root folder of the project, we have the [Module Folder](/module) and our 'gen' folder [Gen Folder](/module/gen). 
While in this folder, you need to use the 'flutter packages pub run build_runner build --delete-conflicting-outputs' command in the terminal.

# Native Splash Setup
- This is an additional section added outside the case. Native Splash should be installed by default. However, in case it is not installed, you need to use the command below in the Root folder of the project. [Root](/)

- dart run flutter_native_splash:create --path=flutter_native_splash.yaml


# Initialized App
![Image](/screenshots/app_initialize.png)

# Contact
- mucahitsmsk74@gmail.com
- +90 (545) 455 78 01