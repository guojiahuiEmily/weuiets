@Entry
@Component
struct SharedTransitionExampleB {

  build() {
    Column(){
      Text("页面B").fontSize(30)

      Stack() {
        Image($r('app.media.dino')).width(150).height(150).sharedTransition('sharedImage1')
      }.width('100%').height(400)

    }


  }
}