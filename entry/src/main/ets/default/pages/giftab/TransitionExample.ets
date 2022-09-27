// xxx.ets
@Entry
@Component
struct TransitionExample {
  @State btn1: boolean = false
  @State show: string = "show"
  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center,}) {
      Button(this.show).width(80).height(30).backgroundColor(0x317aff).margin({bottom:50})
        .onClick(() => {
          animateTo({ duration: 1000 }, () => {
            this.btn1 = !this.btn1
            if(this.btn1){
              this.show = "hide"
            }else{
              this.show = "show"
            }
          })
        })
      if (this.btn1) {
        // 插入和删除配置为不同的过渡效果
        Button() {
          Image($r('app.media.dino')).width("80%").height(300)
        }.transition({ type: TransitionType.Insert, scale : {x:0,y:1.0} })
        .transition({ type: TransitionType.Delete, scale: { x: 1.0, y: 0.0 } })
      }
    }.height(400).width("100%").padding({top:100})
  }
}