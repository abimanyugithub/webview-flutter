# Webview Flutter
1. Edit android / app / **build.gradle** ```minSdkVersion 20``` ```targetSdkVersion 30```
2. Instal paket webview ```flutter pub add webview_flutter```
3. Copy code program

   NB. Muncul error **'net::ERR_CLEARTEXT_NOT_PERMITTED'** di halaman program?
   - Edit android / app / src / main / **AndroidManifest.xml** Tambahkan ```android:usesCleartextTraffic="true"```
