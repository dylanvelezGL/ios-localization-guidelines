# FoodApp

FoodApp is a personal project with the purpose of showcasing how to streamline localization with Xcode 13 and SwiftUI
<img src="https://drive.google.com/uc?export=view&id=13RYn9PPiEuZVt70hseBFlr_qSGHpdvuR" width="200" />
<img src="https://drive.google.com/uc?export=view&id=1F1USu0bqAZd8MHtf33dxN-kHl-0kxJF_" width="200" />
<img src="https://drive.google.com/uc?export=view&id=1-kYmQD2cksWzqSl4ktph0TctORZ5P9_V" width="200" />

You can change the locale of the app at any time in the settings menu but you need to restart the app afterwards for it to be effective.

<img src="https://drive.google.com/uc?export=view&id=1dG57M1_th7perN34x6X-EoPkmdO2Qon0" width="200"/>
## Blog Post

This app is to be accompanied by a blog post explaining a bit more about the whole localization and internationalization process. This README will be updated when that's done.

## Requirements

[Xcode 13](https://download.developer.apple.com/Developer_Tools/Xcode_13_beta/Xcode_13_beta.xip) beta or later

[Access the downloads page for apple here](https://developer.apple.com/download/all/)

## Installation

Just clone the project, run it with Xcode 13 beta or later and that's it!.

# Localization Guidelines

What I propose is simple. Just create a protocol which defines an associated type (this type should be a struct or enum where you will hold your localizables) and extend any view, viemodel, model or whatever type you want with the protocol. This way, every single object type knows and only cares about it's own strings and assets. This decoupling makes it easier to know which object is using which text and where it is located.

## Should you localize?

Localization to different languages and cultures is not something that is mandatory, it varies on a project by project basis. However, there are some good practices that you can follow as a developer not only for localization purposes but to help you streamline the use of static text and assets in your project. 

## What should I take into consideration?

- **Centralize the use of static text and assets**: This is probably the most important practice, since you don't really want strings of text laying all around your codebase, possibly being duplicated which means a fix in a typo somewhere might not fix it somewhere else. The same applies to assets, you might want to have the name of an image you use extensibly in your project on a single file where you know that is the only place you need to look for when doing anything related to it.

- **Consider allowing switching languages inside the app**: Switching languages inside the app is a good accessibility feature that you can develop so your user can have the app in the language they prefer.

- **Use `LocalizedStringKey` where possible**: SwiftUI Previews now support localization from string literals in most of their components and you can change the locale in the preview itself. The current problem with it is that for it to be able to preview easily in different locales, your static localized strings should be of subtype `LocalizedStringKey`. You can create a simple extension variable for this.

- **Use of `.stringsdict` is still manual**: Xcode 13 has made it so you don't have to create a `.strings` file since it will gather all the strings and localizables of your project and export it to a localization catalog and then when you import the localized catalog, it should create all the required localized files. However, this is still a manual process with `.stringsdict` files, so you have to first create the file, define your keys and your base localization and then continue the process as normal by exporting the catalog and importing it when it's localized.

# How to do it

## Switching languages

Just write to the user defaults `AppleLanguages` Key whatever language you want the app to be in. However you need to restart the app for the changes to take effect.

```Swift
UserDefaults.standard.set(["en"], forKey: "AppleLanguages")
```

## Centralized Localization

The idea here is to namespace static localizable text and assets under structs, where the name of the structs declare the purpose of where the localization is going to be applied. 

```Swift
struct Localization {
    struct App {
        static let foodApp = String(localized: "Food App", comment: "Title of the app in the navigation")
        static let food = String(localized: "Food", comment: "Tab bar item")
        static let settings = String(localized: "Settings", comment: "Tab bar item")
    }
}

// Welcome+Localization.swift file
extension Localization {
    struct Welcome {
        static let moreInfo = AttributedString(localized: "For more info please visit the blog post [here](https://gorillalogic.com/blog/) or visit the github [page](https://github.com/DylanVelezCode/ios-localization-guidelines)", comment: "Text with links to know more about the project")
        static let welcome = String(localized: "Welcome to FoodApp", comment: "Title of the welcome screen")
        static let welcomeText = String(localized: "This app was made with the purpose of teaching some localization strategies. \nIt includes localization for English, Spanish and Arabic and you can switch between the locales at any time in the settings screen.", comment: "Purpose of the app")
    }
}
```

##### **Usage:**
```Swift
Text(Localization.Welcome.moreInfo)
```

##### Notes

- I've defined a `Localization` struct which will contain all the structs with the localized strings. Each localized string or asset should be contained by the module using it. If you have common strings being used in several parts of the app without any clear hierarchy, you can define a `Common` struct or if the string or asset is general but the feature using it has some common properties, please use a better name like `Food` for all common food related strings.

- Note the usage of the `String(localized:)` initializer, this way you can have Xcode extract the string literal inside it and set it up for localization.

- You can also use `AttributedString(localized: )` for localized attributed strings

- Please **Always** try to include a comment for the localized string, so your translators have more context when doing their job

## Localized Protocol

I've created a protocol with just an associated type. The idea here is that every type conforming to that protocol, can define which strings from the `Localization` namespace it's going to use.

```Swift
protocol Localized {
    associatedtype Strings
}
```

### Usage:

```Swift
extension PurposePageView: Localized {
    struct Strings {
        static let moreInfo = Localization.Welcome.moreInfo
        static let welcome = Localization.Welcome.welcome
        static let welcomeText = Localization.Welcome.welcomeText
    }
}
```
This way, whenever I need to use a localized string in the `PurposePageView` I can just call the code like this

```Swift
Text(Strings.welcome)
```

## Example View

```Swift
struct PurposePageView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 40)
            Text(Strings.welcome.localizedStringKey)
                .font(.largeTitle)
            Spacer()
                .frame(height: 40)
            Image("groceries")
            Spacer()
                .frame(height: 40)
            Text(Strings.welcomeText.localizedStringKey)
                .font(.footnote)
                .padding()
            Spacer()
                .frame(height: 20)
            Text(Strings.moreInfo)
                .font(.headline)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
```

## Importing and exporting localization

Xcode 13 now gives us a better ease of use for the localization process. You only need to make sure the `Use Compiler to Extract Swift Strings` option is enabled in the build settings and then the only thing you need to do is click `product` -> `export localizations` and when you're ready to import the localized stuff, just click `product` -> `import localizations`

## Contributing
Pull requests are welcome. You can open an issue for discussion purposes if you want to contribute a more streamlined experience for localization on iOS

## License
[MIT](https://choosealicense.com/licenses/mit/)
