/*
 * Copyright (c) 2021 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@Component
struct ButtonEts {

  @Builder DescribeText(text:string) {
    Stack() {
      Text(text )
        .margin({ top: 30 })
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
    }
  }

  build() {
    Column({space:20}) {
      Button("主要操作", { type: ButtonType.Normal, stateEffect: true })
        .backgroundColor(0x07c160)
        .borderRadius(8).width(184).height(48).fontWeight(700)
        .onClick((event: ClickEvent) => {
          AlertDialog.show({ message: '点击成功' })
        })
//        .fontSize(17)


      Button("次要操作", { type: ButtonType.Normal, stateEffect: true })
        .backgroundColor(0xf2f2f2).width(184).height(48).fontWeight(700).fontColor(0x06ae56)
        .borderRadius(8)

      Button("警示操作", { type: ButtonType.Normal, stateEffect: true })
        .backgroundColor(0xf2f2f2).width(184).height(48).fontWeight(700).fontColor(0xfa5151)
        .borderRadius(8)

//      this.DescribeText('禁止状态的按钮')

      Button("禁止的按钮", { type: ButtonType.Normal, stateEffect: false })
        .backgroundColor(0xf2f2f2).width(184).height(48).fontWeight(700)
        .borderRadius(8).fontColor('rgba(0, 0, 0, 0.2)')
        .enabled(false).opacity(0.5)


      Button("普通行按钮", { type: ButtonType.Normal, stateEffect: false })
        .width('100%').height(56).backgroundColor(0xFFFFFF).fontWeight(700)
        .fontColor('rgb(0, 0, 0)')
        .onClick((event: ClickEvent) => {
          AlertDialog.show({ message: '点击成功' })
        })

      Button("强调行按钮", { type: ButtonType.Normal, stateEffect: false })
        .width('100%').height(56).backgroundColor(0xFFFFFF).fontWeight(700)
        .fontColor(0x576B95)
        .onClick((event: ClickEvent) => {
          AlertDialog.show({ message: '点击成功' })
        })

//      this.DescribeText('小按钮')

      Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.SpaceBetween }) {
//        Text('Common button').fontSize(9).fontColor(0xCCCCCC)
        Flex({ alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceBetween }) {
          Button('Ok', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(0x317aff).width(90)
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Row() {
              Image($r('app.media.flower4')).width(20).height(20).margin({ left: 12 })
              Text('loading').fontSize(12).fontColor(0xffffff).margin({ left: 5, right: 12 })
            }.alignItems(VerticalAlign.Center)
          }.borderRadius(8).backgroundColor(0x317aff).width(90)
          Button('Disable', { type: ButtonType.Normal, stateEffect: false }).opacity(0.5)
            .borderRadius(8).backgroundColor(0x317aff).width(90)
        }

//        Text('Capsule button').fontSize(9).fontColor(0xCCCCCC)
        Flex({ alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceBetween }) {
          Button('Ok', { type: ButtonType.Capsule, stateEffect: true }).backgroundColor(0x317aff).width(90)
          Button({ type: ButtonType.Capsule, stateEffect: true }) {
            Row() {
              Image($r('app.media.flower4')).width(20).height(20).margin({ left: 12 })
              Text('loading').fontSize(12).fontColor(0xffffff).margin({ left: 5, right: 12 })
            }.alignItems(VerticalAlign.Center).width(90)
          }.backgroundColor(0x317aff)
          .onClick((event: ClickEvent) => {
            AlertDialog.show({ message: 'The login is successful' })
          })
          Button('Disable', { type: ButtonType.Capsule, stateEffect: false }).opacity(0.5)
            .backgroundColor(0x317aff).width(90)
        }

//        Text('Circle button').fontSize(9).fontColor(0xCCCCCC)
        Flex({ alignItems: ItemAlign.Center, wrap: FlexWrap.Wrap }) {
          Button({ type: ButtonType.Circle, stateEffect: true }) {
            Image($r('app.media.flower4')).width(20).height(20)
          }.width(55).height(55).backgroundColor(0x317aff)
          Button({ type: ButtonType.Circle, stateEffect: true }) {
            Image($r('app.media.flower4')).width(30).height(30)
          }.width(55).height(55).margin({ left: 20 }).backgroundColor(0xF55A42)
        }
      }.height(230).padding({ left: 35, right: 35, top: 10 })

    }
    .padding({ left: 5, right: 5, top:20 })
    .backgroundColor('#ececec')
  }

  onPageShow() {
  }
}
