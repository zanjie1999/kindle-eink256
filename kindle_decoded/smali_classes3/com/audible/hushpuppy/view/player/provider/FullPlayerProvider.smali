.class public final Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;
.super Ljava/lang/Object;
.source "FullPlayerProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PROPERTIES:Ljava/util/EnumSet;
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

.field private final handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

.field private final mainPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

.field private mainPlayerNarrationSpeedButtonProvider:Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;

.field private final persistentPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;

.field private final playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

.field private final sleepTimerButtonProvider:Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;

.field private final upsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 61
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_RELATIONSHIP:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->UPSELL_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_INFO_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->MAXIMUM_PLAYABLE_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->AUDIBLE_INTERFACE_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->PROPERTIES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V
    .locals 7

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 142
    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 143
    iput-object p3, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->eventBus:Lde/greenrobot/event/EventBus;

    .line 144
    iput-object p4, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 145
    iput-object p5, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->upsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    .line 146
    iput-object p6, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->mainPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    .line 147
    iput-object p7, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->persistentPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;

    .line 148
    iput-object p8, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    .line 149
    new-instance p4, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    invoke-direct {p4}, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;-><init>()V

    iput-object p4, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    .line 152
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v4

    .line 154
    new-instance p4, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;

    sget-object p5, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MIN_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    .line 156
    invoke-virtual {p5}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result v6

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p8

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;I)V

    .line 157
    new-instance p2, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;

    invoke-direct {p2, p1, p8, p4}, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/amazon/kindle/krx/ui/IActionButton;)V

    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->sleepTimerButtonProvider:Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 47
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method private refreshSeekBar()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isScrubbing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Seek bar refresh rejected because scrubbing is in progress."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isEbookOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    new-instance v1, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider$1;-><init>(Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;)V

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 173
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->sleepTimerButtonProvider:Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;->disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method public enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 164
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerLocationSeekerDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 165
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->sleepTimerButtonProvider:Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;->enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 203
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "decoration is null (model disabled)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object v1

    .line 207
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider$2;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v2, p1}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 213
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "decoration is null (readerMode not reader or audible_player)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object v1

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->mainPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    return-object p1

    .line 209
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->persistentPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getProviderPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 2

    .line 257
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->PROPERTIES:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->isPropertyOneOf(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->refreshSeekBar()V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->persistentPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;

    invoke-virtual {v0, p1, p2, p3}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 267
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->mainPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    invoke-virtual {v0, p1, p2, p3}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->persistentPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 274
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->mainPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->persistentPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 281
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->mainPlayerDecoration:Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method
