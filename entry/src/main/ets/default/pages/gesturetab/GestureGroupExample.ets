// xxx.ets
@Entry
@Component
struct GestureGroupExample {
  @State count: number = 0
  @State offsetX: number = 0
  @State offsetY: number = 0
  @State borderStyles: BorderStyle = BorderStyle.Solid

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceBetween }) {
      Text('sequence gesture\n' + 'LongPress onAction:' + this.count + '\nPanGesture offset:\nX: ' + this.offsetX + '\n' + 'Y: ' + this.offsetY)
    }.translate({ x: this.offsetX, y: this.offsetY, z: 5 })
    .height(100).width(200).padding(10).margin(80).border({ width: 1, style: this.borderStyles })
    .gesture(
    GestureGroup(GestureMode.Sequence,
    LongPressGesture({ repeat: true })
      .onAction((event: GestureEvent) => {
        if (event.repeat) {this.count++}
        console.log('LongPress onAction')
      })
      .onActionEnd(() => {
        console.log('LongPress end')
      }),
    PanGesture({})
      .onActionStart(() => {
        this.borderStyles = BorderStyle.Dashed
        console.log('pan start')
      })
      .onActionUpdate((event: GestureEvent) => {
        this.offsetX = event.offsetX
        this.offsetY = event.offsetY
        console.log('pan update')
      })
    )
      .onCancel(() => {
        console.log('sequence gesture canceled')
      })
    )
  }
}