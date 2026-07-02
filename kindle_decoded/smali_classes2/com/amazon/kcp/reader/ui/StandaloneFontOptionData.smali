.class public Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;
.super Lcom/amazon/kcp/reader/ui/ViewOptionData;
.source "StandaloneFontOptionData.java"


# static fields
.field private static final METRICS_EVENT_BASKERVILLE_FONT_CLICKED:Ljava/lang/String; = "BaskervilleFontClicked"

.field private static final METRICS_EVENT_BOOKERLY_FONT_CLICKED:Ljava/lang/String; = "BookerlyFontClicked"

.field private static final METRICS_EVENT_CAECILIA_FONT_CLICKED:Ljava/lang/String; = "CaeciliaFontClicked"

.field private static final METRICS_EVENT_DEVANAGARI_FONT_CLICKED:Ljava/lang/String; = "DevanagariFontClicked"

.field private static final METRICS_EVENT_DROID_SERIF_FONT_CLICKED:Ljava/lang/String; = "DroidSerifFontClicked"

.field private static final METRICS_EVENT_GEORGIA_FONT_CLICKED:Ljava/lang/String; = "GeorgiaFontClicked"

.field private static final METRICS_EVENT_HELVETICA_FONT_CLICKED:Ljava/lang/String; = "HelveticaFontClicked"

.field private static final METRICS_EVENT_KAI_FONT_CLICKED:Ljava/lang/String; = "STKaitiFontClicked"

.field private static final METRICS_EVENT_LUCIDA_FONT_CLICKED:Ljava/lang/String; = "LucidaFontClicked"

.field private static final METRICS_EVENT_MURASU_TAMIL_FONT_CLICKED:Ljava/lang/String; = "MurasuTamilFontClicked"

.field private static final METRICS_EVENT_MYINGHEI_FONT_CLICKED:Ljava/lang/String; = "MYingHeiFontClicked"

.field private static final METRICS_EVENT_NEW_MALAYALAM_FONT_CLICKED:Ljava/lang/String; = "NewMalayalamFontClicked"

.field private static final METRICS_EVENT_PALATINO_FONT_CLICKED:Ljava/lang/String; = "PalatinoFontClicked"

.field private static final METRICS_EVENT_SAGUNA_GUJARATI_FONT_CLICKED:Ljava/lang/String; = "SagunaGujaratiFontClicked"

.field private static final METRICS_EVENT_STBSHUSONG_FONT_CLICKED:Ljava/lang/String; = "STBShusongFontClicked"

.field private static final METRICS_EVENT_STHEITITC_FONT_CLICKED:Ljava/lang/String; = "STHeitiTCFontClicked"

.field private static final METRICS_EVENT_STHEITI_FONT_CLICKED:Ljava/lang/String; = "STHeitiFontClicked"

.field private static final METRICS_EVENT_STKAITITC_FONT_CLICKED:Ljava/lang/String; = "STKaitiTCFontClicked"

.field private static final METRICS_EVENT_STSONGTC_FONT_CLICKED:Ljava/lang/String; = "STSongTCFontClicked"

.field private static final METRICS_EVENT_STSYSTEM_FONT_CLICKED:Ljava/lang/String; = "STSystemFontClicked"

.field private static final METRICS_EVENT_STYUANTC_FONT_CLICKED:Ljava/lang/String; = "STYuanTCFontClicked"

.field private static final METRICS_EVENT_TBGOTHICMED_FONT_CLICKED:Ljava/lang/String; = "TBGothicFontClicked"

.field private static final METRICS_EVENT_TBMINCHOMEDIUM_FONT_CLICKED:Ljava/lang/String; = "TBMinchoFontClicked"

.field private static final METRICS_EVENT_YUAN_FONT_CLICKED:Ljava/lang/String; = "STZhongyuanFontClicked"

.field private static final METRICS_NAME_FONT_OPTION_DOWNLOAD:Ljava/lang/String; = "FontOptionDownload"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private areRequiredFontsDownloaded:Z

.field private language:Ljava/lang/String;

.field private settings:Lcom/amazon/kcp/application/UserSettingsController;

.field private supportDownloadManually:Z

