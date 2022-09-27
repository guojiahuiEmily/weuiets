// xxx.ets
@Entry
@Component
struct ClipAndMaskExample {

  build() {
    Column({ space: 5 }) {
      Text('clip').fontSize(9).width('90%').fontColor(0xCCCCCC)
      // 用一个280px直径的圆对图像进行裁剪
      Image($r('app.media.example'))
        .clip(new Circle({ width: 80, height: 80 }))
        .width('500px').height('280px')

      Row() {
        Image($r('app.media.example')).width('500px').height('280px')
      }
      .clip(true)
      .borderRadius(20)

      Text('mask').fontSize(9).width('90%').fontColor(0xCCCCCC)
      // 给图像添加了一个500px*280px的遮罩
      Image($r('app.media.example'))
        .mask(new Rect({ width: '500px', height: '280px' }).fill(Color.Gray))
        .width('500px').height('280px')

      // 给图像添加了一个280px*280px的圆遮罩
      Image($r('app.media.example'))
        .mask(new Circle({ width: '280px', height: '280px' }).fill(Color.Gray))
        .width('500px').height('281px')
    }
    .width('100%')
    .margin({ top: 5 })
  }
}