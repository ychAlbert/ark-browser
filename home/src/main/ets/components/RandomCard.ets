// RandomCard.ets
import { getRandomColor } from '../utils/randomUtils';

@Entry
@Component
export struct RandomCard {
  build() {
    Column() {
      Row() {
        Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.End, alignItems: ItemAlign.Start }) {
          Image($r('app.media.startIcon'))
            .width(30)
            .height(30)
            .borderRadius(5)
            .objectFit(ImageFit.Cover)
            .margin({ top: 10, right: 10 })
        }
      }
//这里换成自己的随机显示
      Image($r('app.media.startIcon'))
        .width('80%')
        .height(150)
        .borderRadius(10)
        .objectFit(ImageFit.Cover)
        .margin({ bottom: 10 })
        .alignSelf(ItemAlign.Center)

      Text('December 22')
        .fontSize(14)
        .fontFamily('Arial') // 使用更优雅的英文字体
        .width('100%')
        .textAlign(TextAlign.Center)
        .opacity(0.7)
        .margin({ top: 10 })
    }
    .width('100%')
    .height(300)
    .backgroundColor(getRandomColor())
    .borderRadius(15)
    .padding(20)
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.SpaceBetween) // 使用 SpaceBetween 来确保日期在底部
    .shadow({
      radius: 10,
      color: '#0000001A',
      offsetX: 0,
      offsetY: 4
    })
  }
}
