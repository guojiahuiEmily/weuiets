// xxx.ets
@Entry
@Component
struct TextStyleExample {
  build() {
    Column({ space: 5 }) {
      Text('default text')

      Text('text font color red')
        .fontColor(Color.Red)

      Text('text font size 20')
        .fontSize(20)

      Text('text font style Italic')
        .fontStyle(FontStyle.Italic)

      Text('text fontWeight bold')
        .fontWeight(700)

      Text('text fontFamily sans-serif')
        .fontFamily('sans-serif')

      Text('red 20 Italic bold cursive text')
        .fontColor(Color.Red)
        .fontSize(20)
        .fontStyle(FontStyle.Italic)
        .fontWeight(700)
        .fontFamily('cursive')
        .textAlign(TextAlign.Center)
        .width('90%')

      Text('Orange 18 Normal source-sans-pro text')
        .fontColor(Color.Orange)
        .fontSize(18)
        .fontStyle(FontStyle.Normal)
        .fontWeight(400)
        .fontFamily('source-sans-pro,cursive,sans-serif')
    }.width('100%')
  }
}