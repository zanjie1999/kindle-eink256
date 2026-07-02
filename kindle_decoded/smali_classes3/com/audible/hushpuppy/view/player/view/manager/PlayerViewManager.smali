.class public final Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;
.super Ljava/lang/Object;
.source "PlayerViewManager.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private volatile cachedPlayerViewOrientation:I

.field private currentPlayerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/audible/hushpuppy/view/player/view/RefreshableView;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final playerViewFactory:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;

.field private final playerViewModelObserver:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

.field private final viewController:Lcom/audible/hushpuppy/controller/ViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/ViewController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;

    invoke-direct {v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->playerViewFactory:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->cachedPlayerViewOrientation:I

    .line 90
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 91
    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 92
    iput-object p3, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    .line 93
    iput-object p4, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->playerViewModelObserver:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    return-void
.end method

.method private createPlayerView(Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)Lcom/audible/hushpuppy/view/player/view/RefreshableView;
    .locals 2

    .line 207
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;->LIBRARY_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlayPossibleAtCurrentEbookLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Returning null player view for library because the current position is not playable"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->playerViewFactory:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->construct(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    move-result-object p1

    .line 214
    iget-object p2, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->playerViewModelObserver:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    invoke-virtual {p2, p1}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->setPlayerView(Lcom/audible/hushpuppy/view/player/view/RefreshableView;)V

    return-object p1
.end method

.method private isNewViewRequired(Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;)Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->currentPlayerView:Ljava/lang/ref/WeakReference;

    const-string v1, "Cached player view doesn\'t exist; create a new one"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 159
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v2

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Orientation changed; create a new one"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v2

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->currentPlayerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    if-nez v0, :cond_2

    .line 172
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v2

    .line 176
    :cond_2
    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/player/view/RefreshableView;->getPlayerType()Lcom/audible/hushpuppy/view/player/view/PlayerType;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 177
    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/player/view/RefreshableView;->getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object p1

    if-eq p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    return v2
.end method

.method private isOrientationChanged()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 242
    iget v1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->cachedPlayerViewOrientation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setNewPlayerView(Lcom/audible/hushpuppy/view/player/view/RefreshableView;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->currentPlayerView:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->cachedPlayerViewOrientation:I

    .line 229
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->currentPlayerView:Ljava/lang/ref/WeakReference;

    .line 230
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget v1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->cachedPlayerViewOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "New PlayerView [%s] is cached with orientation [%s]"

    invoke-interface {p1, v2, v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPlayerViewForLibrary()Lcom/audible/hushpuppy/view/player/view/RefreshableView;
    .locals 4

    .line 104
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;->LIBRARY_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    .line 105
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/ViewController;->getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v1

    .line 106
    sget-object v2, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Getting player view for PlayerType = %s, PlayerViewState = %s"

    invoke-interface {v2, v3, v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->isNewViewRequired(Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Returning cached view"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->currentPlayerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    return-object v0

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->createPlayerView(Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->setNewPlayerView(Lcom/audible/hushpuppy/view/player/view/RefreshableView;)V

    return-object v0
.end method

.method public getPlayerViewForReader(Landroid/content/Context;)Lcom/audible/hushpuppy/view/player/view/RefreshableView;
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 129
    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;->MAIN_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;->MINI_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/ViewController;->getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v1

    .line 133
    sget-object v2, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Getting player view for PlayerType = %s, PlayerViewState = %s"

    invoke-interface {v2, v3, v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->isNewViewRequired(Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Returning cached view"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->currentPlayerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    return-object p1

    .line 143
    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->createPlayerView(Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    move-result-object p1

    .line 144
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->setNewPlayerView(Lcom/audible/hushpuppy/view/player/view/RefreshableView;)V

    return-object p1
.end method
