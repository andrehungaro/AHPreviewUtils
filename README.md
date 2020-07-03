# AHPreviewUtils

A package that extends SwiftUI preview capabilities.


## IsPreview
An environment value that indicates whether the SwiftUI view is being rendered inside a preview session. 

```
.environment(\.isPreview, true)
```


## AHPreviewProvider

A custom PreviewProvider that automatically sets `\.isPreview` to `true`. Provide your preview views inside `customPreviews` property in the protocol extension:  

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
