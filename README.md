# Neron

Neron makes iOS Auto Layout easy.

## Example

Usage example:

```swift
view.layout
    .add(to: self)
    .leading.equalTo(layoutMarginsGuide, .leading)
    .trailing.equalTo(layoutMarginsGuide, .trailing)
    .yAxis.center(with: guide)
    .height.equalTo(constant: 50)
    .activate()
```

## License

Neron is shared under the MIT license. See the [LICENSE](./LICENSE) for more info.
