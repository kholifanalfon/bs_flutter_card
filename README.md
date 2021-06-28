# bs_flutter_card

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_card/main/screenshot/example.png "Card Example")

Flutter Bootstrap cards provide a flexible and extensible content container with multiple variants and options.

## Getting Started

Add the dependency in `pubspec.yaml`:

```yaml
dependencies:
  ...
  bs_flutter_card: any
```

Create box card:

```dart
// ...
  BsCard(
    children: [
      BsCardContainer(title: Text('Box Card')),
      BsCardContainer(child: Container(
        child: Text('Box Card Content'),
      )),
      BsCardContainer(actions: [
        BsButton(
          onPressed: () {},
          style: BsButtonStyle.primary,
          prefixIcon: Icons.block,
          label: Text('Primary'),
        )
      ])
    ],
  )
// ...
```

### Note
- To custom card style use `BsCardContainerStyle` or `BsCardStyle`

