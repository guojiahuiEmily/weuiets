// xxx.ets
@Entry
@Component
struct PinchGestureExample {
  @State scaleValue: number = 1

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceBetween }) {
//      Text('PinchGesture scale:' + this.scale)
    }
    .height(100).width(200).padding(20).border({ width: 1 }).margin(80)
    .scale({ x: this.scaleValue, y: this.scaleValue, z: this.scaleValue })
    .gesture(
    PinchGesture()
      .onActionStart((event: GestureEvent) => {
        console.info('Pinch start')
      })
      .onActionUpdate((event: GestureEvent) => {
        this.scaleValue = event.scale
      })
      .onActionEnd(() => {
        console.info('Pinch end')
      })
    )
  }
}