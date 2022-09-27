// xxx.ets
@Entry
@Component
struct RotationGestureExample {
  @State angle: number = 0

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceBetween }) {
      Text('RotationGesture angle:' + this.angle)
    }
    .height(100).width(200).padding(20).border({ width:1 })
    .margin(80).rotate({ x:1, y:2, z:3, angle: this.angle })
    .gesture(
    RotationGesture()
      .onActionStart((event: GestureEvent) => {
        console.log('Rotation start')
      })
      .onActionUpdate((event: GestureEvent) => {
        this.angle = event.angle
      })
      .onActionEnd(() => {
        console.log('Rotation end')
      })
    )
  }
}