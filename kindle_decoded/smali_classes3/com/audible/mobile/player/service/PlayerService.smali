.class public final Lcom/audible/mobile/player/service/PlayerService;
.super Landroid/app/Service;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;,
        Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;,
        Lcom/audible/mobile/player/service/PlayerService$OnCompletionPolicyListener;,
        Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;,
        Lcom/audible/mobile/player/service/PlayerService$OnBind;
    }
.end annotation


# static fields
.field private static final AUDIO_DATA_SOURCE_TYPE_PLAYER_FACTORY_CACHE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/audible/mobile/player/AudioDataSourceType;",
            "Lcom/audible/mobile/player/PlayerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private volatile audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

.field private changeDataSourceTypePolicyProvider:Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider;

.field protected final logger:Lorg/slf4j/Logger;

.field private volatile notificationLocalPlayerEventListener:Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;

.field private volatile phoneStateListener:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

.field private player:Lcom/audible/mobile/player/Player;

.field private final playerAccessLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private final playerEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/audible/mobile/player/LocalPlayerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final playerMidSwappingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final playerServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/audible/mobile/player/PlayerServiceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile playerServiceMetricRecorder:Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

.field private final preloadingAudioDataSource:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/audible/mobile/player/AudioDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final preloadingPlayerListener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final receiverSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/mobile/framework/Registerable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/audible/mobile/player/service/PlayerService;->AUDIO_DATA_SOURCE_TYPE_PLAYER_FACTORY_CACHE:Ljava/util/HashMap;

    .line 76
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/service/PlayerService;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/player/service/PlayerService;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 144
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    const-class v0, Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->preloadingPlayerListener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->preloadingAudioDataSource:Ljava/util/concurrent/atomic/AtomicReference;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->receiverSet:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerMidSwappingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 135
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerAccessLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 140
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerMidSwappingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerServiceMetricRecorder:Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/AudioDataSource;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/audible/mobile/player/service/PlayerService;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/audible/mobile/player/service/PlayerService;->preloadingPlayerListener:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/service/PlayerService;->loadExistingPlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService;->releaseCurrentPlayer()Lcom/audible/mobile/player/Player;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/PlayerStatusSnapshot;)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/service/PlayerService;->finishPreloadingPlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/PlayerStatusSnapshot;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600()Lorg/slf4j/Logger;
    .locals 1

    .line 68
    sget-object v0, Lcom/audible/mobile/player/service/PlayerService;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/telephony/PlayerPhoneStateListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/audible/mobile/player/service/PlayerService;->phoneStateListener:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/telephony/PlayerPhoneStateListener;)Lcom/audible/mobile/telephony/PlayerPhoneStateListener;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerService;->phoneStateListener:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/audible/mobile/player/service/PlayerService;->changeDataSourceTypePolicyProvider:Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/PlayerStatusSnapshot;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService;->getSynchronousPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService;->preloadNewPlayer(Lcom/audible/mobile/player/AudioDataSource;)V

    return-void
.end method

.method static synthetic access$500(Lcom/audible/mobile/player/service/PlayerService;Landroid/content/Context;Lcom/audible/mobile/player/AudioDataSourceType;)Lcom/audible/mobile/player/Player;
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/service/PlayerService;->getNewPlayer(Landroid/content/Context;Lcom/audible/mobile/player/AudioDataSourceType;)Lcom/audible/mobile/player/Player;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/player/service/PlayerService;->changePlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerAccessLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object p0
.end method

.method static synthetic access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    return-object p0
.end method

