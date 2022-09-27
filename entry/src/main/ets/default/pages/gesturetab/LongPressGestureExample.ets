// xxx.ets
@Entry
@Component
struct LongPressGestureExample {
  @State count: number = 0

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceBetween }) {
      Text('LongPress onAction:' + this.count)
    }
    .height(200).width(300).padding(60).border({ width:1 }).margin(30)
    .gesture(
    LongPressGesture({ repeat: true })
      //长按动作存在会连续触发
      .onAction((event: GestureEvent) => {
        if (event.repeat) { this.count++ }
      })
        //长按动作一结束触发
      .onActionEnd(() => {
        this.count = 0
      })
    )
  }
}