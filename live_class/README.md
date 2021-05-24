# live_class

A Implementation of Jitsi Video Conferencing SDK in Flutter APP.

## Adding Configuration to AndroidManifest.xml

- adding permissions first in "<" uses-permission PERMISSION "/>"

 android:name="android.permission.INTERNET"
 
 android:name="android.permission.CAMERA"
 
 android:name="android.permission.RECORD_AUDIO"
 
 android:name="android.permission.MODIFY_AUDIO_SETTINGS"
 
 android:name="android.permission.VIDEO_CAPTURE"
 
 android:name="android.permission.AUDIO_CAPTURE"

- adding label

<application
             
        android:label="Fly Learn"
             
        tools:replace="android:label" // add this line
             
        android:icon="@mipmap/ic_launcher">
  

## Configure build.gradle file
  
change minSdkVersion 23
  
add below line 

buildTypes {
        release {
             // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig signingConfigs.debug

            minifyEnabled true //add line
  
            useProguard true  // add line
  
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro' //add line
        }
    }
    

## Adding Proguard-rules.pro file in your app (medatory)
  
  - copy file from above zip and include in your app

## Adding Jitsi plugin in pubspec.yaml file
  
  jitsi_meet: ^4.0.0
  
  permission_handler: ^7.1.0
  
  or visit https://pub.dev for latest "jitsi_meet" plugin
  
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
