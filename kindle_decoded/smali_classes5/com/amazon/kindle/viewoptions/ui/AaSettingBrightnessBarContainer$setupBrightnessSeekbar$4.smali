.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;
.super Ljava/lang/Object;
.source "AaSettingBrightnessBarContainer.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->setupBrightnessSeekbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $brightnessCheckbox:Landroid/widget/CheckBox;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $settings:Lcom/amazon/kcp/application/UserSettingsController;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;Landroid/widget/CheckBox;Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$brightnessCheckbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 175
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$brightnessCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "theme_change"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_6

    .line 176
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 181
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const-string/jumbo v1, "screen_brightness_mode"

    const-string v2, "context"

    if-lt p1, v0, :cond_1

    .line 182
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$context:Landroid/content/Context;

    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$context:Landroid/content/Context;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getSHARED_PREF_AA_MENU$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 186
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 187
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getTIMES_MODIFY_SETTINGS_DIALOG_SHOWN_KEY$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 188
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$showAllowModifySystemSettingsDialog(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 191
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$brightnessCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 p2, 0x0

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$context:Landroid/content/Context;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object p1

    sget-object v0, Lcom/amazon/ksdk/presets/AaSettingType;->AUTO_BRIGHTNESS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 200
    sget-object p1, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/amazon/kcp/reader/ui/BrightnessMode;->USER_DEFINED:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    .line 201
    :goto_1
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$settings:Lcom/amazon/kcp/application/UserSettingsController;

    const-string/jumbo v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object p2

    if-eq p2, p1, :cond_5

    .line 202
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setBrightnessMode(Lcom/amazon/kcp/reader/ui/BrightnessMode;)V

    .line 205
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getMessageQueue$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance p2, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;

    sget-object v0, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;->SETTING_CHANGED:Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    invoke-direct {p2, v0}, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;-><init>(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;)V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_3

    .line 208
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;->$brightnessCheckbox:Landroid/widget/CheckBox;

    const-string p2, "default"

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
