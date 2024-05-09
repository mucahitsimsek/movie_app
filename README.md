# Interview - Mücahit Şimşek
- Merhaba, Case'imi aşağıda bulunan Figma UI görünümü ile tamamladım. 
Renk seçimleri ve UI benzetmelerini kapsayacak şekilde ilerledim.
Kurulumlar için okumaya devam ediniz.

- [Figma](https://www.figma.com/file/DT6W6xxKcXql8zjC3zNJ8h/Movies-app-(Community)?type=design&node-id=0-1&mode=design&t=LWVzr0UwZFvmC9vA-0)

# Flutter Setup
- Projenin Root(Ana) klasöründe 'flutter pub get' komutunu terminalde kullanarak flutter için kaynak dosyalarımızı getirelim.

# Navigation Setup
- Casede [AutoRoute](https://pub.dev/packages/auto_route) paketini kullandım.
Paketin getirisi olarak [build_runner](https://pub.dev/packages/build_runner) kullanmak gerekmekte. 

- Terminalde (Projenin Root(Ana) klasöründe) 'flutter packages pub run build_runner build --delete-conflicting-outputs' komutunu kullanmanız gerekmektedir.

# Modules Setup
- Common ve Gen adında iki adet module oluşturdum. Yerel paket olarak adlandırılabilir. 

- Projenin Root(Ana) klasöründe 'module' adında klasörümüzde [Module Klasörü](/module) 'gen' klasörümüz [Gen Klasörü](/module/gen) bulunmaktadır. 
Bu klasörün içerisindeyken terminalde 'flutter packages pub run build_runner build --delete-conflicting-outputs' komutunu kullanmamız gerekmektedir.

# Native Splash Setup
- Case harici eklemiş olduğum bölümdür. Native Splash hali hazırda kurulu olması gerekmektedir. Lakin kurulu olmaması ihtimaline karşın aşağıdaki komutu projenin root klasöründe kullanmanız gerekmektedir. [Root](/)

- dart run flutter_native_splash:create --path=flutter_native_splash.yaml


# Initialized App
![Image](/screenshots/app_initialize.png)

# Contact
- mucahitsmsk74@gmail.com
- +90 (545) 455 78 01
