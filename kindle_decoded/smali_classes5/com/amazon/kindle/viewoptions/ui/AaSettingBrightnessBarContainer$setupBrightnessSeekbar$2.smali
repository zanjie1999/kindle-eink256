.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;
.super Ljava/lang/Object;
.source "AaSettingBrightnessBarContainer.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->setupBrightnessSeekbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

.field final synthetic $seekBar:Landroid/widget/SeekBar;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;Landroid/widget/SeekBar;Lcom/amazon/kindle/brightness/IBrightnessManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;->$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;->$brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 141
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;->$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;->$seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    int-to-double v2, p1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-double v4, p1

    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBRIGHTNESS_PERCENT_INTERVAL$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)D

    move-result-wide v6

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    double-to-int p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 144
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;->$seekBar:Landroid/widget/SeekBar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBrightnessSeekBar$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;->$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 145
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;->$brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    const-string v1, "brightnessManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightness()F

    move-result v0

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 147
    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->BRIGHTNESS_METRIC_VALUE:Lcom/amazon/ksdk/presets/AaSettingType;

    const/4 v2, 0x1

    .line 145
    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setLongForSetting(ILcom/amazon/ksdk/presets/AaSettingType;Z)Z

    .line 148
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getMessageQueue$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;

    sget-object v1, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;->SETTING_CHANGED:Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;-><init>(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method
