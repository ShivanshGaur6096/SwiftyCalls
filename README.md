# SwiftyCalls

SwiftyCalls is a powerful framework designed to enable seamless call capabilities in your iOS app. It provides an easy-to-use interface for handling WebRTC calls, making it simple to integrate high-quality voice communication into your project.

## Features
- WebRTC-based call handling
- Easy integration with minimal setup
- Supports both real and simulated devices
- Lightweight and optimized for performance

---

## Installation

SwiftyCalls is available through [CocoaPods](https://cocoapods.org/pods/SwiftyCalls). To install it, simply add the following line to your Podfile:

```ruby
pod 'SwiftyCalls'
```

Or, specify a specific version:

```ruby
pod 'SwiftyCalls', '~> 0.0.1'
```

Then, run:

```sh
pod install
```

---

## Building SwiftyCalls as an XCFramework

To generate an XCFramework, run the following commands:

```sh
xcodebuild archive \
    -scheme SwiftyCalls \
    -destination "generic/platform=iOS" \
    -archivePath "build/iOS.xcarchive" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
    -scheme SwiftyCalls \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "build/iOS-Simulator.xcarchive" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
    -framework "build/iOS.xcarchive/Products/Library/Frameworks/SwiftyCalls.framework" \
    -framework "build/iOS-Simulator.xcarchive/Products/Library/Frameworks/SwiftyCalls.framework" \
    -output "SwiftyCalls.xcframework"
```

---

## Creating a `.podspec` File

To create a `.podspec` file, run:

```sh
pod spec create SwiftyCalls
```

Modify the generated `SwiftyCalls.podspec` file as follows:

### If Publishing an XCFramework:
```ruby
Pod::Spec.new do |spec|
  spec.name         = "SwiftyCalls"
  spec.version      = "0.0.1"
  spec.summary      = "SwiftyCalls provides an easy-to-use interface for handling WebRTC calls."
  spec.description  = "A detailed description of what SwiftyCalls does."
  spec.homepage     = "https://github.com/ShivanshGaur6096/SwiftyCalls"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Shivansh Gaur" => "shivansh.gaur@gmail.com" }
  spec.source       = { :git => "https://github.com/ShivanshGaur6096/SwiftyCalls.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = "12.0"
  spec.vendored_frameworks = "SwiftyCalls.xcframework"
  spec.frameworks = "Foundation", "UIKit"
end
```

### If Publishing Source Files Instead of an XCFramework:
```ruby
Pod::Spec.new do |spec|
  spec.name         = "SwiftyCalls"
  spec.version      = "0.0.1"
  spec.summary      = "SwiftyCalls provides an easy-to-use interface for handling WebRTC calls."
  spec.description  = "A detailed description of what SwiftyCalls does."
  spec.homepage     = "https://github.com/ShivanshGaur6096/SwiftyCalls"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Shivansh Gaur" => "shivansh.gaur@gmail.com" }
  spec.source       = { :git => "https://github.com/ShivanshGaur6096/SwiftyCalls.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = "12.0"
  spec.source_files  = "SwiftyCalls/**/*.{h,m,swift}"
  spec.frameworks = "Foundation", "UIKit"
end
```

---

## Publishing a New Version to CocoaPods

### Step 1: Tag the New Version
Before publishing, ensure your `.podspec` version matches your Git tag:

```sh
git tag 0.0.1
git push origin 0.0.1
```

### Step 2: Validate the Podspec

Run the following command to validate your podspec before pushing:

```sh
pod spec lint SwiftyCalls.podspec --verbose
```

If the validation fails, fix any errors and re-run the command.

### Step 3: Publish to CocoaPods

First-time users need to register their CocoaPods account:

```sh
pod trunk register shivanshgaur96@gmail.com "Shivansh Gaur"
```

You will receive an email—click the link to verify your account.

Once registered, publish the pod:

```sh
pod trunk push SwiftyCalls.podspec --allow-warnings
```

This makes `SwiftyCalls` available for all CocoaPods users.

---

## Updating SwiftyCalls

Whenever you update the framework, follow these steps to publish the changes:

1. **Update the version number** in `SwiftyCalls.podspec`
2. **Commit your changes** and push them to GitHub:
   ```sh
   git commit -am "Updated SwiftyCalls to version 0.0.2"
   git push origin main
   ```
3. **Tag the new version** and push it:
   ```sh
   git tag 0.0.2
   git push origin 0.0.2
   ```
4. **Validate and publish** the new version:
   ```sh
   pod spec lint SwiftyCalls.podspec --verbose
   pod trunk push SwiftyCalls.podspec --allow-warnings
   ```

Now, users can update to the latest version by running:

```sh
pod update SwiftyCalls
```

---

## License
SwiftyCalls is available under the MIT license. See the LICENSE file for more info.

---

## Author
**Shivansh Gaur**  
📧 Email: [shivanshgaur96@gmail.com](mailto:shivansh.gaur@gmail.com)  
🔗 GitHub: [ShivanshGaur6096](https://github.com/ShivanshGaur6096)

