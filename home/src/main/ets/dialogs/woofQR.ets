// woofQR.ets
import linysText from '../components/linysText';
import linysTitleText from '../components/linysTitleText';
import { RandomCard } from '../components/RandomCard';

@CustomDialog
struct woofQR {
  controller: CustomDialogController;
  @Prop link: string = '';
  @Prop title: string = '';
  // Colors
  @StorageProp('color_current_primary') color_current_primary: ResourceColor = $r('app.color.start_window_background');
  @StorageProp('color_current_secondary') color_current_secondary: ResourceColor = $r('app.color.block_color');
  @StorageProp('color_current_font') color_current_font: ResourceColor = $r('app.color.font_color_title');

  build() {
    Scroll() {
      Column({ space: 10 }) {
        RandomCard()
          .width("100%")
          .padding({ bottom: 20 })

        linysTitleText({
          text: "欢迎, Albert",
          max_lines: 3
        })
          .width("100%")

        linysText({
          text: "春风十里不如你。",
          max_lines: 5
        })
          .width("100%")
          .opacity(0.7)
      }
      .padding(40)
      .alignItems(HorizontalAlign.Center)
      .justifyContent(FlexAlign.Center)
      .width("100%")
    }
    .backgroundColor(this.color_current_primary)
    .edgeEffect(EdgeEffect.Spring)
  }
}

export default woofQR;
