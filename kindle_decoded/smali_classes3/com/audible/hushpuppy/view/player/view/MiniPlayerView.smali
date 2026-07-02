.class public final Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;
.super Lcom/audible/hushpuppy/view/player/view/PlayerView;
.source "MiniPlayerView.java"


# static fields
.field private static final JUMP_BACK_SECONDS:I = 0x1e

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private actionArea:Landroid/view/View;

.field audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private cancelButton:Landroid/widget/ImageView;

.field private cancelButtonContainer:Landroid/view/View;

.field private coverArtOverlay:Landroid/view/View;

.field private coverArtOverlayImg:Landroid/widget/ImageView;

.field private coverArtView:Landroid/widget/ImageView;

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private downloadProgressBackgroundBar:Landroid/widget/ProgressBar;

.field private downloadProgressForegroundBar:Landroid/widget/ProgressBar;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppyPerformanceUtils:Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

.field private jumpBackButton:Landroid/widget/ImageView;

.field private jumpBackButtonContainer:Landroid/view/View;

.field private final metricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

.field private miniPlayerAreaClickedListener:Landroid/view/View$OnClickListener;

.field private playPauseButton:Landroid/widget/ImageView;

.field private playPauseButtonContainer:Landroid/view/View;

.field private subtitleText:Landroid/widget/TextView;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/view/player/view/PlayerView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)V

    .line 484
    new-instance p1, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$7;

    invoke-direct {p1, p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$7;-><init>(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->miniPlayerAreaClickedListener:Landroid/view/View$OnClickListener;

    .line 169
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iput-object p5, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->metricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    .line 171
    iput-object p6, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 172
    iput-object p7, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->hushpuppyPerformanceUtils:Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    .line 173
    iput-object p8, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->eventBus:Lde/greenrobot/event/EventBus;

    .line 174
    invoke-virtual {p8, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 175
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/PlayerType;->LIBRARY_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    if-eq p1, p2, :cond_1

    sget-object p1, Lcom/audible/hushpuppy/view/player/view/PlayerType;->MINI_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "playerType must be either LIBRARY_PLAYER or MINI_PLAYER"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->hushpuppyPerformanceUtils:Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshPlayerControls()V

    return-void
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshAfterDownloadCancelled()V

    return-void
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->metricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    return-object p0
.end method

.method private getCancelButtonResourceId()I
    .locals 2

    .line 541
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->mini_player_cancel_button_white:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->mini_player_cancel_button_black:I

    :goto_0
    return v0
.end method

.method private getJumpBackButtonResourceId()I
    .locals 2

    .line 537
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->mini_player_jump_back_button_white:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->mini_player_jump_back_button_black:I

    :goto_0
    return v0
.end method

.method private getPauseButtonResourceId()I
    .locals 2

    .line 532
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->mini_player_pause_button_white:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->mini_player_pause_button_black:I

    :goto_0
    return v0
.end method

.method private getPlayButtonResourceId()I
    .locals 2

    .line 527
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->mini_player_play_button_white:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->mini_player_play_button_black:I

    :goto_0
    return v0
.end method

.method private getTextColor(I)I
    .locals 1

    .line 549
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private isLandscapeMode()Z
    .locals 2

    .line 545
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onlyTitleToBeDisplayed()Z
    .locals 2

    .line 522
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->isLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->playerType:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    sget-object v1, Lcom/audible/hushpuppy/view/player/view/PlayerType;->MINI_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refreshAfterDownloadCancelled()V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isAudiobookDownloading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isAudiobookDownloadPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasAudiobookAsin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 573
    :cond_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshCoverArt()V

    .line 574
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->setUiToDownloadNeeded()V

    :cond_2
    return-void
.end method

.method private refreshButtonImages()V
    .locals 0

    .line 303
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshCancelButton()V

    .line 305
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshPlayerControls()V

    return-void
.end method

.method private refreshCancelButton()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->playerType:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    sget-object v1, Lcom/audible/hushpuppy/view/player/view/PlayerType;->MINI_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->cancelButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->getCancelButtonResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->cancelButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-direct {p0, v1}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->setCoverArtLeftMargin(I)V

    goto :goto_1

    .line 334
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->cancelButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$dimen;->mini_player_cover_art_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->setCoverArtLeftMargin(I)V

    :goto_1
    return-void
.end method

.method private refreshCoverArt()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;->loadImage(Landroid/widget/ImageView;Lcom/audible/mobile/domain/Asin;)V

    .line 297
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/audible/mobile/util/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private refreshDownloadStateAfterViewReappear()V
    .locals 2

    .line 600
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADING:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/ViewController;->getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 601
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "No need to refresh download state because player wasn\'t in a downloading state"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 606
    sget-object v1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "No need to refresh download state because current Asin isn\'t available"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 612
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->NONE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V

    .line 613
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->setDownloadProgressToComplete()V

    .line 614
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refresh()V

    .line 615
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Refreshing MiniPlayer view to reflect a downloaded state"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloading(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->NONE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V

    .line 618
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->setDownloadProgressToEmpty()V

    .line 619
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refresh()V

    .line 620
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Refreshing MiniPlayer view to reflect a not downloaded state"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private refreshPlayerControls()V
    .locals 7

    .line 310
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->jumpBackButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->playPauseButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isSeekBarPositionPlayable()Z

    move-result v0

    .line 314
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upsell_jumpback_button_description:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 316
    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->jumpBackButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->getJumpBackButtonResourceId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->jumpBackButtonContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->jumpBackButtonContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v3}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 320
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->playPauseButtonContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v3}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 322
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->shouldShowPlayButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->playPauseButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->getPlayButtonResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->playPauseButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->player_play_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->playPauseButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->getPauseButtonResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->playPauseButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->player_pause_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setCoverArtLeftMargin(I)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 346
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 347
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setUiToDownloadError()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlayImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlayImg:Landroid/widget/ImageView;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->mini_player_download_button_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressForegroundBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressBackgroundBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->persistent_player_download_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 506
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->persistent_player_download_try_again_:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 507
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 508
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->link_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->applyLinkStyle(Landroid/widget/TextView;I)V

    .line 510
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->actionArea:Landroid/view/View;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$8;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$8;-><init>(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshPlayerControls()V

    return-void
.end method

.method private setUiToDownloadNeeded()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlayImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlayImg:Landroid/widget/ImageView;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->mini_player_download_button_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressForegroundBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressBackgroundBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->persistent_player_download_notice:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->persistent_player_download_again_tap:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 361
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 362
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->link_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->applyLinkStyle(Landroid/widget/TextView;I)V

    .line 364
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->actionArea:Landroid/view/View;

    new-instance v2, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$4;

    invoke-direct {v2, p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$4;-><init>(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->jumpBackButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->playPauseButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setUiToDownloadQueue()V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlayImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressForegroundBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressBackgroundBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->player_preparing_download:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 383
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->persistent_player_download_cancel_text:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 385
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 387
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->link_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->applyLinkStyle(Landroid/widget/TextView;I)V

    .line 389
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->actionArea:Landroid/view/View;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$5;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$5;-><init>(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->jumpBackButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->playPauseButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setUiToDownloaded()V
    .locals 8

    .line 454
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 458
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/audible/mobile/util/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 459
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getPlaybackTimeLeft()I

    move-result v2

    .line 460
    invoke-static {v2}, Lcom/audible/hushpuppy/common/readalong/ChromeUtils;->getFormattedTimeLeftString(I)Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->player_time_left_in_book:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v3

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 464
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->onlyTitleToBeDisplayed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 471
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    :goto_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->actionArea:Landroid/view/View;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->miniPlayerAreaClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshPlayerControls()V

    return-void
.end method

.method private setUiToDownloading()V
    .locals 9

    .line 403
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getDownloadProgressInMB()F

    move-result v0

    .line 404
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getDownloadTotalSizeInIntMB()I

    move-result v1

    int-to-float v2, v1

    .line 405
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 407
    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlay:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlayImg:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressForegroundBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 410
    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressBackgroundBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 411
    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressForegroundBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    if-lez v1, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 412
    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressForegroundBar:Landroid/widget/ProgressBar;

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 415
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isSeekBarPositionPlayable()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->onlyTitleToBeDisplayed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->persistent_player_ready_to_play:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 419
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 420
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 422
    :cond_1
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->player_downloading_progress:I

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 424
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->persistent_player_ready_to_play:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 429
    :goto_1
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->actionArea:Landroid/view/View;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->miniPlayerAreaClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->player_downloading_progress:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v5, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 435
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->persistent_player_download_cancel_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->link_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->applyLinkStyle(Landroid/widget/TextView;I)V

    .line 438
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->actionArea:Landroid/view/View;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$6;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$6;-><init>(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    :goto_2
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 449
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshPlayerControls()V

    return-void
.end method


# virtual methods
.method protected getMainLayoutId()I
    .locals 1

    .line 187
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->mini_player:I

    return v0
.end method

.method protected initViews()V
    .locals 2

    .line 193
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Initializing views"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->player_cancel_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->cancelButton:Landroid/widget/ImageView;

    .line 195
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->player_cancel_button_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->cancelButtonContainer:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->player_cover_art:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtView:Landroid/widget/ImageView;

    .line 198
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->player_cover_art_overlay:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlay:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->player_cover_art_overlay_img:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->coverArtOverlayImg:Landroid/widget/ImageView;

    .line 200
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->download_progress_background_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressBackgroundBar:Landroid/widget/ProgressBar;

    .line 201
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->download_progress_foreground_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->downloadProgressForegroundBar:Landroid/widget/ProgressBar;

    .line 203
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->player_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->player_subtitle_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    .line 206
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->player_jump_back_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->jumpBackButton:Landroid/widget/ImageView;

    .line 207
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->player_jump_back_button_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->jumpBackButtonContainer:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->player_play_pause_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->playPauseButton:Landroid/widget/ImageView;

    .line 209
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->player_play_pause_button_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->playPauseButtonContainer:Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->mini_player_left_area:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->actionArea:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->cancelButtonContainer:Landroid/view/View;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$1;-><init>(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->jumpBackButtonContainer:Landroid/view/View;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$2;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$2;-><init>(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->playPauseButtonContainer:Landroid/view/View;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$3;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$3;-><init>(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected injectDependencyObjects()V
    .locals 1

    .line 182
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 581
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refresh()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;)V
    .locals 1

    .line 591
    sget-object v0, Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;->FOREGROUND:Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;

    if-ne p1, v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshDownloadStateAfterViewReappear()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/reader/OverlayVisibilityChangedEvent;)V
    .locals 0

    .line 585
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/reader/OverlayVisibilityChangedEvent;->areOverlaysAppearing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshDownloadStateAfterViewReappear()V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 6

    .line 263
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Refreshing views"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshCoverArt()V

    .line 265
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshCancelButton()V

    .line 268
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/ViewController;->getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v0

    .line 269
    sget-object v1, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$9;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 289
    sget-object v1, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "! This shouldn\'t happen. Do nothing..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->setUiToDownloadError()V

    goto :goto_0

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->setUiToDownloaded()V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getDownloadState()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PENDING:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    if-ne v0, v1, :cond_3

    .line 277
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->setUiToDownloadQueue()V

    goto :goto_0

    .line 279
    :cond_3
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->setUiToDownloading()V

    goto :goto_0

    .line 271
    :cond_4
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->setUiToDownloadNeeded()V

    :goto_0
    return-void
.end method

.method public setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 3

    .line 245
    sget-object v0, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;->BASE_VIEW_STRATEGY:Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;

    .line 248
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;->getTitleTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->getTextColor(I)I

    move-result v1

    .line 249
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;->getSubTitleTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->getTextColor(I)I

    move-result v2

    .line 250
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;->getLinkTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->getTextColor(I)I

    move-result p1

    .line 252
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->titleText:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->setTextColor(Landroid/view/View;I)V

    .line 253
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->setTextColor(Landroid/view/View;I)V

    .line 254
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->subtitleText:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->applyLinkStyle(Landroid/widget/TextView;I)V

    .line 257
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->refreshButtonImages()V

    return-void
.end method
