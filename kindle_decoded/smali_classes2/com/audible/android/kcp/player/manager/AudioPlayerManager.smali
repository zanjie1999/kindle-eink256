.class public final Lcom/audible/android/kcp/player/manager/AudioPlayerManager;
.super Ljava/lang/Object;
.source "AudioPlayerManager.java"

# interfaces
.implements Lcom/audible/android/kcp/player/manager/AiRPlayerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/player/manager/AudioPlayerManager$PlayerManagerEventListener;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

.field private mCompanionEbook:Lcom/amazon/kindle/krx/content/IBook;

.field private final mContext:Landroid/content/Context;

.field private final mEventBus:Lde/greenrobot/event/EventBus;

.field private volatile mIsPlayerCancelledByUser:Z

.field private mMaxAvailableTime:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

.field private mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

.field private mPlayerState:Lcom/audible/mobile/player/State;

.field private mPreferencesStore:Lcom/audible/mobile/preferences/PreferenceStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/mobile/preferences/PreferenceStore;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/android/kcp/companion/CompanionManager;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object v5

    new-instance v7, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;

    .line 64
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    const-class v1, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/identity/IdentityManager;

    .line 65
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v1

    const-class v2, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {v1, v2}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-direct {v7, p1, v0, v1}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;)V

    .line 66
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    const-class v1, Lcom/audible/mobile/player/PlayerManager;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/audible/mobile/player/PlayerManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 62
    invoke-direct/range {v1 .. v8}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;-><init>(Landroid/content/Context;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/mobile/preferences/PreferenceStore;Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;Lcom/audible/mobile/player/PlayerManager;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/mobile/preferences/PreferenceStore;Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;Lcom/audible/mobile/player/PlayerManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/android/kcp/companion/CompanionManager;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
            ">;",
            "Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;",
            "Lcom/audible/mobile/player/PlayerManager;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mMaxAvailableTime:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    sget-object v0, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    iput-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerState:Lcom/audible/mobile/player/State;

    .line 73
    iput-object p7, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    .line 74
    iput-object p1, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mContext:Landroid/content/Context;

    .line 75
    iput-object p4, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 76
    iput-object p6, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    .line 78
    new-instance p4, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;

    iget-object p6, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mContext:Landroid/content/Context;

    invoke-direct {p4, p6}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p4, p0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->setPlayerManager(Lcom/audible/android/kcp/player/manager/AiRPlayerManager;)V

    .line 80
    invoke-virtual {p4, p2}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->setCompanionManager(Lcom/audible/android/kcp/companion/CompanionManager;)V

    .line 81
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->setLibraryManager(Lcom/amazon/kindle/krx/library/ILibraryManager;)V

    .line 84
    invoke-static {}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getProvider()Lcom/audible/mobile/notification/NotificationFactoryProvider;

    move-result-object p6

    const-class p7, Lcom/audible/mobile/player/service/PlayerService;

    invoke-virtual {p6, p7, p4}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->offerFactory(Ljava/lang/Class;Lcom/audible/mobile/notification/NotificationFactory;)Z

    move-result p6

    if-nez p6, :cond_0

    .line 86
    :try_start_0
    sget-object p6, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p7, "PlayerService is set with PlayerNotificationFactoryImpl, Setting CompanionManager, LibraryManager and PlayerManager to this PlayerNotificationFactoryImpl"

    invoke-interface {p6, p7}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getProvider()Lcom/audible/mobile/notification/NotificationFactoryProvider;

    move-result-object p6

    const-class p7, Lcom/audible/mobile/player/service/PlayerService;

    .line 88
    invoke-virtual {p6, p7}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getFactory(Ljava/lang/Class;)Lcom/audible/mobile/notification/NotificationFactory;

    move-result-object p6

    check-cast p6, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;

    .line 89
    invoke-virtual {p6, p0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->setPlayerManager(Lcom/audible/android/kcp/player/manager/AiRPlayerManager;)V

    .line 90
    invoke-virtual {p6, p2}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->setCompanionManager(Lcom/audible/android/kcp/companion/CompanionManager;)V

    .line 91
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->setLibraryManager(Lcom/amazon/kindle/krx/library/ILibraryManager;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    sget-object p2, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p6, "Notification Factory is NOT set for PlayerService, setting one now..."

    invoke-interface {p2, p6}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getProvider()Lcom/audible/mobile/notification/NotificationFactoryProvider;

    move-result-object p2

    const-class p6, Lcom/audible/mobile/player/service/PlayerService;

    invoke-virtual {p2, p6, p4}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->offerFactory(Ljava/lang/Class;Lcom/audible/mobile/notification/NotificationFactory;)Z

    .line 100
    :cond_0
    :goto_0
    iput-object p5, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPreferencesStore:Lcom/audible/mobile/preferences/PreferenceStore;

    .line 102
    new-instance p2, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;

    invoke-direct {p2, p1, p0, p3}, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;-><init>(Landroid/content/Context;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 103
    new-instance p1, Lcom/audible/android/kcp/player/manager/AudioPlayerManager$PlayerManagerEventListener;

    invoke-direct {p1, p0}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager$PlayerManagerEventListener;-><init>(Lcom/audible/android/kcp/player/manager/AudioPlayerManager;)V

    invoke-virtual {p0, p1}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->addOnPlayerEventListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->addOnPlayerEventListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    .line 107
    new-instance p1, Lcom/audible/android/kcp/hushpuppy/handler/AudiobookFileNotFoundEventHandler;

    iget-object p2, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/audible/android/kcp/hushpuppy/handler/AudiobookFileNotFoundEventHandler;-><init>(Landroid/content/Context;)V

    .line 108
    iget-object p2, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p2, p1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/android/kcp/player/manager/AudioPlayerManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mMaxAvailableTime:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$102(Lcom/audible/android/kcp/player/manager/AudioPlayerManager;Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/State;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerState:Lcom/audible/mobile/player/State;

    return-object p1
.end method


# virtual methods
.method public addOnPlayerEventListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    return-void
.end method

.method public getAudiobookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getAudiobookMetadata()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    iget-object v1, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v1}, Lcom/audible/mobile/player/PlayerManager;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    return-object v0
.end method

.method public getCompanionEbook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mCompanionEbook:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public getCurrentPositionMillis()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerManager;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getPlayerState()Lcom/audible/mobile/player/State;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerState:Lcom/audible/mobile/player/State;

    return-object v0
.end method

.method public handlePlayerResetOnCancelDownload(Lcom/audible/mobile/domain/Asin;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {p1}, Lcom/audible/mobile/player/Player;->stop()V

    .line 206
    iget-object p1, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {p1}, Lcom/audible/mobile/player/Player;->reset()V

    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public jumpBackward(I)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->rewind(I)V

    return-void
.end method

.method public jumpForward(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->fastForward(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->reset()V

    return-void
.end method

.method public setAudiobookAsin(Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    return-void
.end method

.method public stop()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->stop()V

    return-void
.end method
