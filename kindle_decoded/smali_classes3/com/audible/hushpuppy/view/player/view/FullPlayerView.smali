.class public final Lcom/audible/hushpuppy/view/player/view/FullPlayerView;
.super Lcom/audible/hushpuppy/view/player/view/PlayerView;
.source "FullPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;
    }
.end annotation


# static fields
.field private static final JUMP_BACK_30_SECONDS:I = 0x1e

.field private static final JUMP_FORWARD_30_SECONDS:I = 0x1e

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private chapterBackButton:Landroid/widget/ImageView;

.field private chapterForwardButton:Landroid/widget/ImageView;

.field private chapterText:Landroid/widget/TextView;

.field private coverArtOverlayDownloadCancelled:Landroid/view/View;

.field private coverArtOverlayDownloadFailed:Landroid/view/View;

.field private coverArtOverlayDownloadNeeded:Landroid/view/View;

.field private coverArtOverlayDownloadPrepared:Landroid/view/View;

.field private coverArtOverlayDownloadProgressing:Landroid/view/View;

.field private coverArtOverlayDownloadQueued:Landroid/view/View;

.field private coverArtOverlayStates:[Landroid/view/View;

.field private coverArtView:Landroid/widget/ImageView;

.field private downloadingProgressBar:Landroid/widget/ProgressBar;

.field private downloadingProgressText:Landroid/widget/TextView;

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private jumpBackButton:Landroid/widget/ImageView;

.field private jumpBackContainer:Landroid/view/View;

.field private jumpForwardButton:Landroid/widget/ImageView;

.field private jumpForwardContainer:Landroid/view/View;

.field private navigationButtonsMode:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

.field private pauseButton:Landroid/widget/ImageView;

.field private playButton:Landroid/widget/ImageView;

.field private playerOuterLayout:Landroid/view/View;

.field protected sleepTimerController:Lcom/audible/hushpuppy/controller/ISleepTimerController;

.field private sleepTimerView:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/view/player/view/PlayerView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)V

    .line 135
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->sleepTimerController:Lcom/audible/hushpuppy/controller/ISleepTimerController;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/ISleepTimerController;->sendTimerRevealEvent()V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->navigationButtonsMode:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    return-object p0
.end method

.method static synthetic access$002(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;)Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->navigationButtonsMode:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    return-object p1
.end method

