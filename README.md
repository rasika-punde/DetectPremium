# DetectPremium App

DetectPremium is a simple iOS application built using SwiftUI with the MVVM design pattern. This app displays a counter and indicates when a number is a "Premium" number (i.e., divisible by 3).

This project is part of a Udemy course titled "MVVM Design Pattern in iOS Using SwiftUI".

## Features

- Displays a counter that increments by 1.
- Shows "Premium" when the number is divisible by 3.
- Custom `Text` extension `foregroundLinearGradient` to display "Premium" with a gradient.

## Screenshots

![DetectApp-screenshot](https://github.com/rasika-punde/DetectPremium/assets/40522237/f5581304-3b51-4da3-8765-dc4518643238)

## Getting Started

### Prerequisites

- Xcode 12.0+
- iOS 14.0+
- Swift 5.3+

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/DetectPremium.git
    ```

2. Open the project in Xcode:
    ```bash
    cd DetectPremium
    open DetectPremium.xcodeproj
    ```

3. Build and run the project on your simulator or device.

## Usage

1. Launch the app.
2. The counter will start at 0.
3. Tap the increment button to increase the counter.
4. When the counter reaches a number divisible by 3, "Premium" will be displayed with a gradient.

## Custom `Text` Extension

The app includes a custom extension to `Text` called `foregroundLinearGradient`, which is used to display the text "Premium" with a gradient effect. Here is an example of how it's used:

```swift
extension Text {
    func foregroundLinearGradient(colors: [Color]) -> some View {
        self.overlay(
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)
        )
        .mask(self)
    }
}

// Usage in View
Text("Premium")
    .foregroundLinearGradient(colors: [.blue, .purple])