.field private supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 98
    sget v0, Lcom/amazon/kindle/thirdparty/R$string;->font:I

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;-><init>(ILandroid/content/Context;)V

    .line 100
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getCurrentBookLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 102
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kcp/font/DownloadedFont;->areAnyFontsRequiredByLanguage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kcp/font/FontUtils;->areRequiredFontsDownloaded(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->areRequiredFontsDownloaded:Z

    .line 105
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportDownloadManually:Z

    .line 107
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->updateSupportedFonts()V

    .line 109
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Lcom/amazon/kcp/font/IFontInfo;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->downloadFont(Lcom/amazon/kcp/font/IFontInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportDownloadManually:Z

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->showProgressView(Landroid/widget/ImageView;Landroid/widget/FrameLayout;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->setAccessibilityForProgressBar(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->showDownloadView(Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Lcom/mobipocket/android/drawing/FontFamily;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->reportFontDownloadClickMetrics(Lcom/mobipocket/android/drawing/FontFamily;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->updateSupportedFonts()V

    return-void
.end method

.method private downloadFont(Lcom/amazon/kcp/font/IFontInfo;)V
    .locals 2

    .line 467
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportDownloadManually:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v0

    check-cast p1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->downloadFontManuallyIfNeeds(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_0
    check-cast p1, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->downloadFontManually(Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;)V

    :goto_0
    return-void
.end method

.method private downloadFontManually(Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;)V
    .locals 3

    .line 475
    invoke-virtual {p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->needDownload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->getFont()Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object v0

    .line 480
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->isDownloadingFontByMobileDataAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    const-class v2, Lcom/amazon/kcp/font/FontDownloadPromptActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    invoke-virtual {v0}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->getExpandedLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->setDownloading()V

    .line 486
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->getExpandedLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/amazon/kcp/font/FontDownloadService;->getFontDownloadIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 487
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/amazon/kcp/font/FontDownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x0

    .line 492
    sget-object v1, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$amazon$kcp$font$ManualFontDownloadHelper$DownloadableFont:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "STZhongyuanFontClicked"

    goto :goto_1

    :cond_3
    const-string p1, "STKaitiFontClicked"

    goto :goto_1

    :cond_4
    const-string p1, "STHeitiFontClicked"

    goto :goto_1

    :cond_5
    const-string p1, "STBShusongFontClicked"

    goto :goto_1

    :cond_6
    const-string p1, "MYingHeiFontClicked"

    :goto_1
    if-eqz p1, :cond_7

    .line 513
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "FontOptionDownload"

    invoke-virtual {v0, v2, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_7
    return-void
.end method

.method private getFontInfo(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/IFontInfo;
    .locals 2

    .line 518
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportDownloadManually:Z

    if-nez v0, :cond_0

    .line 519
    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/ManualFontDownloadHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getFontInfo(Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;

    move-result-object p1

    return-object p1

    .line 521
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFontInfo(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    move-result-object p1

    return-object p1
.end method

.method private inflateFontManageView()Landroid/view/View;
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/kindle/thirdparty/R$layout;->view_options_drop_down_font_manage_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/thirdparty/R$dimen;->view_options_drop_down_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    .line 589
    invoke-static {v0, v2, v1}, Lcom/amazon/android/util/UIUtils;->setViewSize(Landroid/view/View;II)V

    .line 591
    sget v1, Lcom/amazon/kindle/thirdparty/R$id;->view_options_font_manage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 593
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    :cond_0
    new-instance v1, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$5;-><init>(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method private reportFontDownloadClickMetrics(Lcom/mobipocket/android/drawing/FontFamily;)V
    .locals 3

    .line 559
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClickFontDownloadButton_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DownloadFontOnDemand"

    .line 559
    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAccessibilityForProgressBar(Landroid/view/View;)V
    .locals 2

    .line 552
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 554
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method private setTypeface(Landroid/widget/TextView;I)V
    .locals 2

    .line 376
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 378
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private showDownloadView(Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 1

    const/16 v0, 0x8

    .line 547
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p2, 0x0

    .line 548
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showProgressView(Landroid/widget/ImageView;Landroid/widget/FrameLayout;Z)V
    .locals 2

    const/16 v0, 0x8

    .line 526
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 527
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p3, :cond_1

    .line 530
    sget p1, Lcom/amazon/kindle/thirdparty/R$id;->view_options_progress_layer1:I

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 531
    sget v1, Lcom/amazon/kindle/thirdparty/R$id;->view_options_progress_layer2:I

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 533
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 536
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 540
    :cond_1
    sget p1, Lcom/amazon/kindle/thirdparty/R$id;->view_options_drop_down_progress_bar:I

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    if-eqz p3, :cond_2

    .line 541
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    .line 542
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/thirdparty/R$string;->accessibility_font_download_cancel:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    .line 543
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/thirdparty/R$string;->accessibility_font_downloading:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 541
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSupportedFonts()V
    .locals 7

    .line 387
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getSupportedFonts()[Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    .line 391
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 392
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    if-ne v6, v1, :cond_0

    .line 394
    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 396
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobipocket/android/drawing/FontFamily;

    .line 402
    :cond_2
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 406
    invoke-virtual {v4}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 408
    :cond_3
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportDownloadManually:Z

    if-eqz v1, :cond_4

    .line 409
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/thirdparty/R$string;->manage_large_font:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->setOptions([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getDropDownIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    array-length v1, v0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return-object v2

    .line 340
    :cond_0
    aget-object p1, v0, p1

    .line 342
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportDownloadManually:Z

    if-nez v0, :cond_1

    return-object v2

    .line 346
    :cond_1
    sget v0, Lcom/amazon/kindle/thirdparty/R$attr;->colorModeDependantTextColor:I

    .line 348
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportDownloadManually:Z

    if-eqz v1, :cond_3

    .line 349
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFontInfo(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    .line 353
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getDownloadableFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getPreviewDrawable()I

    move-result v1

    .line 356
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloaded()Z

    move-result p1

    if-nez p1, :cond_5

    .line 357
    sget p1, Lcom/amazon/kindle/thirdparty/R$attr;->aes_font_download_gray:I

    move v0, p1

    goto :goto_0

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getFont(Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v2

    .line 364
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->getPreviewDrawable()I

    move-result v1

    .line 367
    :cond_5
    :goto_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 368
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 369
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 370
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 371
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method protected getSelectedIndex()I
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    const/4 v1, 0x0

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 217
    aget-object v2, v2, v1

    if-ne v0, v2, :cond_1

    .line 218
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getLanguages()Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method protected inflateDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->inflateFontManageView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 232
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->inflateDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 233
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->view_options_drop_down_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    sget v1, Lcom/amazon/kindle/thirdparty/R$id;->view_options_drop_down_status:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 235
    sget v1, Lcom/amazon/kindle/thirdparty/R$id;->view_options_drop_down_file_size:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 236
    sget v2, Lcom/amazon/kindle/thirdparty/R$id;->view_options_drop_down_downloading:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    .line 237
    sget v2, Lcom/amazon/kindle/thirdparty/R$id;->view_options_drop_down_download_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    .line 241
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportDownloadManually:Z

    if-eqz v2, :cond_7

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    aget-object v2, v2, p1

    .line 243
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->getFontInfo(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/IFontInfo;

    move-result-object v10

    const/4 v11, 0x1

    if-eqz v10, :cond_6

    .line 246
    invoke-interface {v10}, Lcom/amazon/kcp/font/IFontInfo;->isDownloaded()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_2

    .line 248
    invoke-interface {v10}, Lcom/amazon/kcp/font/IFontInfo;->getResourceSizeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_2
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportDownloadManually:Z

    if-eqz v1, :cond_4

    .line 252
    invoke-interface {v10}, Lcom/amazon/kcp/font/IFontInfo;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    invoke-interface {v10}, Lcom/amazon/kcp/font/IFontInfo;->isDefaultFont()Z

    move-result v1

    xor-int/2addr v1, v11

    invoke-direct {p0, v9, v8, v1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->showProgressView(Landroid/widget/ImageView;Landroid/widget/FrameLayout;Z)V

    goto :goto_0

    .line 255
    :cond_3
    invoke-direct {p0, v9, v8}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->showDownloadView(Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/thirdparty/R$string;->accessibility_font_download:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 258
    invoke-interface {v10}, Lcom/amazon/kcp/font/IFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 259
    invoke-interface {v10}, Lcom/amazon/kcp/font/IFontInfo;->getResourceSizeString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 257
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/thirdparty/R$string;->accessibility_font_not_downloaded:I

    new-array v4, v11, [Ljava/lang/Object;

    .line 261
    invoke-interface {v10}, Lcom/amazon/kcp/font/IFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 260
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 263
    :cond_4
    invoke-direct {p0, v9, v8}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->showDownloadView(Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    const/16 v1, 0x8

    .line 264
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    invoke-interface {v10}, Lcom/amazon/kcp/font/IFontInfo;->getDownloadStatusStringId()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    :goto_1
    new-instance v1, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, v10

    move-object v5, v9

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;-><init>(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Lcom/amazon/kcp/font/IFontInfo;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    new-instance v1, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;

    invoke-direct {v1, p0, v10, v9, v8}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;-><init>(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Lcom/amazon/kcp/font/IFontInfo;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const/4 v3, 0x1

    .line 310
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->getSelectedIndex()I

    move-result v1

    if-ne p1, v1, :cond_7

    instance-of v1, p3, Landroid/widget/AbsListView;

    if-eqz v1, :cond_7

    .line 311
    check-cast p3, Landroid/widget/AbsListView;

    invoke-virtual {p3, p1, v11}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_7
    if-eqz v0, :cond_9

    if-eqz v3, :cond_8

    const-string p1, ""

    .line 317
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 319
    :cond_8
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->setTypeface(Landroid/widget/TextView;I)V

    :cond_9
    :goto_2
    return-object p2
.end method

.method protected inflateSelectedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 327
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->inflateSelectedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 328
    sget p3, Lcom/amazon/kindle/thirdparty/R$id;->view_options_selected_value:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 330
    invoke-direct {p0, p3, p1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->setTypeface(Landroid/widget/TextView;I)V

    :cond_0
    return-object p2
.end method

.method public isItemEnabled(I)Z
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    array-length v1, v0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    .line 568
    :cond_0
    aget-object p1, v0, p1

    .line 569
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportDownloadManually:Z

    if-eqz v0, :cond_1

    .line 570
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFontInfo(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 571
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloaded()Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onDownloadOnDemandFontEvent(Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 438
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->getFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getLanguageSet()Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mobipocket/android/drawing/LanguageSet;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 439
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$4;-><init>(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onFontDownloadConfirmationEvent(Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 450
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;->getFontDownloadConfirmationType()Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;->ALLOWED:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 451
    invoke-static {v0}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->setDownloadingFontByMobileDataAllowed(Z)V

    .line 453
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 456
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/amazon/kcp/font/FontDownloadService;->getFontDownloadIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amazon/kcp/font/FontDownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 459
    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/ManualFontDownloadHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getFontInfo(Ljava/lang/String;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$FontInfo;->setDownloading()V

    .line 461
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    .line 462
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSettingsChangedEvent(Lcom/amazon/kindle/persistence/SettingsChangedEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 418
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getCurrentBookLanguage()Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_FACE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamilyKey(Lcom/amazon/kcp/application/UserSettingsController$Setting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/persistence/SettingsChangedEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 420
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->refreshView()V

    goto :goto_0

    .line 422
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->language:Ljava/lang/String;

    invoke-static {v1}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->refreshView()V

    goto :goto_0

    .line 424
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->areRequiredFontsDownloaded:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/kcp/font/FontUtils;->areRequiredFontsDownloaded(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 425
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->areRequiredFontsDownloaded:Z

    .line 426
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$3;-><init>(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onSpinnerItemSelected(Landroid/widget/AdapterView;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;I)V"
        }
    .end annotation

    .line 114
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    aget-object p1, p1, p2

    .line 115
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getCurrentBookLanguage()Ljava/lang/String;

    move-result-object p2

    .line 120
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    if-ne p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setSecondaryFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 126
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$6;->$SwitchMap$com$mobipocket$android$drawing$FontFamily:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 205
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid font "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p2, "SagunaGujaratiFontClicked"

    goto :goto_0

    :pswitch_1
    const-string p2, "NewMalayalamFontClicked"

    goto :goto_0

    :pswitch_2
    const-string p2, "MurasuTamilFontClicked"

    goto :goto_0

    :pswitch_3
    const-string p2, "DevanagariFontClicked"

    goto :goto_0

    :pswitch_4
    const-string p2, "STSystemFontClicked"

    goto :goto_0

    :pswitch_5
    const-string p2, "STYuanTCFontClicked"

    goto :goto_0

    :pswitch_6
    const-string p2, "STKaitiTCFontClicked"

    goto :goto_0

    :pswitch_7
    const-string p2, "STHeitiTCFontClicked"

    goto :goto_0

    :pswitch_8
    const-string p2, "STSongTCFontClicked"

    goto :goto_0

    :pswitch_9
    const-string p2, "BookerlyFontClicked"

    goto :goto_0

    :pswitch_a
    const-string p2, "STZhongyuanFontClicked"

    goto :goto_0

    :pswitch_b
    const-string p2, "STKaitiFontClicked"

    goto :goto_0

    :pswitch_c
    const-string p2, "STHeitiFontClicked"

    goto :goto_0

    :pswitch_d
    const-string p2, "STBShusongFontClicked"

    goto :goto_0

    :pswitch_e
    const-string p2, "MYingHeiFontClicked"

    goto :goto_0

    :pswitch_f
    const-string p2, "TBMinchoFontClicked"

    goto :goto_0

    :pswitch_10
    const-string p2, "TBGothicFontClicked"

    goto :goto_0

    :pswitch_11
    const-string p2, "PalatinoFontClicked"

    goto :goto_0

    :pswitch_12
    const-string p2, "LucidaFontClicked"

    goto :goto_0

    :pswitch_13
    const-string p2, "HelveticaFontClicked"

    goto :goto_0

    :pswitch_14
    const-string p2, "GeorgiaFontClicked"

    goto :goto_0

    :pswitch_15
    const-string p2, "DroidSerifFontClicked"

    goto :goto_0

    :pswitch_16
    const-string p2, "CaeciliaFontClicked"

    goto :goto_0

    :pswitch_17
    const-string p2, "BaskervilleFontClicked"

    :goto_0
    if-eqz p2, :cond_1

    .line 209
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "FontOptionData"

    invoke-virtual {p1, v1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateViewContentDescription(Landroid/widget/ImageView;I)V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->supportedFonts:[Lcom/mobipocket/android/drawing/FontFamily;

    aget-object p2, v0, p2

    if-eqz p2, :cond_0

    .line 582
    invoke-virtual {p2}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
