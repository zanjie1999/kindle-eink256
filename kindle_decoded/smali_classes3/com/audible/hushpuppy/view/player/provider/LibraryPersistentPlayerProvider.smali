.class public Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;
.super Ljava/lang/Object;
.source "LibraryPersistentPlayerProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Landroid/view/View;",
        "Lcom/amazon/kindle/krx/ui/DecorationPosition;",
        ">;"
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
.field protected audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field protected audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field protected eventBus:Lde/greenrobot/event/EventBus;

.field protected hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field protected kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field protected platformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

.field protected final playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    .line 37
    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 42
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->MAXIMUM_PLAYABLE_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_INFO_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TOGGLE_PLAYER_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v3, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PLAYER_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 43
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->PROPERTIES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    return-void
.end method

.method private getPersistentPlayerLibraryView()Lcom/audible/hushpuppy/view/player/view/RefreshableView;
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->getPlayerViewForLibrary()Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/player/view/RefreshableView;->getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADING:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    if-ne v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->attachDownloadListener()V

    :cond_0
    if-eqz v0, :cond_1

    .line 190
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSampleAudiobook()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private refreshLibraryBottomDecoration()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/DecorationPosition;->BOTTOM:Lcom/amazon/kindle/krx/ui/DecorationPosition;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->refreshLibraryDecoration(Lcom/amazon/kindle/krx/ui/DecorationPosition;)V

    .line 198
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Refresh Library Bottom Decoration Complete"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Lcom/amazon/kindle/krx/ui/DecorationPosition;)Landroid/view/View;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getLastOpenedEBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "attaching player listener"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->attachPlayerListener()V

    .line 110
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider$1;->$SwitchMap$com$amazon$kindle$krx$ui$DecorationPosition:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    return-object v1

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->platformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;->isPersistentPlayerEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 113
    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlayerToggledOn()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 114
    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->getPersistentPlayerLibraryView()Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/krx/ui/DecorationPosition;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->get(Lcom/amazon/kindle/krx/ui/DecorationPosition;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getPriority(Lcom/amazon/kindle/krx/ui/DecorationPosition;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/krx/ui/DecorationPosition;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->getPriority(Lcom/amazon/kindle/krx/ui/DecorationPosition;)I

    move-result p1

    return p1
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 3

    .line 135
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->PROPERTIES:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->isPropertyOneOf(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isEbookOpen()Z

    move-result v0

    if-nez v0, :cond_6

    .line 136
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received : %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->setShowPlayer(Z)V

    .line 154
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->refreshLibraryBottomDecoration()V

    :cond_1
    return-void

    .line 149
    :cond_2
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->refreshLibraryBottomDecoration()V

    return-void

    .line 144
    :cond_3
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getDownloadState()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->ACTIVE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 145
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->refreshLibraryBottomDecoration()V

    :cond_4
    return-void

    .line 139
    :cond_5
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isAudiobookDownloaded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 140
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->refreshLibraryBottomDecoration()V

    :cond_6
    return-void
.end method

.method public final subscribe()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final unsubscribe()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
