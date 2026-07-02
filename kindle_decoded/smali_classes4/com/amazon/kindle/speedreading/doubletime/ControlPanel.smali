.class public Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;
.super Ljava/lang/Object;
.source "ControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;,
        Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;,
        Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOUBLETIME_SPEED:I = 0x96

.field private static final SHARED_PREFS:Ljava/lang/String; = "DoubleTime"

.field private static final SHARED_PREFS_VAR:Ljava/lang/String; = "word_speed"


# instance fields
.field private animationController:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

.field private backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

.field private controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

.field private currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private doubleTimeView:Landroid/view/View;

.field private final dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

.field private forwardButton:Landroid/widget/ImageButton;

.field private looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

.field private looperHandler:Landroid/os/Handler;

.field private playPauseButton:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

.field private rewindButton:Landroid/widget/ImageButton;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private shouldCheckPage:Ljava/lang/Boolean;

.field private speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

.field private textColor:I

.field private wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

.field private wordContainerTextColor:I

.field private wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Landroid/view/View;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->shouldCheckPage:Ljava/lang/Boolean;

    .line 105
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 107
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    .line 108
    iput-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    .line 109
    iput-object p5, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    .line 110
    iput-object p6, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    .line 111
    iput-object p4, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    .line 113
    iput-object p9, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->doubleTimeView:Landroid/view/View;

    .line 115
    new-instance p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looperHandler:Landroid/os/Handler;

    .line 175
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$2;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$2;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 184
    iput-object p8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->animationController:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    .line 186
    iput-object p7, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->updateText()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Ljava/lang/Boolean;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->shouldCheckPage:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->initWordPositions()V

    return-void
.end method

.method static synthetic access$1500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Landroid/widget/ImageButton;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->rewindButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/widget/ImageButton;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Landroid/widget/ImageButton;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->forwardButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/SystemMarginView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->animationController:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->checkPage()V

    return-void
.end method

.method static synthetic access$2000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->hideClutchView()V

    return-void
.end method

.method static synthetic access$2200(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->getClutchCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->stopClutchScrolling()V

    return-void
.end method

.method static synthetic access$2500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->refreshHighlights()V

    return-void
.end method

.method static synthetic access$2600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->animateToWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->showEndOfChapterDialog(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->setPageMarkerPositions()V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;I)D
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->calculateWPMFudgeFactor(I)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;D)J
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->calculateDelayFromWPM(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private animateToWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->setGesturesDisabled(Z)V

    .line 657
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->doubleTimeView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->clutchview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    .line 658
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$8;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$8;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->animateToWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Ljava/lang/Runnable;)Z

    return-void
.end method

.method private calculateDelayFromWPM(D)J
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 p1, 0x96

    return-wide p1

    :cond_0
    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, p1

    .line 315
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method

.method private calculateWPMFudgeFactor(I)D
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x3fcc504816f0068eL    # 0.2212

    mul-double v0, v0, v2

    const-wide v2, 0x40260e5604189375L    # 11.028

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private checkPage()V
    .locals 5

    .line 260
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2, v4}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->shouldCheckPage:Ljava/lang/Boolean;

    .line 271
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPreviousPage()V

    .line 274
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2, v4}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->shouldCheckPage:Ljava/lang/Boolean;

    .line 278
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToNextPage()V

    :cond_1
    return-void
.end method

.method private getClutchCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->doubleTimeView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->clutchview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    .line 642
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    return-object v0
.end method

.method private hideClutchView()V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->hideClutch()V

    return-void
.end method

.method private initWordPositions()V
    .locals 2

    .line 196
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->setPageMarkerPositions()V

    .line 198
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getWordAtPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->setCurrentWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    return-void
.end method

