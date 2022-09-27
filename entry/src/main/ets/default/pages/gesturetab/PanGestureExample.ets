// xxx.ets
@Entry
@Component
struct PanGestureExample {
  @State offsetX: number = 0
  @State offsetY: number = 0

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceBetween }) {
      Text('PanGesture offset:\nX: ' + this.offsetX + '\n' + 'Y: ' + this.offsetY)
    }
    .height(100).width(200).padding(20).border({ width: 1 }).margin(80)
    .translate({ x: this.offsetX, y: this.offsetY, z: 5 })
    .gesture(
    PanGesture({})
      .onActionStart((event: GestureEvent) => {
        console.info('Pan start')
      })
      .onActionUpdate((event: GestureEvent) => {
        this.offsetX = event.offsetX
        this.offsetY = event.offsetY
      })
      .onActionEnd(() => {
        console.info('Pan end')
      })
    )
  }
}