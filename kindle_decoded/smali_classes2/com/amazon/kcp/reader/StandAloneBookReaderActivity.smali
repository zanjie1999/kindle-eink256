.class public Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;
.super Lcom/amazon/kcp/reader/BookReaderActivity;
.source "StandAloneBookReaderActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private final docViewerEventHandler:Lcom/amazon/android/docviewer/KindleDocViewerEvents;

.field private firstPositionChange:Z

.field private isFontDownloadOnDemandStart:Z

.field private standaloneTTS:Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;

.field private ttsButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->isFontDownloadOnDemandStart:Z

    .line 76
    new-instance v0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$1;-><init>(Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->docViewerEventHandler:Lcom/amazon/android/docviewer/KindleDocViewerEvents;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->firstPositionChange:Z

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->firstPositionChange:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addTtsButtonForAccessibility()V
    .locals 4

    .line 378
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->reader_under_drawer:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/thirdparty/R$layout;->tts_button_container_accessibility:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 381
    sget v2, Lcom/amazon/kindle/thirdparty/R$id;->start_tts_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->ttsButton:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 385
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isWindowsDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->ttsButton:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/thirdparty/R$string;->kre_page_turn_accessibility_tutorial_windows:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->ttsButton:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/thirdparty/R$string;->speak_content_view_tts_button:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 390
    :goto_0
    sget-object v2, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->TAG:Ljava/lang/String;

    const-string v3, "set continuous reading content description"

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->ttsButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 392
    iget-object v2, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->ttsButton:Landroid/view/View;

    new-instance v3, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$3;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$3;-><init>(Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 400
    iget-object v2, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->ttsButton:Landroid/view/View;

    new-instance v3, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$4;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$4;-><init>(Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private downloadFontsForBook(Ljava/lang/String;)V
    .locals 3

    .line 416
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 420
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->doesOnDemandFontExist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 423
    sget-object v0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->TAG:Ljava/lang/String;

    const-string v2, "Its on demand app expan font, download fonts if needed"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v0

    invoke-static {p1}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->isFontDownloadOnDemandStart:Z

    if-nez v0, :cond_2

    .line 426
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->downloadOnDemandFontsIfNeeded(Ljava/lang/String;)V

    .line 427
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->isFontDownloadOnDemandStart:Z

    goto :goto_0

    .line 429
    :cond_1
    invoke-static {p1}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;->shouldUseAES()Z

    move-result v0

    if-nez v0, :cond_2

    .line 433
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    .line 432
    invoke-static {v0, p1}, Lcom/amazon/kcp/font/FontUtils;->areRequiredFontsDownloaded(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 436
    invoke-static {p0, p1}, Lcom/amazon/kcp/font/FontDownloadService;->getFontDownloadIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 437
    invoke-static {p0, p1}, Lcom/amazon/kcp/font/FontDownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isFixedFormat()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reportContinuousReadingMetrics()V
    .locals 3

    .line 276
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinuousReadingStarted"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics;->recordContinuousReadingStarted(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createGestureHandlerProvider()Lcom/amazon/kcp/reader/gestures/IGestureHandlerProvider;
    .locals 1

    .line 249
    new-instance v0, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;-><init>()V

    return-object v0
.end method

.method public getAdditionalCommandItems()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 238
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAdditionalCommandItems()Ljava/util/Set;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 240
    new-instance v2, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;

    invoke-direct {v2, p0, v0}, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->TAG:Ljava/lang/String;

    const-string v2, "Metadata is null when populating CommandBar. KFC share button missing."

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method protected handleOverlayVisibilityChanged(Z)V
    .locals 1

    .line 301
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->handleOverlayVisibilityChanged(Z)V

    .line 303
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->start_tts_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 307
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderActivity"

    const-string v2, "BookExitViaBackButton"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onBackPressed()V

    return-void
.end method

.method public onColorModeChangeEvent(Lcom/amazon/kindle/event/ColorModeChangeEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 315
    invoke-virtual {p1}, Lcom/amazon/kindle/event/ColorModeChangeEvent;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    .line 316
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->start_tts_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/amazon/kindle/event/ColorModeChangeEvent;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 109
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/BookReaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 115
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsTouchAccessibility()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->addTtsButtonForAccessibility()V

    .line 119
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 120
    iget-object v1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->standaloneTTS:Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 122
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->isSoundSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    new-instance p1, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p1, v1, v2}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->standaloneTTS:Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;

    .line 128
    :cond_2
    sget-object p1, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportsTouchAccessibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsTouchAccessibility()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nisTouchExplorationEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nisScreenReaderEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nisSoundSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 135
    new-instance v0, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    :cond_3
    return-void
.end method

.method public onNavigate(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 100
    invoke-static {}, Lcom/amazon/kcp/sounds/PageTurnSound;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PAGE_CHANGE:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 103
    invoke-static {}, Lcom/amazon/kcp/sounds/PageTurnSound;->playSound()V

    :cond_0
    return-void
.end method

.method public onReaderModeChangedEvent(Lcom/amazon/kindle/krx/reader/ReaderModeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/reader/ReaderModeEvent;->getPreviousMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/reader/ReaderModeEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_0

    .line 349
    new-instance v0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$2;-><init>(Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "AmazonKindle"

    .line 160
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    sget-object v1, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->TAG:Ljava/lang/String;

    const-string v2, "BadParcelableException occurred when attempting to restore StandAloneBookReaderActivity instance state"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v2, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->TAG:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 171
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const-string v1, "OnRestoreInstanceStateBPE"

    .line 172
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 170
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 163
    sget-object v1, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->TAG:Ljava/lang/String;

    const-string v2, "NPE occurred when attempting to restore StandAloneBookReaderActivity instance state"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v2, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->TAG:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 165
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const-string v1, "OnRestoreInstanceStateNPE"

    .line 166
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 190
    invoke-super {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->onResume()V

    .line 193
    invoke-direct {p0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->isFixedFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontContentPackService()Lcom/amazon/kindle/services/fonts/IFontContentPackService;

    move-result-object v0

    if-nez v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 203
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getDictionarySecondaryLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    :cond_1
    invoke-static {v1}, Lcom/amazon/kindle/utils/LanguageUtils;->formatLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v2}, Lcom/amazon/kindle/utils/LanguageUtils;->formatLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->downloadFontsForBook(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->downloadFontsForBook(Ljava/lang/String;)V

    .line 214
    invoke-static {v0}, Lcom/amazon/kcp/font/FontUtils;->fontRequiresUserNotification(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    invoke-static {v1}, Lcom/amazon/kcp/font/FontUtils;->fontRequiresUserNotification(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    :cond_2
    invoke-static {v0}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getReaderFontToastViewCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 218
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setReaderFontToastViewCount(I)V

    .line 219
    sget v0, Lcom/amazon/kindle/thirdparty/R$string;->font_download_toast:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 224
    :cond_3
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->handleOverlayVisibilityChanged(Z)V

    :cond_4
    return-void
.end method

.method public onSelectionChangedEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 328
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 333
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v2, 0x2

    .line 335
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->ttsButton:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 336
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_3
    return-void
.end method

.method protected declared-synchronized onStart()V
    .locals 3

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_WARM_START:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    invoke-super {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->onStart()V

    .line 145
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->firstPositionChange:Z

    .line 146
    invoke-static {}, Lcom/amazon/kcp/sounds/PageTurnSound;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p0}, Lcom/amazon/kcp/sounds/PageTurnSound;->initSounds(Landroid/content/Context;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->docViewerEventHandler:Lcom/amazon/android/docviewer/KindleDocViewerEvents;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onStop()V
    .locals 2

    .line 178
    invoke-super {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->onStop()V

    .line 179
    invoke-static {}, Lcom/amazon/kcp/sounds/PageTurnSound;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lcom/amazon/kcp/sounds/PageTurnSound;->destroy()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->docViewerEventHandler:Lcom/amazon/android/docviewer/KindleDocViewerEvents;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    :cond_1
    return-void
.end method

.method protected shouldSetOverlayVisibleAtLaunch()Z
    .locals 1

    .line 363
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->wasRestartedForSettingsChange()Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    return v0

    .line 369
    :cond_2
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldSetOverlayVisibleAtLaunch()Z

    move-result v0

    return v0
.end method

.method public startContinuousReading()V
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsTouchAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->standaloneTTS:Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->startSpeaking()V

    .line 271
    invoke-direct {p0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->reportContinuousReadingMetrics()V

    :cond_0
    return-void
.end method

.method public stopContinuousReading()Z
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsTouchAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->standaloneTTS:Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->isBookReaderSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->standaloneTTS:Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->stopSpeaking()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
