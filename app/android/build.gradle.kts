allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

// workmanager_android 0.9.x tidak memasang `kotlin-android` pada AGP >= 9 (mengandalkan built-in Kotlin),
// sedangkan template Flutter menyetel android.builtInKotlin=false → sumber Kotlin plugin tidak dikompilasi.
// Terapkan plugin Kotlin secara eksplisit untuk subproject tersebut.
subprojects {
    if (name == "workmanager_android") {
        plugins.withId("com.android.library") {
            apply(plugin = "org.jetbrains.kotlin.android")
            extensions.configure<org.jetbrains.kotlin.gradle.dsl.KotlinAndroidProjectExtension>("kotlin") {
                compilerOptions.jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_1_8)
            }
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
