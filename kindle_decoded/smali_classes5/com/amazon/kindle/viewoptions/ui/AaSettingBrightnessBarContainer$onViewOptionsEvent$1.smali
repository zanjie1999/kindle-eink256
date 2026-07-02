.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onViewOptionsEvent$1;
.super Ljava/lang/Object;
.source "AaSettingBrightnessBarContainer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->onViewOptionsEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getMAX_SLIDER_VALUE_FOS$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)F

    move-result v2

    float-to-int v2, v2

    const-string/jumbo v3, "screen_brightness"

    .line 268
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 270
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 272
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBrightnessSeekBar$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBrightnessSeekBar$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 274
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    const-string v4, "Utils.getFactory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v3

    const-string v4, "Utils.getFactory().userSettingsController"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v0, v0

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v4}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getMAX_SLIDER_VALUE_FOS$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)F

    move-result v4

    div-float/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setScreenBrightness(F)V

    .line 275
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBrightnessCheckbox$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return-void
.end method
