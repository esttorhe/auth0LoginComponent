# authLoginComponent

[![CI Status](http://img.shields.io/travis/Esteban Torres/authLoginComponent.svg?style=flat)](https://travis-ci.org/Esteban Torres/authLoginComponent)
[![Version](https://img.shields.io/cocoapods/v/authLoginComponent.svg?style=flat)](http://cocoapods.org/pods/authLoginComponent)
[![License](https://img.shields.io/cocoapods/l/authLoginComponent.svg?style=flat)](http://cocoapods.org/pods/authLoginComponent)
[![Platform](https://img.shields.io/cocoapods/p/authLoginComponent.svg?style=flat)](http://cocoapods.org/pods/authLoginComponent)

## Usage

Just import `auth0LoginComponent` into your `UIViewController` ad call:
```swift
Auth0LoginComponent.presentLoginViewControllerWithPresenterController(self, successHandler: { token in
  // Store the token      
  }, errorHandler: { error in
    // Receive an `ErrorType` object.
  })
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

### `LinkedIn` `SDK`

Follow the same instructions to configure the `LinkedIn` `SDK` from [their documentation here](https://developer.linkedin.com/docs/ios-sdk).
Here's an extract of the important parts:

>#### Configure your Bundle ID
>
>Associate your iOS application with your LinkedIn application by configuring your Bundle ID value(s) within your LinkedIn application.  Multiple Bundle ID values allow a collection of applications (e.g. trial vs. free versions, a suite of related apps, etc.) to leverage the same LinkedIn application privileges and access tokens.
>![](https://content.linkedin.com/content/dam/developer/global/en_US/site/img/ios-bundle-ids.png)
>
>#### Determine your LinkedIn App ID value
>
>Before you can make the necessary changes to your `Info.plist` file, you need to know what your LinkedIn application’s `Application ID` is.
>
>As seen above, it can be found on the “Mobile” settings page, listed directly underneath the “iOS Settings” header, within the application management tool.
>
>#### Configure your application's info.plist
>
>Locate the `Supporting Files -> Info.plist` file in your Xcode project and add the following values.
>
>Note the two locations within the file where you need to substitute your LinkedIn `Application ID` value:

>**`info.plist`**
>```plist
><key>LIAppId</key>
><string>{Your LinkedIn app ID}</string>
>
><key>CFBundleURLTypes</key>
><array>
>	<dict>
>		<key>CFBundleURLSchemes</key>
>		<array>
>			<string>li{Your LinkedIn app ID}</string>
>		</array>
>	</dict>
></array>
>```
>
>Once complete, your application properties should look like this:
>![](https://content.linkedin.com/content/dam/developer/global/en_US/site/img/xcode-application-properties.png)

### `auth0`
Follow the instructions from the [`auth0` `API` docs](https://auth0.com/docs/quickstart/native-mobile/ios-swift/no-api).
Important parts are here:

>#### Configure Auth0 Lock for iOS
>
>Add the following entries to your app's `Info.plist`:
>
>|**Key**|**Value**|
>|----|--------|
>|**Auth0ClientId**|*`<Your Auth0 ClientId>`*|
>|**Auth0Domain**|*`<Your Auth0 Domain>`*|
>
>Also you'll need to register a new *URL Type* with the following scheme *`<Your url scheme>`*. You can do this in your App's Target menu, in the Info section.
>![](https://cloudup.com/cwoiCwp7ZfA+)

## Installation

authLoginComponent is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "authLoginComponent"
```

## Author

Esteban Torres, me@estebantorr.es

## License

authLoginComponent is available under the MIT license. See the LICENSE file for more info.
