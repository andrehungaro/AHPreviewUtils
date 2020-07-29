# AHPreviewUtils

A package that extends SwiftUI preview capabilities.


## isPreview
An environment value that indicates whether the SwiftUI view is being rendered inside a preview view. 

```swift
.environment(\.isPreview, true)
```


## AHPreviewProvider

A custom PreviewProvider that automatically sets `\.isPreview` to `true`. Use `customPreviews` property to wrap your view in the preview:

```swift
struct PreviewText: View {
    
    @Environment(\.isPreview) var isPreview
    
    var body: some View {
        Text("Is it a preview? \(isPreview ? "True" : "False")")
    }
}


struct PageView_Previews: PreviewProvider, AHPreviewProvider {
    static var customPreviews: some View {
        PreviewText()
    }
}
```

## PreviewDevice extensions

### Devices
Apple provides us with a number of different preview devices through a list of raw values for `PreviewDevice` enum. `AHPreviewUtils` provides properties with all devices available.

```swift
struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        Text("Some text")
            .previewDevice(.iPhone_11_Pro)
    }
}
```

### PreviewGroup
Group your previews in different preview devices by using `PreviewGroup`. It takes an array of preview devices and a view to be rendered. 

```swift
struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewGroup(devices: [.iPhone_SE_1st_generation, .iPhone_4s]) {
            TestView()
        }
    }
}
```

or if you'd like to render your view in all sizes of a given device family:

```swift
struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewGroup(devices: .watch_allSizes) {
            TestView()
        }
    }
}
```