.method static synthetic access$900(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/audible/mobile/player/service/PlayerService;->preloadingAudioDataSource:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static bindToService(Landroid/content/Context;Lcom/audible/mobile/player/service/PlayerService$OnBind;)Landroid/content/ServiceConnection;
    .locals 2

    .line 899
    new-instance v0, Lcom/audible/mobile/player/service/PlayerService$1;

    invoke-direct {v0, p0, p1}, Lcom/audible/mobile/player/service/PlayerService$1;-><init>(Landroid/content/Context;Lcom/audible/mobile/player/service/PlayerService$OnBind;)V

    .line 919
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/audible/mobile/player/service/PlayerService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-object v0
.end method

.method private declared-synchronized changePlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;Z)V
    .locals 2

    monitor-enter p0

    .line 1099
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1101
    :try_start_1
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService;->unregisterListenersAndReceivers()V

    .line 1103
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->onDestroy()V

    .line 1104
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerServiceMetricRecorder:Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    invoke-virtual {p2}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->recordNewPlayerType(Lcom/audible/mobile/player/AudioDataSourceType;)V

    .line 1105
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService;->configurePlayer(Lcom/audible/mobile/player/Player;)V

    .line 1107
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->preloadingAudioDataSource:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1108
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->preloadingPlayerListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1109
    iput-object p2, p0, Lcom/audible/mobile/player/service/PlayerService;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    .line 1110
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    if-eqz p3, :cond_0

    .line 1113
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string p2, "Starting new player for seamless transition from old player"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1114
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {p1}, Lcom/audible/mobile/player/Player;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1117
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1117
    :try_start_3
    iget-object p2, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1118
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized configurePlayer(Lcom/audible/mobile/player/Player;)V
    .locals 2

    monitor-enter p0

    .line 1149
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    const-class v1, Lcom/audible/mobile/notification/NotificationFactoryProvider;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/notification/NotificationFactoryProvider;

    .line 1151
    const-class v1, Lcom/audible/mobile/player/service/PlayerService;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getFactory(Ljava/lang/Class;)Lcom/audible/mobile/notification/NotificationFactory;

    move-result-object v0

    .line 1152
    new-instance v1, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;

    invoke-direct {v1, p0, v0}, Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;-><init>(Landroid/app/Service;Lcom/audible/mobile/notification/NotificationFactory;)V

    iput-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->notificationLocalPlayerEventListener:Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;

    .line 1154
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->notificationLocalPlayerEventListener:Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;

    invoke-interface {p1, v0}, Lcom/audible/mobile/player/Player;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    .line 1155
    new-instance v0, Lcom/audible/mobile/player/service/PlayerService$OnCompletionPolicyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/audible/mobile/player/service/PlayerService$OnCompletionPolicyListener;-><init>(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/service/PlayerService$1;)V

    invoke-interface {p1, v0}, Lcom/audible/mobile/player/Player;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    .line 1157
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/player/LocalPlayerEventListener;

    .line 1158
    invoke-interface {p1, v1}, Lcom/audible/mobile/player/Player;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    goto :goto_0

    .line 1161
    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService;->registerReceivers(Lcom/audible/mobile/player/Player;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized finishPreloadingPlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/PlayerStatusSnapshot;)Z
    .locals 11

    monitor-enter p0

    .line 1196
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService;->getSynchronousPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object v0

    .line 1198
    invoke-virtual {p2}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getCurrentPosition()I

    move-result v1

    .line 1199
    invoke-virtual {p2}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getNarrationSpeed()Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object v2

    .line 1200
    invoke-virtual {p2}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getVolume()F

    move-result v3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 1203
    invoke-virtual {v0}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getPlayerState()Lcom/audible/mobile/player/State;

    move-result-object v1

    sget-object v2, Lcom/audible/mobile/player/State;->STARTED:Lcom/audible/mobile/player/State;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1204
    :goto_0
    invoke-virtual {v0}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getCurrentPosition()I

    move-result v2

    .line 1205
    invoke-virtual {v0}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getNarrationSpeed()Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object v3

    .line 1206
    invoke-virtual {v0}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getVolume()F

    move-result v5

    if-lez v2, :cond_1

    .line 1210
    invoke-interface {p1, v2}, Lcom/audible/mobile/player/Player;->seekTo(I)V

    move v4, v1

    goto :goto_1

    .line 1212
    :cond_1
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v6, "Current position is unknown to seek to in pre-loading player"

    invoke-interface {v1, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1214
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->preloadingPlayerListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;

    invoke-virtual {v1}, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->onSeekComplete()V

    .line 1216
    :goto_1
    invoke-virtual {v0}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getNarrationSpeed()Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/audible/mobile/player/Player;->setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V

    .line 1217
    invoke-virtual {v0}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getVolume()F

    move-result v1

    invoke-interface {p1, v1}, Lcom/audible/mobile/player/Player;->setVolume(F)Z

    move v1, v2

    move-object v8, v3

    move p1, v4

    move v9, v5

    goto :goto_2

    .line 1219
    :cond_2
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService;->preloadingPlayerListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;

    invoke-virtual {p1}, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->onSeekComplete()V

    move-object v8, v2

    move v9, v3

    const/4 p1, 0x0

    .line 1222
    :goto_2
    new-instance v10, Lcom/audible/mobile/player/PlayerStatusSnapshot;

    invoke-virtual {p2}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v3

    if-eqz p1, :cond_3

    .line 1223
    sget-object v2, Lcom/audible/mobile/player/State;->STARTED:Lcom/audible/mobile/player/State;

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getPlayerState()Lcom/audible/mobile/player/State;

    move-result-object v2

    :goto_3
    move-object v4, v2

    invoke-virtual {p2}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getDuration()I

    move-result v5

    if-lez v1, :cond_4

    goto :goto_4

    .line 1224
    :cond_4
    invoke-virtual {p2}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getCurrentPosition()I

    move-result v1

    :goto_4
    move v6, v1

    invoke-virtual {p2}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getMaxPositionAvailable()I

    move-result v7

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/audible/mobile/player/PlayerStatusSnapshot;-><init>(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/State;IIILcom/audible/mobile/player/NarrationSpeed;F)V

    if-eqz v0, :cond_5

    .line 1228
    iget-object p2, p0, Lcom/audible/mobile/player/service/PlayerService;->playerEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/LocalPlayerEventListener;

    .line 1229
    invoke-virtual {v0, v10}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    goto :goto_5

    .line 1232
    :cond_5
    iget-object p2, p0, Lcom/audible/mobile/player/service/PlayerService;->playerEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/LocalPlayerEventListener;

    .line 1233
    invoke-virtual {v0, v10}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 1237
    :cond_6
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getNewPlayer(Landroid/content/Context;Lcom/audible/mobile/player/AudioDataSourceType;)Lcom/audible/mobile/player/Player;
    .locals 0

    .line 1034
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/service/PlayerService;->retrievePlayerFactory(Landroid/content/Context;Lcom/audible/mobile/player/AudioDataSourceType;)Lcom/audible/mobile/player/PlayerFactory;

    move-result-object p2

    .line 1035
    invoke-interface {p2, p1}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/player/Player;

    return-object p1
.end method

.method private declared-synchronized getSynchronousPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;
    .locals 5

    monitor-enter p0

    .line 1066
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1067
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1069
    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    new-instance v3, Lcom/audible/mobile/player/service/PlayerService$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/audible/mobile/player/service/PlayerService$2;-><init>(Lcom/audible/mobile/player/service/PlayerService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Lcom/audible/mobile/player/Player;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x1

    .line 1080
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1082
    :try_start_2
    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v3, "Interrupted while waiting for PlayerStatusSnapshot"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1085
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/PlayerStatusSnapshot;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadExistingPlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 3

    monitor-enter p0

    .line 1242
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v1, "Loading existing player with audio data source type {}"

    invoke-virtual {p2}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1243
    invoke-direct {p0, p1, p2, v0}, Lcom/audible/mobile/player/service/PlayerService;->changePlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;Z)V

    .line 1245
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService;->getSynchronousPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object p1

    .line 1246
    iget-object p2, p0, Lcom/audible/mobile/player/service/PlayerService;->playerEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/LocalPlayerEventListener;

    .line 1247
    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1249
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized preloadNewPlayer(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 3

    monitor-enter p0

    .line 1173
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v1, "Pre-loading new player of type {}"

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1175
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/audible/mobile/player/service/PlayerService;->getNewPlayer(Landroid/content/Context;Lcom/audible/mobile/player/AudioDataSourceType;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    .line 1176
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->preloadingAudioDataSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1177
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->preloadingPlayerListener:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;

    invoke-direct {v2, p0, v0, p1}, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;-><init>(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1179
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->playerServiceMetricRecorder:Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v1, v2, p1}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startSeamlessSwitchTimer(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AudioDataSource;)V

    .line 1180
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->preloadingPlayerListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/Player;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    .line 1181
    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V

    const/4 p1, 0x0

    .line 1182
    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->prepare(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private registerReceivers(Lcom/audible/mobile/player/Player;)V
    .locals 2

    .line 1276
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/audible/mobile/player/service/PlayerService$3;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/service/PlayerService$3;-><init>(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/Player;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1286
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->receiverSet:Ljava/util/Set;

    new-instance v1, Lcom/audible/mobile/headset/HeadsetReceiver;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/headset/HeadsetReceiver;-><init>(Landroid/content/Context;Lcom/audible/mobile/player/Player;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1287
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->receiverSet:Ljava/util/Set;

    new-instance v1, Lcom/audible/mobile/player/identity/AccountRemovedBroadcastReceiver;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/identity/AccountRemovedBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/audible/mobile/player/Player;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1289
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService;->receiverSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/framework/Registerable;

    .line 1290
    invoke-interface {v0}, Lcom/audible/mobile/framework/Registerable;->register()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized releaseCurrentPlayer()Lcom/audible/mobile/player/Player;
    .locals 3

    monitor-enter p0

    .line 1254
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v1, "Releasing current player."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1259
    :try_start_1
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->stop()V

    .line 1261
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService;->unregisterListenersAndReceivers()V

    .line 1263
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    const/4 v1, 0x0

    .line 1265
    iput-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    .line 1266
    new-instance v1, Lcom/audible/mobile/player/identity/NoOpPlayer;

    const-string v2, "no-op-player-callback"

    invoke-static {v2}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/audible/mobile/player/identity/NoOpPlayer;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1269
    :try_start_2
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1267
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1269
    :try_start_3
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1270
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized retrievePlayerFactory(Landroid/content/Context;Lcom/audible/mobile/player/AudioDataSourceType;)Lcom/audible/mobile/player/PlayerFactory;
    .locals 3

    monitor-enter p0

    .line 1040
    :try_start_0
    sget-object v0, Lcom/audible/mobile/player/service/PlayerService;->AUDIO_DATA_SOURCE_TYPE_PLAYER_FACTORY_CACHE:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/PlayerFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1043
    monitor-exit p0

    return-object v0

    .line 1046
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/audible/mobile/player/AudioDataSourceType;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1047
    sget-object v1, Lcom/audible/mobile/player/service/PlayerService;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Attempting to retrieve data source factory for key {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1048
    invoke-static {p1, v0}, Lcom/audible/mobile/util/ContextUtils;->getMetadataValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No factory configured for provided audio data source type."

    .line 1049
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1051
    invoke-static {p1}, Lcom/audible/mobile/util/ClassUtils;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/player/PlayerFactory;

    const-string v0, "Unable to create new instance of player factory."

    .line 1052
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/audible/mobile/player/service/PlayerService;->AUDIO_DATA_SOURCE_TYPE_PLAYER_FACTORY_CACHE:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private stopPlayerAndService()V
    .locals 2

    .line 1017
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerAccessLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1019
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerAccessLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1023
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :catchall_0
    move-exception v0

    .line 1021
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->playerAccessLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1022
    throw v0
.end method

.method private declared-synchronized unregisterListenersAndReceivers()V
    .locals 3

    monitor-enter p0

    .line 1130
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService;->unregisterReceivers()V

    .line 1132
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/player/LocalPlayerEventListener;

    .line 1133
    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v2, v1}, Lcom/audible/mobile/player/Player;->unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    goto :goto_0

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->notificationLocalPlayerEventListener:Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->notificationLocalPlayerEventListener:Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/Player;->unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    const/4 v0, 0x0

    .line 1138
    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->notificationLocalPlayerEventListener:Lcom/audible/mobile/player/NotificationLocalPlayerEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterReceivers()V
    .locals 3

    .line 1296
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->phoneStateListener:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1298
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->phoneStateListener:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1300
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->phoneStateListener:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    invoke-virtual {v0}, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->onDestroy()V

    const/4 v0, 0x0

    .line 1301
    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->phoneStateListener:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->receiverSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/framework/Registerable;

    .line 1305
    invoke-interface {v1}, Lcom/audible/mobile/framework/Registerable;->unregister()V

    goto :goto_0

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->receiverSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1029
    new-instance p1, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;-><init>(Lcom/audible/mobile/player/service/PlayerService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 927
    const-class v0, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 929
    invoke-static {p0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v1

    .line 931
    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 933
    :try_start_0
    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    if-nez v2, :cond_0

    .line 934
    new-instance v2, Lcom/audible/mobile/player/identity/NoOpPlayer;

    const-string v3, "no-op-player-callback"

    invoke-static {v3}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/audible/mobile/player/identity/NoOpPlayer;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iput-object v2, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :cond_0
    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 940
    const-class v2, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {v1, v2}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/metric/logger/MetricManager;

    .line 941
    new-instance v3, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    invoke-direct {v3, v2}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    iput-object v3, p0, Lcom/audible/mobile/player/service/PlayerService;->playerServiceMetricRecorder:Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    .line 942
    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService;->playerEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v3, p0, Lcom/audible/mobile/player/service/PlayerService;->playerServiceMetricRecorder:Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 944
    invoke-virtual {v1, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->hasComponent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 945
    sget-object v2, Lcom/audible/mobile/player/service/PlayerService;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Using ChangeDataSourceTypePolicyProvider from ComponentRegistry"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v1, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider;

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->changeDataSourceTypePolicyProvider:Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider;

    goto :goto_0

    .line 948
    :cond_1
    sget-object v0, Lcom/audible/mobile/player/service/PlayerService;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Using default ChangeDataSourceTypePolicyProvider"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 949
    new-instance v0, Lcom/audible/mobile/player/policy/DefaultChangeDataSourceTypePolicyProvider;

    invoke-direct {v0}, Lcom/audible/mobile/player/policy/DefaultChangeDataSourceTypePolicyProvider;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->changeDataSourceTypePolicyProvider:Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider;

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 937
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 938
    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .line 974
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 976
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService;->unregisterReceivers()V

    .line 977
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerAccessLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 979
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerAccessLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 984
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_0
    move-exception v0

    .line 981
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService;->playerAccessLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 982
    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 960
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 962
    invoke-static {p0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object p1

    const-class p2, Lcom/audible/mobile/notification/NotificationFactoryProvider;

    invoke-virtual {p1, p2}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/notification/NotificationFactoryProvider;

    .line 963
    const-class p2, Lcom/audible/mobile/player/service/PlayerService;

    invoke-virtual {p1, p2}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getFactory(Ljava/lang/Class;)Lcom/audible/mobile/notification/NotificationFactory;

    move-result-object p1

    .line 965
    invoke-interface {p1}, Lcom/audible/mobile/notification/NotificationFactory;->getId()I

    move-result p2

    invoke-interface {p1}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    .line 990
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService;->stopPlayerAndService()V

    .line 991
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 992
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService;->playerServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/PlayerServiceEventListener;

    .line 993
    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerServiceEventListener;->onTaskRemoved()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1007
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService;->stopPlayerAndService()V

    .line 1008
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method protected final setPlayer(Lcom/audible/mobile/player/Player;)V
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1322
    :try_start_0
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerService;->player:Lcom/audible/mobile/player/Player;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService;->playerChangingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1325
    throw p1
.end method
