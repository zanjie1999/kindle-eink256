.class public final Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;
.super Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;
.source "DefaultUserRegistrationHandler.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final USER_DEREGISTRATION_EVENT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;

.field private static final USER_REGISTRATION_EVENT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;


# instance fields
.field private coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final hushpuppyObjectGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

.field private hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

.field private legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

.field private libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

.field private listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

.field private sleepTimerController:Lcom/audible/hushpuppy/controller/ISleepTimerController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 31
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->USER_REGISTERED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;-><init>(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    sput-object v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->USER_REGISTRATION_EVENT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;

    .line 32
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->USER_DEREGISTERED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;-><init>(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    sput-object v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->USER_DEREGISTRATION_EVENT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;-><init>(Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyComponent;Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;)V
    .locals 0

    .line 66
    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;-><init>(Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;)V

    const-string p2, "hushpuppyObjectGraph can\'t be null!"

    .line 68
    invoke-static {p1, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyObjectGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyComponent;Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;)V

    return-void
.end method

.method private getCoverArtManager()Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyObjectGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->coverArtManager()Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    return-object v0
.end method

.method private getEventBus()Lde/greenrobot/event/EventBus;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->eventBus:Lde/greenrobot/event/EventBus;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyObjectGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->eventBus:Lde/greenrobot/event/EventBus;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->eventBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method private getHushpuppyModel()Lcom/audible/hushpuppy/model/read/IHushpuppyModel;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyObjectGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->hushpuppyModel()Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-object v0
.end method

.method private getHushpuppyStorage()Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyObjectGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->hushpuppyStorage()Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    return-object v0
.end method

.method private getLegacyHushpuppyStorage()Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyObjectGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->legacyHushpuppyStorage()Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    return-object v0
.end method

.method private getLibraryController()Lcom/audible/hushpuppy/controller/ILibraryController;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyObjectGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->libraryController()Lcom/audible/hushpuppy/controller/ILibraryController;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    return-object v0
.end method

.method private getListeningStatsManager()Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyObjectGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->listeningStatsManager()Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    return-object v0
.end method

.method private getSleepTimerController()Lcom/audible/hushpuppy/controller/ISleepTimerController;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->sleepTimerController:Lcom/audible/hushpuppy/controller/ISleepTimerController;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->hushpuppyObjectGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->sleepTimerController()Lcom/audible/hushpuppy/controller/ISleepTimerController;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->sleepTimerController:Lcom/audible/hushpuppy/controller/ISleepTimerController;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->sleepTimerController:Lcom/audible/hushpuppy/controller/ISleepTimerController;

    return-object v0
.end method


# virtual methods
.method protected onDeregistration()V
    .locals 2

    .line 88
    sget-object v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDeregistration - Clearing companion mapping ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->getHushpuppyStorage()Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;->clearAllRelationships()V

    .line 90
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->getLegacyHushpuppyStorage()Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->clearAllRelationships()V

    .line 92
    sget-object v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDeregistration - Clearing cover art images from cache ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->getCoverArtManager()Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;->clear()V

    .line 95
    sget-object v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDeregistration - Resetting narration speed to default..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->getHushpuppyModel()Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->setNarrationSpeedToDefault()V

    .line 98
    sget-object v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDeregistration - Clearing the sleep timer."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->getSleepTimerController()Lcom/audible/hushpuppy/controller/ISleepTimerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/ISleepTimerController;->cancelCurrentTimer()V

    .line 101
    sget-object v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDeregistration - Clearing companion mapping cache ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->getLibraryController()Lcom/audible/hushpuppy/controller/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/ILibraryController;->resetCache()V

    .line 104
    sget-object v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDeregistration - Clearing stats data."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->getListeningStatsManager()Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;->clearStoredStatsData()V

    .line 107
    sget-object v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDeregistration - Sending User de-registered event ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->USER_DEREGISTRATION_EVENT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method protected onRegistration(Lcom/amazon/kindle/krx/application/IUserAccount;)V
    .locals 1

    .line 75
    sget-object p1, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onRegistration - Initializing listening stats manager"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->getListeningStatsManager()Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;->login()V

    .line 78
    sget-object p1, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onRegistration - Posting GlobalSyncEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->SIGN_IN_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 81
    sget-object p1, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onRegistration - Sending User registered event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/extensions/registration/DefaultUserRegistrationHandler;->USER_REGISTRATION_EVENT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method