.method private configureCoverArtOnClickListener()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtView:Landroid/widget/ImageView;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$7;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$7;-><init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadNeeded:Landroid/view/View;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$8;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$8;-><init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$9;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$9;-><init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V

    .line 313
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadQueued:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadPrepared:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadProgressing:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$10;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$10;-><init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V

    .line 324
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadCancelled:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadFailed:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private configurePlayerControlOnClickListener()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$1;-><init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->pauseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$2;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$2;-><init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$3;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$3;-><init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpForwardButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$4;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$4;-><init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$5;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$5;-><init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterForwardButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$6;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$6;-><init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private findCoverArtAndOverlayViews()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_cover_art:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtView:Landroid/widget/ImageView;

    .line 260
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_download_audio_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadNeeded:Landroid/view/View;

    .line 261
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_download_queued_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadQueued:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_download_preparing_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadPrepared:Landroid/view/View;

    .line 263
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_download_progress_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadProgressing:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_download_canceling_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadCancelled:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_download_failed_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadFailed:Landroid/view/View;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/view/View;

    .line 267
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadNeeded:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadQueued:Landroid/view/View;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadPrepared:Landroid/view/View;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadProgressing:Landroid/view/View;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadCancelled:Landroid/view/View;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayStates:[Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_download_progress_pie_chart:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->downloadingProgressBar:Landroid/widget/ProgressBar;

    .line 271
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_download_progress_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->downloadingProgressText:Landroid/widget/TextView;

    return-void
.end method

.method private findPlayerControls()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_outer_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->playerOuterLayout:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_play_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->playButton:Landroid/widget/ImageView;

    .line 200
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_pause_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->pauseButton:Landroid/widget/ImageView;

    .line 201
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_jump_back_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpBackButton:Landroid/widget/ImageView;

    .line 202
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_jump_forward_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpForwardButton:Landroid/widget/ImageView;

    .line 203
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_previous_chapter_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterBackButton:Landroid/widget/ImageView;

    .line 204
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_next_chapter_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterForwardButton:Landroid/widget/ImageView;

    .line 206
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_jump_back_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpBackContainer:Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_jump_forward_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpForwardContainer:Landroid/view/View;

    return-void
.end method

.method private getChapterBackButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 530
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_previous_chapter_white:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_previous_chapter_black:I

    :goto_0
    return p1
.end method

.method private getChapterForwardButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 535
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_next_chapter_white:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_next_chapter_black:I

    :goto_0
    return p1
.end method

.method private getJumpBackButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 520
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_jump_back_white:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_jump_back_black:I

    :goto_0
    return p1
.end method

.method private getJumpForwardButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 525
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_jump_forward_white:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_jump_forward_black:I

    :goto_0
    return p1
.end method

.method private getPauseButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 515
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_pause_white:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_pause_black:I

    :goto_0
    return p1
.end method

.method private getPlayButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 510
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_play_white:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_play_black:I

    :goto_0
    return p1
.end method

.method private getPlayerOuterLayoutBackgroundResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 506
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->main_player_background_black:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->main_player_background_white:I

    :goto_0
    return p1
.end method

.method private initChapterText()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_chapter_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterText:Landroid/widget/TextView;

    return-void
.end method

.method private initCoverArtAndOverLay()V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->findCoverArtAndOverlayViews()V

    .line 253
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->configureCoverArtOnClickListener()V

    return-void
.end method

.method private initPlayerControls()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->findPlayerControls()V

    .line 193
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->configurePlayerControlOnClickListener()V

    return-void
.end method

.method private initSleepTimer()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->sleepTimerView:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Sleep timer is not null, deregister it from Event bus first"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->sleepTimerView:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->unregisterFromEventBus()V

    .line 334
    :cond_0
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->full_player_sleep_time_remaining:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 335
    new-instance v1, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {v1, v2, v0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;-><init>(Lde/greenrobot/event/EventBus;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->sleepTimerView:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    .line 336
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->sleepTimerController:Lcom/audible/hushpuppy/controller/ISleepTimerController;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/ISleepTimerController;->sendTimerRevealEvent()V

    return-void
.end method

.method private refreshChapterText()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->chapterController:Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/ChapterController;->getCurrentChapterLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/audible/mobile/util/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshCoverArt()V
    .locals 3

    .line 357
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

    .line 358
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;->loadImage(Landroid/widget/ImageView;Lcom/audible/mobile/domain/Asin;)V

    .line 359
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/audible/mobile/util/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isAudiobookDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method private refreshCoverArtOverlay()V
    .locals 8

    .line 376
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/ViewController;->getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 378
    sget-object v2, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$11;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/4 v5, 0x4

    if-eq v2, v5, :cond_0

    .line 408
    sget-object v1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v2, v4, [Ljava/lang/String;

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

    goto/16 :goto_0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadFailed:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->setCoverArtOverlayStateTo(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadFailed:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_player_download_failed:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->setCoverArtOverlayStateTo(Landroid/view/View;)V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getDownloadState()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    move-result-object v0

    sget-object v2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PENDING:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    if-ne v0, v2, :cond_3

    .line 386
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadPrepared:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->setCoverArtOverlayStateTo(Landroid/view/View;)V

    goto :goto_0

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isAudiobookDownloading()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getPctDownloaded()I

    move-result v0

    .line 390
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadProgressing:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->setCoverArtOverlayStateTo(Landroid/view/View;)V

    .line 391
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadProgressing:Landroid/view/View;

    .line 392
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_player_downloading:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->updateDownloadProgressBar()V

    goto :goto_0

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadQueued:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->setCoverArtOverlayStateTo(Landroid/view/View;)V

    .line 397
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadQueued:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_player_queued:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadNeeded:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->setCoverArtOverlayStateTo(Landroid/view/View;)V

    .line 381
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayDownloadNeeded:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_player_not_downloaded:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private refreshPlayerControlButtons()V
    .locals 0

    .line 369
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->refreshPlayerControlImages()V

    .line 370
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->refreshPlayerControlEnablement()V

    return-void
.end method

.method private refreshPlayerControlEnablement()V
    .locals 8

    .line 426
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isCurrentPositionPlayable()Z

    move-result v0

    .line 427
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->shouldShowPlayButton()Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_0

    .line 432
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 433
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_0

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    :goto_0
    if-eqz v0, :cond_2

    .line 445
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 446
    :goto_1
    iget-object v5, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->navigationButtonsMode:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    sget-object v6, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->CHAPTER_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    if-eq v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 447
    :goto_2
    iget-object v6, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->navigationButtonsMode:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    sget-object v7, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->JUMP_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    if-eq v6, v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v5, :cond_5

    .line 450
    iget-object v5, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpBackContainer:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v5, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpForwardContainer:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v5, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpBackContainer:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 454
    iget-object v5, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpForwardContainer:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 456
    :cond_5
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpBackContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpForwardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    if-eqz v2, :cond_6

    .line 461
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterBackButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterForwardButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterBackButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 465
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterForwardButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_5

    .line 467
    :cond_6
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterForwardButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private refreshPlayerControlImages()V
    .locals 4

    .line 414
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->playerOuterLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->getPlayerOuterLayoutBackgroundResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 416
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->playButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->getPlayButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->pauseButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->getPauseButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpBackButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->getJumpBackButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->jumpForwardButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->getJumpForwardButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterBackButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->getChapterBackButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterForwardButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->getChapterForwardButtonResourceId(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setCoverArtOverlayStateTo(Landroid/view/View;)V
    .locals 7

    .line 491
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->coverArtOverlayStates:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const/4 v5, 0x1

    if-ne v4, p1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 494
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 495
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 496
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_1
    const/16 v5, 0x8

    .line 498
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 499
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateDownloadProgressBar()V
    .locals 8

    .line 480
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getDownloadProgressInMB()F

    move-result v0

    .line 481
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getDownloadTotalSizeInIntMB()I

    move-result v1

    int-to-float v2, v1

    .line 482
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 484
    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->downloadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x1

    if-lez v1, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 485
    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->downloadingProgressBar:Landroid/widget/ProgressBar;

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 486
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->downloadingProgressText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->player_downloading_progress:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getMainLayoutId()I
    .locals 1

    .line 152
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->full_player:I

    return v0
.end method

.method protected initViews()V
    .locals 2

    .line 157
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Initializing views"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$bool;->has_all_player_controls:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->ALL_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->JUMP_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    :goto_0
    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->navigationButtonsMode:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    .line 161
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->initCoverArtAndOverLay()V

    .line 162
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->initPlayerControls()V

    .line 163
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->initChapterText()V

    .line 164
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->initSleepTimer()V

    return-void
.end method

.method protected injectDependencyObjects()V
    .locals 1

    .line 140
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 147
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->loadMainLayout()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 342
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 343
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->sleepTimerView:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "FullPlayerView is being detached. Deregister SleepTimerView from EventBus"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->sleepTimerView:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->unregisterFromEventBus()V

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->sleepTimerView:Lcom/audible/hushpuppy/view/player/view/SleepTimerView;

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 183
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Refreshing views"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->refreshCoverArt()V

    .line 185
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->refreshPlayerControlButtons()V

    .line 186
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->refreshChapterText()V

    .line 187
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->refreshCoverArtOverlay()V

    return-void
.end method

.method public setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 2

    .line 170
    sget-object v0, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;->BASE_VIEW_STRATEGY:Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;

    .line 173
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;->getTitleTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 174
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->chapterText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->refreshPlayerControlButtons()V

    return-void
.end method
