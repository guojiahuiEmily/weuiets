// xxx.ets
@Entry
@Component
struct SharedTransitionExampleA {
  @State active: boolean = false

  build() {
    List() {

      ListItem() {
        Text("页面A").fontSize(30)
      }

      ListItem() {
        Row() {
          Navigator({ target: 'pages/giftab/SharedTransitionExampleB', type: NavigationType.Push }) {
            Image($r('app.media.dino')).width(50).height(50)
              .sharedTransition('sharedImage1', { duration: 800, curve: Curve.Linear, delay: 100 })
          }.padding({ left: 10 })
          .onClick(() => {
            this.active = true
          })

          Text('SharedTransition').width(80).height(80).textAlign(TextAlign.Center)
        }
      }
    }
  }
}