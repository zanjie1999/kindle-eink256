.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;
.super Landroid/widget/LinearLayout;
.source "AaSettingBrightnessBarContainer.kt"


# instance fields
.field private final BRIGHTNESS_PERCENT_INTERVAL:D

.field private final DIALOG_MAX_SHOW_TIMES:I

.field private final MAX_SLIDER_VALUE_3P:F

.field private final MAX_SLIDER_VALUE_FOS:F

.field private final SHARED_PREF_AA_MENU:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TIMES_MODIFY_SETTINGS_DIALOG_SHOWN_KEY:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private final brightnessCheckbox:Landroid/widget/CheckBox;

.field private final brightnessSeekBar:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

.field private final maxSliderValue:F

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private shouldShowModifySettingsDialog:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const-class p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils.getTag(AaSettingBr\u2026BarContainer::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->TAG:Ljava/lang/String;

    const-string p1, "TimesModifySettingsShownDialogKey"

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->TIMES_MODIFY_SETTINGS_DIALOG_SHOWN_KEY:Ljava/lang/String;

    const/4 p1, 0x2

    .line 42
    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->DIALOG_MAX_SHOW_TIMES:I

    const-string p1, "AaMenuPrefs"

    .line 43
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->SHARED_PREF_AA_MENU:Ljava/lang/String;

    const/high16 p1, 0x42c80000    # 100.0f

    .line 49
    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->MAX_SLIDER_VALUE_3P:F

    const/high16 p1, 0x437f0000    # 255.0f

    .line 50
    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->MAX_SLIDER_VALUE_FOS:F

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 51
    iput-wide v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->BRIGHTNESS_PERCENT_INTERVAL:D

    .line 52
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->MAX_SLIDER_VALUE_FOS:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->MAX_SLIDER_VALUE_3P:F

    :goto_0
    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->maxSliderValue:F

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_brightness_bar:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    sget p1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_brightness_setting:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "this.findViewById(R.id.a\u2026nu_v2_brightness_setting)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->brightnessSeekBar:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    .line 58
    sget p1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_brightness_slider_checkbox:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "this.findViewById(R.id.a\u2026ightness_slider_checkbox)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->brightnessCheckbox:Landroid/widget/CheckBox;

    .line 59
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    const-string v0, "PubSubMessageService.get\u2026BarContainer::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 60
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-class p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Utils.getTag(AaSettingBr\u2026BarContainer::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->TAG:Ljava/lang/String;

    const-string p1, "TimesModifySettingsShownDialogKey"

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->TIMES_MODIFY_SETTINGS_DIALOG_SHOWN_KEY:Ljava/lang/String;

    const/4 p1, 0x2

    .line 42
    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->DIALOG_MAX_SHOW_TIMES:I

    const-string p1, "AaMenuPrefs"

    .line 43
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->SHARED_PREF_AA_MENU:Ljava/lang/String;

    const/high16 p1, 0x42c80000    # 100.0f

    .line 49
    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->MAX_SLIDER_VALUE_3P:F

    const/high16 p1, 0x437f0000    # 255.0f

    .line 50
    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->MAX_SLIDER_VALUE_FOS:F

    const-wide p1, 0x3fb999999999999aL    # 0.1

    .line 51
    iput-wide p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->BRIGHTNESS_PERCENT_INTERVAL:D

    .line 52
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->MAX_SLIDER_VALUE_FOS:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->MAX_SLIDER_VALUE_3P:F

    :goto_0
    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->maxSliderValue:F

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_brightness_bar:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    sget p1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_brightness_setting:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "this.findViewById(R.id.a\u2026nu_v2_brightness_setting)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->brightnessSeekBar:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    .line 58
    sget p1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_brightness_slider_checkbox:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "this.findViewById(R.id.a\u2026ightness_slider_checkbox)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->brightnessCheckbox:Landroid/widget/CheckBox;

    .line 59
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    const-string p2, "PubSubMessageService.get\u2026BarContainer::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 60
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getBRIGHTNESS_PERCENT_INTERVAL$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->BRIGHTNESS_PERCENT_INTERVAL:D

    return-wide v0
.end method

.method public static final synthetic access$getBrightnessCheckbox$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Landroid/widget/CheckBox;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->brightnessCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static final synthetic access$getBrightnessSeekBar$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->brightnessSeekBar:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    return-object p0
.end method

.method public static final synthetic access$getMAX_SLIDER_VALUE_FOS$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->MAX_SLIDER_VALUE_FOS:F

    return p0
.end method

.method public static final synthetic access$getMaxSliderValue$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->maxSliderValue:F

    return p0
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method public static final synthetic access$getSHARED_PREF_AA_MENU$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->SHARED_PREF_AA_MENU:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getShouldShowModifySettingsDialog$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->shouldShowModifySettingsDialog:Z

    return p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTIMES_MODIFY_SETTINGS_DIALOG_SHOWN_KEY$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->TIMES_MODIFY_SETTINGS_DIALOG_SHOWN_KEY:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setShouldShowModifySettingsDialog$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->shouldShowModifySettingsDialog:Z

    return-void
.end method

.method public static final synthetic access$showAllowModifySystemSettingsDialog(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Z
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->showAllowModifySystemSettingsDialog()Z

    move-result p0

    return p0
.end method

.method private final isAutoBrightnessEnabled()Z
    .locals 3

    .line 214
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 215
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    const-string/jumbo v2, "userSettingsController"

    if-eqz v1, :cond_0

    .line 216
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isSystemUsingAutoBrightness()Z

    move-result v0

    return v0

    .line 218
    :cond_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final setupBrightnessSeekbar()V
    .locals 6

    .line 70
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->brightnessSeekBar:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v2

    .line 72
    iget v3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->maxSliderValue:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    const-string v3, "brightnessManager"

    .line 73
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightness()F

    move-result v3

    iget v4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->maxSliderValue:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string v3, "default"

    .line 74
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 76
    new-instance v4, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;

    invoke-direct {v4, p0, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;Lcom/amazon/kindle/brightness/IBrightnessManager;)V

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 140
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->brightnessSeekBar:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    new-instance v5, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;

    invoke-direct {v5, p0, v2, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$2;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;Landroid/widget/SeekBar;Lcom/amazon/kindle/brightness/IBrightnessManager;)V

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->setLeftViewListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->brightnessSeekBar:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    new-instance v5, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$3;

    invoke-direct {v5, p0, v2, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$3;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;Landroid/widget/SeekBar;Lcom/amazon/kindle/brightness/IBrightnessManager;)V

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->setRightViewListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->brightnessCheckbox:Landroid/widget/CheckBox;

    .line 166
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    .line 168
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x31

    .line 169
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 170
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->isAutoBrightnessEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 172
    new-instance v3, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$setupBrightnessSeekbar$4;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;Landroid/widget/CheckBox;Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private final showAllowModifySystemSettingsDialog()Z
    .locals 6

    .line 227
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->SHARED_PREF_AA_MENU:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->TIMES_MODIFY_SETTINGS_DIALOG_SHOWN_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 230
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    iget v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->DIALOG_MAX_SHOW_TIMES:I

    if-lt v0, v1, :cond_0

    return v2

    .line 234
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_2

    iget v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->DIALOG_MAX_SHOW_TIMES:I

    if-ge v0, v1, :cond_2

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 239
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 240
    new-instance v4, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    sget-object v5, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;->BASIC:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    invoke-direct {v4, v2, v5}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;)V

    .line 241
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_brightness_permission_dialog_title:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "context.getString(R.stri\u2026_permission_dialog_title)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->title(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 242
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_brightness_permission_dialog_message:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "context.getString(R.stri\u2026ermission_dialog_message)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->message(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 243
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/krl/R$string;->ok:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "context.getString(R.string.ok)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 244
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/krl/R$string;->cancel:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "context.getString(R.string.cancel)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 245
    new-instance v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;Landroid/content/Intent;)V

    invoke-virtual {v4, v2}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 252
    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$2;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;I)V

    invoke-virtual {v4, v1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    .line 257
    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->build()Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amazon.kcp.reader.ReaderActivity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 222
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 223
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 66
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->setupBrightnessSeekbar()V

    return-void
.end method

.method public final onThemeChangeEvent(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;->getType()Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;->THEME_CHANGED:Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 288
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onThemeChangeEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onThemeChangeEvent$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onViewOptionsEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->getElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    new-instance p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onViewOptionsEvent$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$onViewOptionsEvent$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
