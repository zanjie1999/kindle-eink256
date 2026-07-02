.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onThemeChangeEvent$1;
.super Ljava/lang/Object;
.source "AaSettingBrightnessBarContainer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->onThemeChangeEvent(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;)V
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

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onThemeChangeEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 289
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object v0

    .line 290
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    const-string v2, "brightnessManager"

    .line 291
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightness()F

    move-result v0

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onThemeChangeEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getMaxSliderValue$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    const-string/jumbo v2, "userSettingsController"

    .line 292
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 293
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onThemeChangeEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBrightnessSeekBar$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    const-string/jumbo v6, "theme_change"

    if-eq v0, v3, :cond_1

    .line 294
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onThemeChangeEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBrightnessSeekBar$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 295
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onThemeChangeEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBrightnessSeekBar$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onThemeChangeEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBrightnessCheckbox$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eq v2, v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onThemeChangeEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBrightnessCheckbox$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onThemeChangeEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBrightnessCheckbox$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    return-void
.end method
