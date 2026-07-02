.class public Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;
.super Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;
.source "StoreCompanionMappingModificationPersistedEventHandler.java"


# instance fields
.field private final mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

.field private final mEbookAsin:Ljava/lang/String;

.field private final mLibraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

.field private final mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;


# direct methods
.method public constructor <init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;Lcom/audible/hushpuppy/controller/LibraryDownloadController;Ljava/lang/String;)V
    .locals 10

    .line 46
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object v4

    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v5

    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v6

    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move-object v9, p4

    .line 46
    invoke-direct/range {v1 .. v9}, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/audible/hushpuppy/controller/LibraryDownloadController;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/audible/hushpuppy/controller/LibraryDownloadController;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p2, p3, p6}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;-><init>(Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/ui/IReaderUIManager;)V

    .line 57
    iput-object p1, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    .line 58
    iput-object p4, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 59
    iput-object p5, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    .line 60
    iput-object p7, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mLibraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    .line 61
    iput-object p8, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mEbookAsin:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;)Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    return-object p0
.end method

.method private getPurchasedAudiobookAsin(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;
    .locals 3

    .line 115
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->legacyHushpuppyStorage()Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->hushpuppyStorage()Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    move-result-object v1

    .line 117
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;->getPurchasedRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->getPurchasedRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 123
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 125
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    return-object p1

    .line 128
    :cond_1
    sget-object p1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    return-object p1
.end method

.method private isBookDownloaded(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 133
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private launchPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 138
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/audible/android/kcp/player/receiver/PlayerAction;->OPEN:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v2, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v1, v2}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->AUDIOBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    sget-object p1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->EBOOK_ID:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {p1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object p1, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    iget-object v1, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mEbookAsin:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->getPurchasedAudiobookAsin(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    .line 70
    sget-object v2, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-eq v1, v2, :cond_2

    .line 71
    invoke-super {p0, p1}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;)V

    .line 72
    iget-object p1, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mLibraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->setEbookAndRelationship(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 73
    iget-object p1, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mLibraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->handleLibraryDownload()V

    .line 75
    sget-object p1, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler$2;->$SwitchMap$com$audible$android$kcp$store$StoreType:[I

    iget-object v2, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v2}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getStoreType()Lcom/audible/android/kcp/store/StoreType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 90
    iget-object p1, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->isActivityDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    new-instance v0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler$1;

    invoke-direct {v0, p0}, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler$1;-><init>(Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->isBookDownloaded(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->launchPlayer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    :cond_2
    :goto_0
    return-void
.end method
