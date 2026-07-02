.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;
.super Ljava/lang/Object;
.source "AaSettingBrightnessBarContainer.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->setupBrightnessSeekbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;Lcom/amazon/kindle/brightness/IBrightnessManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ")V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->$brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .line 81
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const-string/jumbo v3, "screen_brightness"

    const-string v4, "context"

    if-lt v0, v2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 88
    iget-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p3, v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$setShouldShowModifySettingsDialog$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;Z)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p3

    const-string v0, "AndroidApplicationController.getInstance()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p3

    .line 97
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v2, "Utils.getFactory()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v2, "activity"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/amazon/kcp/application/UserSettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 99
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object p3

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    :goto_1
    const-string/jumbo v0, "theme_change"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr p3, v1

    if-eqz p3, :cond_5

    .line 100
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->$brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    const-string p3, "brightnessManager"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p2, p2

    iget-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getMaxSliderValue$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)F

    move-result p3

    div-float/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/amazon/kindle/brightness/IBrightnessManager;->setScreenBrightness(F)V

    .line 101
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getBrightnessCheckbox$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_5
    const-string p2, "default"

    .line 105
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 110
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->$brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    const-string v1, "brightnessManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightness()F

    move-result v0

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 112
    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->BRIGHTNESS_METRIC_VALUE:Lcom/amazon/ksdk/presets/AaSettingType;

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setLongForSetting(ILcom/amazon/ksdk/presets/AaSettingType;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 116
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->$brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    const-string v1, "brightnessManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightness()F

    move-result v0

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 118
    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->BRIGHTNESS_METRIC_VALUE:Lcom/amazon/ksdk/presets/AaSettingType;

    const/4 v2, 0x1

    .line 116
    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setLongForSetting(ILcom/amazon/ksdk/presets/AaSettingType;Z)Z

    .line 120
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 123
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getSHARED_PREF_AA_MENU$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 125
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 126
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getTIMES_MODIFY_SETTINGS_DIALOG_SHOWN_KEY$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getShouldShowModifySettingsDialog$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$showAllowModifySystemSettingsDialog(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Z

    .line 132
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p1, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$setShouldShowModifySettingsDialog$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;Z)V

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getMessageQueue$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;

    sget-object v1, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;->SETTING_CHANGED:Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;-><init>(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
