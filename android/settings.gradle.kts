import java.util.Properties

pluginManagement {
  repositories {
    google()
    gradlePluginPortal()
    mavenCentral()
  }
}

dependencyResolutionManagement {
  repositories {
    google()
    gradlePluginPortal()
    mavenCentral()
  }
}

plugins {
  `gradle-enterprise`
}

gradleEnterprise {
  buildScan {
    termsOfServiceUrl = "https://gradle.com/terms-of-service"
    termsOfServiceAgree = "yes"
    publishAlways()
  }
}

rootProject.name = "flutter-app-template"

include(":app")

val localPropertiesFile = File(rootProject.projectDir, "local.properties")
val properties = Properties()

assert(localPropertiesFile.exists())
localPropertiesFile.reader().use { reader -> properties.load(reader) }

val flutterSdkPath = properties.getProperty("flutter.sdk")
assert(flutterSdkPath != null) { "flutter.sdk not set in local.properties" }
apply("$flutterSdkPath/packages/flutter_tools/gradle/app_plugin_loader.gradle")
