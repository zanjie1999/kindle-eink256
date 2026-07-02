.class public final Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;
.super Ljava/lang/Object;
.source "PlayerViewModelObserver.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MODEL_CHANGE_EVENT_PROPERTIES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private handler:Landroid/os/Handler;

.field private final handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private playerViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/audible/hushpuppy/view/player/view/RefreshableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 60
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PLAYER_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_INFO_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->EBOOK_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->EBOOK_SEEK_BAR_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->REMAINING_TEXT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TITLE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATOR:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATION_SPEED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PRICE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_PROGRESS:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->SYNC_DATA:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TOGGLE_PLAYER_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->LANGUAGE_CHANGED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->MODEL_CHANGE_EVENT_PROPERTIES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 117
    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->eventBus:Lde/greenrobot/event/EventBus;

    .line 118
    iput-object p3, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 120
    new-instance p1, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    invoke-direct {p1}, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    .line 121
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->handler:Landroid/os/Handler;

    .line 122
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->playerViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->playerViewReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 50
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->reloadMiniPlayerView()V

    return-void
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$500(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->reloadUpsellPlayerView()V

    return-void
.end method

.method private refreshLibraryBottomDecoration()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/DecorationPosition;->BOTTOM:Lcom/amazon/kindle/krx/ui/DecorationPosition;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->refreshLibraryDecoration(Lcom/amazon/kindle/krx/ui/DecorationPosition;)V

    .line 236
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Refresh Library Bottom Decoration Complete"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void
.end method

.method private refreshPlayerView()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$1;-><init>(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)V

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reloadMiniPlayerView()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshSeekBar()V

    return-void
.end method

.method private reloadUpsellPlayerView()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshActionBarDecoration()V

    return-void
.end method

.method private togglePlayerView()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$2;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$2;-><init>(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/EbookCloseEvent;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->refreshLibraryBottomDecoration()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 2

    .line 153
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->MODEL_CHANGE_EVENT_PROPERTIES:Ljava/util/EnumSet;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TOGGLE_PLAYER_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->togglePlayerView()V

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->refreshPlayerView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayerView(Lcom/audible/hushpuppy/view/player/view/RefreshableView;)V
    .locals 1

    .line 135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->playerViewReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
