.class public Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;
.super Ljava/lang/Object;
.source "DoubletimeController.java"


# static fields
.field private static final SHARED_PREFS:Ljava/lang/String; = "DoubleTime"

.field private static final SHARED_PREFS_VAR:Ljava/lang/String; = "first_time_tutorial"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.speedreading.doubletime.DoubletimeController"


# instance fields
.field private backStackController:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

.field private backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

.field private clutchTouchListener:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

.field private controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

.field private controlPanelSurface:Landroid/view/ViewGroup;

.field private currentBookId:Ljava/lang/String;

.field private doubleTimeView:Landroid/view/View;

.field private final highlightDecorationProvider:Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;

.field private isInDoubletimeMode:Z

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

.field private metricsHandler:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

.field private needsInitialization:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private originalOrientation:I

.field private overlayHeader:Landroid/view/View;

.field private readerSurface:Landroid/view/ViewGroup;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

.field private wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

.field private wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

.field private wordRunnerAnimationController:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

.field private wordTokenIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode:Z

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->overlayHeader:Landroid/view/View;

    .line 64
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    .line 65
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->readerSurface:Landroid/view/ViewGroup;

    .line 66
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanelSurface:Landroid/view/ViewGroup;

    .line 68
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    .line 69
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    .line 70
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    .line 71
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    .line 72
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    .line 73
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->backStackController:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    .line 78
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    const/4 v1, -0x1

    .line 80
    iput v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->originalOrientation:I

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->needsInitialization:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 97
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 98
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;

    invoke-direct {v0, p1, p0}, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->highlightDecorationProvider:Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;

    .line 99
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->highlightDecorationProvider:Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerContentDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 101
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->registerReaderNavigationListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->lockOrientation()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->initializeDoubletime()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->changeReaderSize()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->currentBookId:Ljava/lang/String;

    return-object p0
.end method

.method private changeReaderSize()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/speedreading/R$dimen;->dt_control_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 191
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    float-to-int v1, v1

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setReaderBottomMargin(I)V

    .line 193
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getWordProvider()Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getWordAtPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getLooper()Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->setCurrentWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    .line 196
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    :cond_0
    return-void
.end method

