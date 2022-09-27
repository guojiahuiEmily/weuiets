import {GoodsData} from '../model/GoodsData'
import {initializeOnStartup,getIconPath,getIconPathSelect} from '../model/GoodsDataModels'
import {ShoppingCart} from './ShoppingCartPage'
import {MyInfo} from './MyPage'
import router from '@system.router'

@Entry
@Component
struct Index {
  @Provide currentPage: number = 1
  private goodsItems: GoodsData[] = initializeOnStartup()
  build() {
      Column() {
        Scroll() {
          Column() {
            if (this.currentPage == 1) {
              GoodsHome({ goodsItems: this.goodsItems })
            } else if (this.currentPage == 2) {
              //购物车列表
              ShoppingCart()
            } else {
              //我的
              MyInfo()
            }
          }
          .backgroundColor('#ececec')
//          .height('100%')
          .height(630)
        }
        .flexGrow(1)
        HomeBottom()
      }
      .backgroundColor("white")


  }
}


@Component
struct HomeBottom {
  @Consume currentPage: number
  private iconPathTmp: string[] =  getIconPath()
  private iconPathSelectsTmp: string[] =  getIconPathSelect()
  @State iconPath: string[] =  getIconPath()
  build() {
      Row(){
          List() {
            ForEach(this.iconPath, item => {
              ListItem() {
                Image($rawfile(item))
                  .objectFit(ImageFit.Cover)
                  .height(30)
                  .width(30)
                  .renderMode(ImageRenderMode.Original)
                  .onClick(()=>{
                  if(item==this.iconPath[0]){
                    this.iconPath[0]=this.iconPathTmp[0]
                    this.iconPath[1]=this.iconPathTmp[1]
                    this.iconPath[2]=this.iconPathTmp[2]
                    this.currentPage=1
                  }
                  if(item==this.iconPath[1]){
                    this.iconPath[0]=this.iconPathSelectsTmp[0]
                    this.iconPath[1]=this.iconPathSelectsTmp[1]
                    this.iconPath[2]=this.iconPathTmp[2]
                    this.currentPage=2
                  }
                  if(item==this.iconPath[2]){
                    this.iconPath[0]=this.iconPathSelectsTmp[0]
                    this.iconPath[1]=this.iconPathTmp[1]
                    this.iconPath[2]=this.iconPathSelectsTmp[2]
                    this.currentPage=3
                  }
                })
              }
              .width(120)
              .height(40)
            }, item => item)
          }
          .margin({left:10})
          .align(Alignment.BottomStart)
          .listDirection(Axis.Horizontal)
      }
      .alignItems(VerticalAlign.Bottom)
      .height(30)
      .margin({top:10 ,bottom:10})
    }
}

@Component
struct GoodsList {
  private goodsItems: GoodsData[]

  build() {
    Column() {
      List() {
        ForEach(this.goodsItems, item => {
          ListItem() {
            GoodsListItem({ goodsItem: item })
          }
        }, item => item.id.toString())
      }
      .height('100%')
      .width('100%')
      .align(Alignment.Top)
      .margin({top: 5})
    }
  }
}



@Component
struct ContainerTab {

  build() {
    Column() {
      List({ space: 2, initialIndex: 0 }) {
        ListItem() {
          Button("列容器", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/containertab/ColumnExample' })
            })
        }

        ListItem() {
          Button("列拆分", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/containertab/ColumnSplit' })
            })
        }

        ListItem() {
          Button("Flex布局", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/containertab/FlexExample3' })
            })
        }

        ListItem() {
          Button("网格", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/containertab/GridExample' })
            })
        }

        ListItem() {
          Button("列表", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/containertab/ListExample' })
            })
        }

        ListItem() {
          Button("行容器", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/containertab/RowExample' })
            })
        }

        ListItem() {
          Button("行拆分", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/containertab/RowSplitExample' })
            })
        }

        ListItem() {
          Button("滚动条", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/containertab/ScrollExample' })
            })
        }

        ListItem() {
          Button("堆叠栈", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/containertab/StackExample' })
            })
        }

      }

      .height('100%')
      .width('100%')
      .align(Alignment.Top)
      .borderColor(Color.Gray)
    }
  }
}


