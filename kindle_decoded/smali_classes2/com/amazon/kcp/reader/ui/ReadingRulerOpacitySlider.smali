.class public final Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;
.source "ReadingRulerOpacitySlider.kt"


# instance fields
.field private opacityModel:Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;

.field private seekBar:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 26
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v1, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;->opacityModel:Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_vertical_offset:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_horizontal_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 30
    invoke-virtual {p0, v3, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/readingruler/R$layout;->reading_ruler_opacity_slider:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 39
    sget v1, Lcom/amazon/kindle/readingruler/R$id;->reading_ruler_opacity_title_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    sget-object v3, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v3, :cond_1

    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    const/high16 v0, -0x1000000

    .line 43
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    :cond_2
    :goto_1
    sget v0, Lcom/amazon/kindle/readingruler/R$id;->reading_ruler_opacity_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "content.findViewById(R.i\u2026ng_ruler_opacity_setting)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;->seekBar:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    return-void
.end method

.method private final setupSeekBar()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;->seekBar:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;->opacityModel:Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->getMaxProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 58
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;->opacityModel:Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->getCurrentProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 60
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;->opacityModel:Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->getOnProgressChangeHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider$setupSeekBar$1;

    invoke-direct {v2, v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider$setupSeekBar$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 52
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;->setupSeekBar()V

    return-void
.end method

.method public refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 13

    const-string v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    .line 74
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;->opacityModel:Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->getCurrentProgress()I

    move-result v6

    sget-object v9, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider$refreshSetting$display$1;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider$refreshSetting$display$1;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x100

    const/4 v12, 0x0

    move-object v1, v0

    .line 73
    invoke-direct/range {v1 .. v12}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    iget-object v9, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;->seekBar:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    new-instance v10, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v2

    sget-object v5, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider$refreshSetting$1;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider$refreshSetting$1;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v10

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v9, v10}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    return-void
.end method