.method private getOrientation()I
    .locals 1

    .line 689
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private getPopupBackgroundColor()I
    .locals 2

    .line 336
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    .line 338
    sget-object v1, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$11;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private inflateDoubleTimeView()V
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->createSurfaceOverReader()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->readerSurface:Landroid/view/ViewGroup;

    .line 449
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 450
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/speedreading/R$layout;->double_time_view:I

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->readerSurface:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    .line 452
    sget v1, Lcom/amazon/kindle/speedreading/R$id;->dt_header_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->overlayHeader:Landroid/view/View;

    const/16 v1, 0x8

    .line 454
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->overlayHeader:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->doubletime_quit_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 457
    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$9;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$9;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->dt_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 467
    new-instance v1, Lcom/amazon/kindle/speedreading/cutout/DisplayCutoutInsetListener;

    invoke-direct {v1}, Lcom/amazon/kindle/speedreading/cutout/DisplayCutoutInsetListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->background_layer_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    .line 471
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->dt_speed_reading_box_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    .line 472
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->dt_word_container_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    .line 473
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->setSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 475
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->readerSurface:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initializeDoubletime()V
    .locals 13

    .line 205
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode:Z

    if-nez v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->createWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordTokenIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/speedreading/R$string;->dt_error_dialog_title:I

    sget v3, Lcom/amazon/kindle/speedreading/R$string;->dt_error_dialog_message:I

    sget v4, Lcom/amazon/kindle/speedreading/R$string;->dt_eoc_dismiss_button:I

    const v5, 0x1080027

    const/4 v6, 0x0

    new-instance v7, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$4;

    invoke-direct {v7, p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$4;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->showAlertDialog(Landroid/content/Context;IIIIZLandroid/content/DialogInterface$OnClickListener;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordTokenIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-eqz v0, :cond_3

    .line 224
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->onStartDoubletime(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    const/4 v10, 0x0

    invoke-interface {v0, v10, v10}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    .line 229
    new-instance v0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->metricsHandler:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    .line 231
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 236
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->currentBookId:Ljava/lang/String;

    const/4 v11, 0x1

    .line 238
    iput-boolean v11, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode:Z

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setPanelsInteractive(Z)Z

    .line 240
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->disableStandardOverlays()V

    .line 242
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/FontSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->setReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 243
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordTokenIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;-><init>(Lcom/amazon/kindle/search/IKindleWordTokenIterator;Lcom/amazon/kindle/krx/reader/IPositionFactory;)V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    .line 245
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 246
    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->setTreadmillRampUp(Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;)V

    .line 248
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 249
    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->setWordWiseDelay(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)V

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->inflateDoubleTimeView()V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    invoke-interface {v0, v11, v11}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    .line 258
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;-><init>(Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;Lcom/amazon/kindle/krx/logging/ILogger;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    .line 259
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 261
    new-instance v8, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    invoke-direct {v8, v0, v1, v2}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;)V

    iput-object v8, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordRunnerAnimationController:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    .line 262
    new-instance v12, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    iget-object v5, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    iget-object v6, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    iget-object v9, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Landroid/view/View;)V

    iput-object v12, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    .line 264
    new-instance v6, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;-><init>(Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;Landroid/view/View;Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    iput-object v6, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->clutchTouchListener:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    .line 266
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->clutchview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    .line 267
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->setEventManager(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    .line 269
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->clutchTouchListener:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$5;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->setExitButtonListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->createSurfaceOverReader()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanelSurface:Landroid/view/ViewGroup;

    .line 286
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->inflateView(Landroid/view/ViewGroup;)V

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/PlaySelectionProvider;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/doubletime/PlaySelectionProvider;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerSelectionPlayButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 293
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->metricsHandler:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportDoubleTimeEntered()V

    .line 296
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->currentBookId:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->DOUBLETIME:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->setReaderMode(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V

    .line 298
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->setColorMode()V

    .line 300
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->highlightDecorationProvider:Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 303
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "DoubleTime"

    invoke-virtual {v0, v1, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_time_tutorial"

    .line 304
    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v2

    .line 310
    new-instance v3, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;

    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v3, v4, v5, v2}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 312
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 313
    new-instance v4, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$6;

    invoke-direct {v4, p0, v3}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$6;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 328
    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    invoke-direct {v1, v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->backStackController:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    :cond_3
    return-void
.end method

.method private initializeIfNeeded(Landroid/os/Handler;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->needsInitialization:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$2;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$3;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private lockOrientation()V
    .locals 1

    .line 706
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->originalOrientation:I

    const/4 v0, 0x7

    .line 707
    invoke-direct {p0, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->setOrientation(I)V

    return-void
.end method

.method private registerReaderNavigationListener()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$8;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$8;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    return-void
.end method

.method private releaseOrientationLock()V
    .locals 1

    .line 715
    iget v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->originalOrientation:I

    invoke-direct {p0, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->setOrientation(I)V

    return-void
.end method

.method private setColorMode()V
    .locals 4

    .line 404
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {v2, v1, v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->updateColors(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 408
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->updateColors(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 409
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v2, v3, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->updateColors(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 410
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v2, v3, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->updateColors(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 411
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->highlightDecorationProvider:Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->updateColors(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 414
    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$11;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_reader_top_chrome_white_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_reader_top_chrome_sepia_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_reader_top_chrome_green_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_reader_top_chrome_black_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 432
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 435
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->overlayHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 439
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->overlayHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private setOrientation(I)V
    .locals 3

    .line 661
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 669
    new-instance v2, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$10;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$10;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Landroid/app/Activity;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private showAlertDialog(Landroid/content/Context;IIIIZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 354
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 355
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    if-eqz p5, :cond_0

    .line 358
    invoke-virtual {v0, p5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 360
    :cond_0
    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v0, p4, p7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getPopupBackgroundColor()I

    move-result p4

    invoke-direct {p3, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 369
    new-instance p3, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$7;

    invoke-direct {p3, p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$7;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Landroid/app/AlertDialog;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cleanUpDoubleTime()V
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->backStackController:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->removeDoubleTimeFromBackStack()V

    .line 751
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->TAG:Ljava/lang/String;

    const-string v2, "Double Time cleared and removed from back stack"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableCloseButton(Z)V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->enableCloseButton(Z)V

    return-void
.end method

.method public enableForwardRewind(Z)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->enableForwardRewind(Z)V

    return-void
.end method

.method public enablePlayPause(Z)V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->getPlayPauseButton()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->setPlayPauseEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->clutchTouchListener:Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    return-object v0
.end method

.method public getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 2

    .line 586
    const-class v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 587
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    .line 591
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object v0

    .line 595
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object v0

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    return-object v0
.end method

.method public getControlPanel()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getHighlightDecorationProvider()Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->highlightDecorationProvider:Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;

    return-object v0
.end method

.method public getLooper()Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    return-object v0
.end method

.method public getMetricsHandler()Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->metricsHandler:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    return-object v0
.end method

.method public getOverlayHeader()Landroid/view/View;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->overlayHeader:Landroid/view/View;

    return-object v0
.end method

.method public getWordProvider()Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    return-object v0
.end method

.method public isInDoubletimeMode()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode:Z

    return v0
.end method

.method public onActivityPaused()V
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->pauseDoubleTime()V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->overlayHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 731
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    .line 741
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 742
    invoke-direct {p0, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->initializeIfNeeded(Landroid/os/Handler;)V

    return-void
.end method

.method public setPlayPauseMode(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->getPlayPauseButton()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->setMode(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;)V

    :cond_0
    return-void
.end method

.method public startDoubletimeMode(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 11

    .line 119
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v1

    .line 123
    iget-boolean v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode:Z

    if-nez v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/speedreading/R$string;->dt_cs_not_supported_dialog_title:I

    sget v6, Lcom/amazon/kindle/speedreading/R$string;->dt_cs_not_supported_dialog_message:I

    sget v7, Lcom/amazon/kindle/speedreading/R$string;->dt_cs_not_supported_dialog_button:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->showAlertDialog(Landroid/content/Context;IIIIZLandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 135
    :cond_0
    new-instance v2, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Lcom/amazon/kindle/krx/reader/IBookNavigator;Lcom/amazon/kindle/krx/reader/IReaderModeHandler;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->needsInitialization:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->initializeIfNeeded(Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized stopDoubletimeMode()V
    .locals 3

    monitor-enter p0

    .line 483
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordRunnerAnimationController:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->cancelAnimation()V

    .line 490
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->currentBookId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->DOUBLETIME:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->currentBookId:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->setReaderMode(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V

    :cond_0
    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode:Z

    const/4 v1, 0x0

    .line 496
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->doubleTimeView:Landroid/view/View;

    .line 497
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->overlayHeader:Landroid/view/View;

    .line 499
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v2

    invoke-interface {v2, v0, v0}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    .line 500
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->enableStandardOverlays()V

    .line 502
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->readerSurface:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->readerSurface:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->removeSurfaceOverReader(Landroid/view/ViewGroup;)V

    .line 505
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->readerSurface:Landroid/view/ViewGroup;

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->wordTokenIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    .line 511
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->releaseOrientationLock()V

    .line 513
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanelSurface:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->removeSurfaceOverReader(Landroid/view/ViewGroup;)V

    .line 516
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/speedreading/R$dimen;->dt_control_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, -0x1

    .line 518
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setReaderBottomMargin(I)V

    .line 520
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setPanelsInteractive(Z)Z

    .line 522
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    .line 524
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->stopDoubletime()V

    .line 527
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->metricsHandler:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportDoubleTimeExited()V

    .line 533
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->metricsHandler:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->endMetrics()V

    .line 535
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->onStopDoubletime(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