.method public static progressToWordsPerMin(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x19

    add-int/lit8 p0, p0, 0x32

    return p0
.end method

.method private refreshHighlights()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getHighlightDecorationProvider()Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    return-void
.end method

.method private setButtonEnabled(Landroid/widget/ImageButton;Z)V
    .locals 0

    .line 543
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 547
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f000000    # 0.5f

    .line 551
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private setPageMarkerPositions()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 248
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v0, 0x1

    .line 250
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->shouldCheckPage:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method private showEndOfChapterDialog(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 13

    move-object v11, p0

    .line 220
    iget-object v0, v11, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, v11, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->pauseDoubletime()V

    .line 224
    iget-object v0, v11, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v5

    .line 225
    new-instance v12, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    iget-object v0, v11, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    .line 226
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v11, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v4, v11, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    iget-object v0, v11, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    .line 228
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getMetricsHandler()Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    move-result-object v10

    move-object v0, v12

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)V

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 231
    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$3;

    invoke-direct {v1, p0, v12}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$3;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private stopClutchScrolling()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->doubleTimeView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->clutchview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    .line 631
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setClutchSpeed(F)V

    return-void
.end method

.method private updateText()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    iget v2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainerTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private wordsPerMinToProgress(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x32

    .line 327
    div-int/lit8 p1, p1, 0x19

    return p1
.end method


# virtual methods
.method public enableForwardRewind(Z)V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->rewindButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    .line 620
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->forwardButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    return-void
.end method

.method public getCurrentWordsPerMin()I
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->doubletime_speed_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    .line 352
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->progressToWordsPerMin(I)I

    move-result v0

    return v0
.end method

.method getPlayPauseButton()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->playPauseButton:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    return-object v0
.end method

.method public inflateView(Landroid/view/ViewGroup;)V
    .locals 7

    .line 449
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "DoubleTime"

    .line 452
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "word_speed"

    const/16 v4, 0x96

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 453
    invoke-direct {p0, v2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->calculateWPMFudgeFactor(I)D

    move-result-wide v3

    int-to-double v5, v2

    add-double/2addr v5, v3

    .line 455
    invoke-direct {p0, v5, v6}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->calculateDelayFromWPM(D)J

    move-result-wide v3

    .line 456
    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->setUserDelay(JI)V

    .line 458
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/speedreading/R$layout;->dt_control_panel:I

    invoke-virtual {v3, v4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/speedreading/SystemMarginView;

    iput-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    .line 459
    new-instance v4, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$4;

    invoke-direct {v4, p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$4;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 467
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looperHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->registerListener(Landroid/os/Handler;)V

    .line 469
    new-instance v3, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v5, Lcom/amazon/kindle/speedreading/R$id;->doubletime_play_pause_btn:I

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-direct {v3, p0, v4}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/widget/ImageButton;)V

    iput-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->playPauseButton:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    .line 471
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v4, Lcom/amazon/kindle/speedreading/R$id;->doubletime_backward_btn:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->rewindButton:Landroid/widget/ImageButton;

    .line 472
    new-instance v4, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v4, Lcom/amazon/kindle/speedreading/R$id;->doubletime_forward_btn:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->forwardButton:Landroid/widget/ImageButton;

    .line 475
    new-instance v4, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;

    invoke-direct {v4, p0, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v3, Lcom/amazon/kindle/speedreading/R$id;->doubletime_seekbar_bubble:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 478
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v4, Lcom/amazon/kindle/speedreading/R$id;->doubletime_label:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 480
    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v5, Lcom/amazon/kindle/speedreading/R$id;->doubletime_speed_bar:I

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    .line 484
    invoke-virtual {v4, v1, v3}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->setTextView(Landroid/widget/LinearLayout;Landroid/view/View;)V

    const/16 v1, 0x22

    .line 485
    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 486
    invoke-direct {p0, v2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordsPerMinToProgress(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 487
    invoke-direct {p0, v2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordsPerMinToProgress(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->updateTextView(I)V

    .line 488
    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;

    invoke-direct {v1, p0, v4, v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;Landroid/app/Activity;)V

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 538
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public isDoubleTimePaused()Z
    .locals 2

    .line 567
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->getPlayPauseButton()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->access$1000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PAUSE:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pauseDoubleTime()V
    .locals 2

    .line 593
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 594
    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$7;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$7;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resumeFromHolding()V
    .locals 2

    .line 576
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 577
    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$6;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$6;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resumeLooper()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->resumeDoubletime(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    return-void
.end method

.method public updateColors(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 10

    .line 365
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->doubletime_label:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 366
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v2, Lcom/amazon/kindle/speedreading/R$id;->doubletime_min_words_per_minute:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 367
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v3, Lcom/amazon/kindle/speedreading/R$id;->doubletime_mid_words_per_minute:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 368
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v4, Lcom/amazon/kindle/speedreading/R$id;->doubletime_max_words_per_minute:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 370
    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    sget v5, Lcom/amazon/kindle/speedreading/R$id;->doubletime_speed_bar:I

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    .line 371
    invoke-virtual {v4, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 377
    sget-object v4, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$9;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p1, v7, :cond_2

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_0

    .line 397
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v8, Lcom/amazon/kindle/speedreading/R$drawable;->dt_reader_bottom_chrome_white_bg:I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 398
    iget-object v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_text:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->textColor:I

    .line 399
    iget-object v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_button_disable:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    goto/16 :goto_0

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v8, Lcom/amazon/kindle/speedreading/R$drawable;->dt_reader_bottom_chrome_sepia_bg:I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 392
    iget-object v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_text:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->textColor:I

    .line 393
    iget-object v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_button_disable:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    goto :goto_0

    .line 386
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v8, Lcom/amazon/kindle/speedreading/R$drawable;->dt_reader_bottom_chrome_green_bg:I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 387
    iget-object v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_text:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->textColor:I

    .line 388
    iget-object v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_button_disable:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    goto :goto_0

    .line 381
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v8, Lcom/amazon/kindle/speedreading/R$drawable;->dt_reader_bottom_chrome_black_bg:I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 382
    iget-object v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_text:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->textColor:I

    .line 383
    iget-object v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_button_disable:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    .line 403
    :goto_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-ge v8, v9, :cond_3

    .line 406
    iget-object v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    invoke-virtual {v8, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 410
    :cond_3
    iget-object v8, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->controlPanel:Lcom/amazon/kindle/speedreading/SystemMarginView;

    invoke-virtual {v8, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 414
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 415
    sget-object v8, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$9;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v8, p2

    if-eq p2, v7, :cond_7

    if-eq p2, v6, :cond_7

    if-eq p2, v5, :cond_6

    if-eq p2, v4, :cond_5

    const/4 v4, 0x5

    if-eq p2, v4, :cond_4

    .line 431
    iget p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->textColor:I

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainerTextColor:I

    goto :goto_2

    .line 428
    :cond_4
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainerTextColor:I

    goto :goto_2

    .line 425
    :cond_5
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainerTextColor:I

    goto :goto_2

    .line 422
    :cond_6
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainerTextColor:I

    goto :goto_2

    .line 419
    :cond_7
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->wordContainerTextColor:I

    .line 435
    :goto_2
    iget p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->textColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    iget p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->textColor:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    iget p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->textColor:I

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    iget p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->textColor:I

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
