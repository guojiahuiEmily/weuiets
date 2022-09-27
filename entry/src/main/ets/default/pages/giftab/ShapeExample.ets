// xxx.ets
@Entry
@Component
struct ShapeExample {
  build() {
    Column({ space: 5 }) {
      Text('basic').fontSize(30).fontColor(0xCCCCCC).width(320)
      // 在Shape的(-2, -2)点绘制一个 300 * 50 带边框的矩形,颜色0x317Af7,边框颜色黑色,边框宽度4,边框间隙20,向左偏移10,尖端样式圆角,拐角样式圆角,抗锯齿(默认开启)
      // 在Shape的(-2, 58)点绘制一个 300 * 50 带边框的椭圆,颜色0x317Af7,边框颜色黑色,边框宽度4,边框间隙20,向左偏移10,尖端样式圆角,拐角样式圆角,抗锯齿(默认开启)
      // 在Shape的(-2, 118)点绘制一个 300 * 10 线段,颜色0x317Af7,边框颜色黑色,宽度4,间隙20,向左偏移10,尖端样式圆角,拐角样式圆角,抗锯齿(默认开启)
      Shape() {
        Rect().width(300).height(50)
        Ellipse().width(300).height(50).offset({ x: 0, y: 60 })
        Path().width(300).height(10).commands('M0 0 L900 0').offset({ x: 0, y: 120 })
      }
      .viewPort({ x: -2, y: -2, width: 304, height: 130 })
      .fill(0x317Af7).stroke(Color.Black).strokeWidth(4)
      .strokeDashArray([20]).strokeDashOffset(10).strokeLineCap(LineCapStyle.Round)
      .strokeLineJoin(LineJoinStyle.Round).antiAlias(true)
      // 在Shape的(-1, -1)点绘制一个 300 * 50 带边框的矩形,颜色0x317Af7,边框颜色黑色,边框宽度2
      Shape() {
        Rect().width(300).height(50)
      }.viewPort({ x: -1, y: -1, width: 302, height: 52 }).fill(0x317Af7).stroke(Color.Black).strokeWidth(2)

      Text('border').fontSize(30).fontColor(0xCCCCCC).width(320).margin({top:30})
      // 在Shape的(0, -5)点绘制一个 300 * 10 直线,颜色0xEE8443,边框宽度10,边框间隙20
      Shape() {
        Path().width(300).height(10).commands('M0 0 L900 0')
      }.viewPort({ x: 0, y: -5, width: 300, height: 20 }).stroke(0xEE8443).strokeWidth(10).strokeDashArray([20])
      // 在Shape的(0, -5)点绘制一个 300 * 10 直线,颜色0xEE8443,边框宽度10,边框间隙20,向左偏移10
      Shape() {
        Path().width(300).height(10).commands('M0 0 L900 0')
      }
      .viewPort({ x: 0, y: -5, width: 300, height: 20 })
      .stroke(0xEE8443).strokeWidth(10).strokeDashArray([20]).strokeDashOffset(10)
      // 在Shape的(0, -5)点绘制一个 300 * 10 直线,颜色0xEE8443,边框宽度10,透明度0.5
      Shape() {
        Path().width(300).height(10).commands('M0 0 L900 0')
      }.viewPort({ x: 0, y: -5, width: 300, height: 20 }).stroke(0xEE8443).strokeWidth(10).strokeOpacity(0.5)
      // 在Shape的(0, -5)点绘制一个 300 * 10 直线,颜色0xEE8443,边框宽度10,边框间隙20,向左偏移10,尖端样式圆角
      Shape() {
        Path().width(300).height(10).commands('M0 0 L900 0')
      }
      .viewPort({ x: 0, y: -5, width: 300, height: 20 })
      .stroke(0xEE8443).strokeWidth(10).strokeDashArray([20]).strokeLineCap(LineCapStyle.Round)
      // 在Shape的(-5, -5)点绘制一个 300 * 50 带边框的矩形,颜色0x317Af7,边框宽度10,边框颜色0xEE8443,拐角样式圆角
      Shape() {
        Rect().width(300).height(100)
      }
      .viewPort({ x: -5, y: -5, width: 310, height: 120 })
      .fill(0x317Af7).stroke(0xEE8443).strokeWidth(10).strokeLineJoin(LineJoinStyle.Round)
      Shape() {
        Path().width(300).height(60).commands('M0 0 L400 0 L400 200 Z')
      }
      .viewPort({ x: -80, y: -5, width: 310, height: 100 })
      .fill(0x317Af7).stroke(0xEE8443).strokeWidth(10)
      .strokeLineJoin(LineJoinStyle.Miter).strokeMiterLimit(5)
    }.width('100%').margin({ top: 15 })
  }
}