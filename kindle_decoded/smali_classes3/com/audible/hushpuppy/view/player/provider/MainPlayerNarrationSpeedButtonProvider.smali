.class public final Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;
.super Ljava/lang/Object;
.source "MainPlayerNarrationSpeedButtonProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

.field private mainPlayerNarrationSpeedButton:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;

.field private final playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

.field private final readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lde/greenrobot/event/EventBus;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->context:Landroid/content/Context;

    .line 90
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 91
    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 92
    iput-object p3, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 93
    iput-object p4, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 94
    iput-object p5, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    .line 95
    iput-object p6, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    return-object p0
.end method

.method private refreshReaderActionButtonsOnUiThread()V
    .locals 2

    .line 136
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    new-instance v1, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider$1;-><init>(Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 147
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 148
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->mainPlayerNarrationSpeedButton:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;

    if-nez p1, :cond_1

    .line 106
    new-instance p1, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    iget-object v5, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iget-object v6, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->mainPlayerNarrationSpeedButton:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->mainPlayerNarrationSpeedButton:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 1

    .line 122
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider$2;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->refreshReaderActionButtonsOnUiThread()V

    :goto_0
    return-void
.end method