@Component
struct GifTab {

  build() {
    Column() {
      List({ space: 2, initialIndex: 0 }) {
        ListItem() {
          Button("属性动画", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/giftab/AttrAnimationExample' })
            })
        }

        ListItem() {
          Button("显式动画", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/giftab/AnimateToExample' })
            })
        }

        ListItem() {
          Button("页面转场", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/giftab/PageTransitionExample' })
            })
        }

        ListItem() {
          Button("组件转场", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/giftab/TransitionExample' })
            })
        }

        ListItem() {
          Button("共享元素转场", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/giftab/SharedTransitionExampleA' })
            })
        }

        ListItem() {
          Button("路径动画", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/giftab/MotionPathExample' })
            })
        }


      }

      .height('100%')
      .width('100%')
      .align(Alignment.Top)
      .borderColor(Color.Gray)
    }
  }
}



@Component
struct FormArk {

  build() {
    Column() {
      List({ space: 2, initialIndex: 0 }) {
          ListItem() {
            Button("按钮", { type: ButtonType.Normal, stateEffect: false })
              .width('100%').height(56).backgroundColor(0xFFFFFF)
              .fontColor('rgb(0, 0, 0)')
              .onClick((event: ClickEvent) => {
                router.push({ uri: 'pages/Button' })
              })
          }

        ListItem() {
          Button("角标", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/BadgeExample' })
            })
        }

        ListItem() {
          Button("滑杆", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/Slider' })
            })
        }

        ListItem() {
          Button("分隔器", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/DividerExample' })
            })
        }

        ListItem() {
          Button("打分", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/RatingExample' })
            })
        }

        ListItem() {
          Button("弹框", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/PopupExample' })
            })
        }

        ListItem() {
          Button("从下弹框", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/PanelExample' })
            })
        }

        ListItem() {
          Button("增减数", { type: ButtonType.Normal, stateEffect: false })
            .width('100%').height(56).backgroundColor(0xFFFFFF)
            .fontColor('rgb(0, 0, 0)')
            .onClick((event: ClickEvent) => {
              router.push({ uri: 'pages/CounterExample' })
            })
        }


      }

      .height('100%')
      .width('100%')
      .align(Alignment.Top)
      .borderColor(Color.Gray)
    }
  }
}


@Component
struct GoodsHome {
  private goodsItems: GoodsData[]

  build() {
    Column() {
      Tabs() {
        TabContent() {
          FormArk();
        }
        .tabBar('表单')

        TabContent() {
          ContainerTab();
        }
        .tabBar("布局")

        TabContent() {
          GifTab();
        }
        .tabBar("动画")

        TabContent() {
          ContainerTab();
        }
        .tabBar("多媒体")

        TabContent() {
          ContainerTab();
        }
        .tabBar("手势")
      }
      .barWidth(500)
      .barHeight(45)
      .scrollable(true)
      .barMode(BarMode.Scrollable)
      .height(630)

    }
    .alignItems(HorizontalAlign.Start)
    .width('100%')
  }
}

@Component
struct GoodsListItem {
  private goodsItem: GoodsData

  build() {
    Navigator({ target: 'pages/ShoppingDetail' }) {
        Row() {
          Column(){
            Text(this.goodsItem.title)
              .fontSize(14)
            Text(this.goodsItem.content )
              .fontSize(10)
            Text('￥' + this.goodsItem.price)
              .fontSize(14)
              .fontColor(Color.Red)
          }
          .height(100)
          .width('50%')
          .margin({left: 20})
          .alignItems(HorizontalAlign.Start)
          Image(this.goodsItem.imgSrc)
            .objectFit(ImageFit.ScaleDown)
            .height(100)
            .width('40%')
            .renderMode(ImageRenderMode.Original)
            .margin({right: 10,left:10})

        }
        .backgroundColor(Color.White)


    }
    .params({ goodsData: this.goodsItem })
    .margin({ right: 5})
  }
}