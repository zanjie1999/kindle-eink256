.class public final Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;
.super Ljava/lang/Object;
.source "HomeFeedManager.kt"

# interfaces
.implements Lcom/amazon/kcp/home/feeds/HomeFeedManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeFeedManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeFeedManager.kt\ncom/amazon/kcp/home/feeds/HomeFeedManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,497:1\n1819#2,2:498\n1#3:500\n*E\n*S KotlinDebug\n*F\n+ 1 HomeFeedManager.kt\ncom/amazon/kcp/home/feeds/HomeFeedManagerImpl\n*L\n330#1,2:498\n*E\n"
.end annotation


# instance fields
.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final canMakeRequests:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private contentAddRequestCounter:I

.field private contentUpdateRequestCounter:I

.field private counterResetTime:J

.field private final coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

.field private currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

.field private currentRequest:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

.field private final database:Lcom/amazon/kcp/home/database/HomeDatabase;

.field private final ftueSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastRecentAsins:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastRequestTimestamp:J

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

.field private final partialFTUEFirstBatchAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private recentAsinsAtPartialSync:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final resetOnAuthEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sdk$delegate:Lkotlin/Lazy;

.field private final settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

.field private final threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

.field private final userSettings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 97
    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$sdk$2;->INSTANCE:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$sdk$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->sdk$delegate:Lkotlin/Lazy;

    .line 98
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 99
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    .line 100
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    .line 101
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    .line 102
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v2, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 103
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Utils.getFactory().context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    .line 104
    sget-object v0, Lcom/amazon/kcp/home/database/HomeDatabase;->Companion:Lcom/amazon/kcp/home/database/HomeDatabase$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/home/database/HomeDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/amazon/kcp/home/database/HomeDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->database:Lcom/amazon/kcp/home/database/HomeDatabase;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->canMakeRequests:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    const-string v3, "Utils.getFactory().authenticationManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->resetOnAuthEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->ftueSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->isPartialFTUESyncDone()Z

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->partialFTUEFirstBatchAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/UserSettingsController;->getResumeRequestCounterResetTime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->counterResetTime:J

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getResumeContentAddRequestCounter(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->contentAddRequestCounter:I

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getResumeContentUpdateRequestCounter(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->contentUpdateRequestCounter:I

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    const-wide/16 v1, -0xe10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getHFSLastestRequestTime(Ljava/lang/Long;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->lastRequestTimestamp:J

    .line 131
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->recentAsinsAtPartialSync:Ljava/util/List;

    .line 133
    sget-object v0, Lcom/amazon/kcp/home/models/HomeFeed;->UNINITIALIZED_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    .line 137
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->lastRecentAsins:Ljava/util/Collection;

    .line 140
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 141
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/home/debug/SidekickDebugPageManager;->getProvider()Lcom/amazon/kindle/krx/providers/IProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$bookIdStringsFromAsins(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->bookIdStringsFromAsins(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAuthenticationManager$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/application/IAuthenticationManager;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    return-object p0
.end method

.method public static final synthetic access$getCounterResetTime$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->counterResetTime:J

    return-wide v0
.end method

.method public static final synthetic access$getCoverImageService$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kindle/cover/ICoverImageService;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    return-object p0
.end method

.method public static final synthetic access$getCurrentFeed$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/models/HomeFeed;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    return-object p0
.end method

.method public static final synthetic access$getCurrentRequest$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/feeds/HomeFeedRequest;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentRequest:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    return-object p0
.end method

.method public static final synthetic access$getDatabase$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/database/HomeDatabase;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->database:Lcom/amazon/kcp/home/database/HomeDatabase;

    return-object p0
.end method

.method public static final synthetic access$getLastRecentAsins$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Ljava/util/Collection;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->lastRecentAsins:Ljava/util/Collection;

    return-object p0
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method public static final synthetic access$getMetricsManager$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/application/metrics/internal/MetricsManager;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    return-object p0
.end method

.method public static final synthetic access$getSettings$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/debug/SidekickSettings;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    return-object p0
.end method

.method public static final synthetic access$loadFromDatabaseAndNotify(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->loadFromDatabaseAndNotify()V

    return-void
.end method

.method public static final synthetic access$recentAsinsFromLibrary(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Ljava/util/Collection;
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->recentAsinsFromLibrary()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCounterResetTime$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;J)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->setCounterResetTime(J)V

    return-void
.end method

.method public static final synthetic access$setCurrentFeed$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;Lcom/amazon/kcp/home/models/HomeFeed;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    return-void
.end method

.method public static final synthetic access$setCurrentRequest$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentRequest:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    return-void
.end method

.method public static final synthetic access$setLastRecentAsins$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;Ljava/util/Collection;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->lastRecentAsins:Ljava/util/Collection;

    return-void
.end method

.method public static final synthetic access$switchToEmptyFeedIfNotYetInitialized(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->switchToEmptyFeedIfNotYetInitialized()V

    return-void
.end method

.method private final backgroundThread(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    const-string/jumbo v1, "threadPoolManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/amazon/kcp/home/feeds/HomeFeedManagerKt$sam$java_lang_Runnable$0;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object p1, v1

    :cond_0
    check-cast p1, Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final bookIdStringsFromAsins(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 498
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    invoke-static {v1}, Lcom/amazon/kcp/library/HomeUtils;->bookIdForAsin(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final clearCache()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->database:Lcom/amazon/kcp/home/database/HomeDatabase;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/database/HomeDatabase;->readAsins()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->bookIdStringsFromAsins(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/cover/ICoverImageService;->deleteCovers(Ljava/util/Collection;)V

    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->database:Lcom/amazon/kcp/home/database/HomeDatabase;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/database/HomeDatabase;->clear()V

    return-void
.end method

.method private final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->sdk$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method private final isPartialFTUESyncDone()Z
    .locals 4

    .line 321
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->isDefaultAccount(Lcom/amazon/kindle/services/authentication/IAccountInfo;)Z

    move-result v0

    .line 323
    invoke-static {}, Lcom/amazon/kcp/application/sync/SyncHelper;->getLastSyncDate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    xor-int/2addr v1, v3

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private final loadFromDatabaseAndNotify()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->database:Lcom/amazon/kcp/home/database/HomeDatabase;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/database/HomeDatabase;->readFeed()Lcom/amazon/kcp/home/models/HomeFeed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/HomeFeed;->getPageOfCards()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    :cond_0
    sget-object v0, Lcom/amazon/kcp/home/models/HomeFeed;->EMPTY_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    .line 255
    :cond_1
    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/home/events/HomeFeedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/kcp/home/events/HomeFeedEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private final recentAsinsFromLibrary()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 335
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->startLibraryLookup()Lcom/amazon/kindle/content/ILibraryLookupBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/content/ILibraryLookupBuilder;->limit(Ljava/lang/Integer;)Lcom/amazon/kindle/content/ILibraryLookupBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryLookupBuilder;->currentUser()Lcom/amazon/kindle/content/ILibraryLookupBuilder;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryLookupBuilder;->excludeDictionaries()Lcom/amazon/kindle/content/ILibraryLookupBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryLookupBuilder;->excludeUsersGuide()Lcom/amazon/kindle/content/ILibraryLookupBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryLookupBuilder;->excludePreloads()Lcom/amazon/kindle/content/ILibraryLookupBuilder;

    move-result-object v0

    const-string v1, "Utils.getFactory().libra\u2026Guide().excludePreloads()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryLookupBuilder;->getAsins()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "Utils.getFactory().libra\u2026).excludePreloads().asins"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final reset(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 281
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentRequest:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentRequest:Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    .line 283
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->clearCache()V

    const-wide/16 v1, -0xe10

    .line 284
    iput-wide v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->lastRequestTimestamp:J

    .line 285
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->partialFTUEFirstBatchAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->isPartialFTUESyncDone()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 286
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->ftueSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    :cond_1
    sget-object p1, Lcom/amazon/kcp/home/models/HomeFeed;->UNINITIALIZED_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    .line 290
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/home/events/HomeFeedEvent;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/home/events/HomeFeedEvent;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    const-wide/16 v1, -0x1

    .line 291
    invoke-direct {p0, v1, v2}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->setCounterResetTime(J)V

    .line 292
    invoke-direct {p0, v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->setContentAddRequestCounter(I)V

    .line 293
    invoke-direct {p0, v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->setContentUpdateRequestCounter(I)V

    return-void
.end method

.method private final setContentAddRequestCounter(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setResumeContentAddRequestCounter(I)V

    return-void
.end method

.method private final setContentUpdateRequestCounter(I)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setResumeContentUpdateRequestCounter(I)V

    return-void
.end method

.method private final setCounterResetTime(J)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setResumeRequestCounterResetTime(J)V

    return-void
.end method

.method private final switchToEmptyFeedIfNotYetInitialized()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/HomeFeed;->getState()Lcom/amazon/kcp/home/models/HomeFeed$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/home/models/HomeFeed$State;->UNINITIALIZED:Lcom/amazon/kcp/home/models/HomeFeed$State;

    if-ne v0, v1, :cond_0

    .line 301
    sget-object v0, Lcom/amazon/kcp/home/models/HomeFeed;->EMPTY_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    iput-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    .line 302
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/home/events/HomeFeedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/kcp/home/events/HomeFeedEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method

.method private final updateFeedDataIfNeeded()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/HomeFeed;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getForceFeedRefresh()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    new-instance v0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$updateFeedDataIfNeeded$1;-><init>(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->backgroundThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public getCurrentHomeFeed()Lcom/amazon/kcp/home/models/HomeFeed;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    return-object v0
.end method

.method public getHomeFeedData()Lcom/amazon/kcp/home/models/HomeFeed;
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->updateFeedDataIfNeeded()V

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    return-object v0
.end method

.method public getHomeFeedState()Lcom/amazon/kcp/home/models/HomeFeed$State;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/HomeFeed;->getState()Lcom/amazon/kcp/home/models/HomeFeed$State;

    move-result-object v0

    return-object v0
.end method

.method public makeHomeFeedRequest(ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;)V
    .locals 9

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    const-string v1, "authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->isDefaultAccount(Lcom/amazon/kindle/services/authentication/IAccountInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "com.amazon.kcp.home.feeds.HomeFeedManager"

    const-string v0, "Not authenticated, failing home feed request"

    .line 160
    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->switchToEmptyFeedIfNotYetInitialized()V

    if-eqz p2, :cond_0

    .line 162
    invoke-interface {p2, v2}, Lcom/amazon/kcp/home/feeds/FeedResponseHandler;->onResponse(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V

    :cond_0
    return-void

    .line 166
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v0, v3

    .line 167
    iget-object v3, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getForceFeedRefresh()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v3, 0xa

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0xe10

    .line 168
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " last "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->lastRequestTimestamp:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " diff "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->lastRequestTimestamp:J

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " throttle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    iget-wide v5, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->lastRequestTimestamp:J

    sub-long v5, v0, v5

    const/4 v7, 0x0

    cmp-long v8, v5, v3

    if-gez v8, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    .line 172
    invoke-interface {p2, v2}, Lcom/amazon/kcp/home/feeds/FeedResponseHandler;->onResponse(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V

    :cond_4
    return-void

    .line 176
    :cond_5
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->partialFTUEFirstBatchAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz p2, :cond_6

    .line 178
    invoke-interface {p2, v2}, Lcom/amazon/kcp/home/feeds/FeedResponseHandler;->onResponse(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V

    :cond_6
    return-void

    .line 182
    :cond_7
    iput-wide v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->lastRequestTimestamp:J

    .line 183
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->canMakeRequests:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_9

    if-eqz p2, :cond_8

    .line 185
    invoke-interface {p2, v2}, Lcom/amazon/kcp/home/feeds/FeedResponseHandler;->onResponse(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V

    :cond_8
    return-void

    .line 189
    :cond_9
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->canMakeRequests:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 190
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getForceFeedRefresh()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 191
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->clearCache()V

    .line 192
    sget-object p1, Lcom/amazon/kcp/home/models/HomeFeed;->UNINITIALIZED_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    .line 195
    :cond_a
    new-instance p1, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;-><init>(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;Lcom/amazon/kcp/home/feeds/FeedResponseHandler;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->backgroundThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onHomeFeedResponseReceived(Lcom/amazon/kcp/home/events/HomeFeedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lcom/amazon/kcp/home/events/HomeFeedEvent;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.amazon.kcp.home.feeds.HomeFeedManager"

    const-string v1, "HOME_FEED_RESPONSE_ERROR, failing homefeed request"

    .line 379
    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->canMakeRequests:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 355
    :cond_1
    new-instance p1, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onHomeFeedResponseReceived$1;-><init>(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->backgroundThread(Lkotlin/jvm/functions/Function0;)V

    .line 376
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->canMakeRequests:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public final onHomeRegistration(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->resetOnAuthEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 348
    :goto_1
    invoke-direct {p0, v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->reset(Z)V

    return-void
.end method

.method public final onLibraryContentAdded(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_ADD"
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->partialFTUEFirstBatchAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 481
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p1

    const/16 v0, 0x32

    invoke-interface {p1, v0}, Lcom/amazon/kindle/content/ILibraryService;->getCurrentUserBookAsins(I)Ljava/util/Collection;

    move-result-object p1

    const-string v0, "Utils.getFactory().libra\u2026tCurrentUserBookAsins(50)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->database:Lcom/amazon/kcp/home/database/HomeDatabase;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/database/HomeDatabase;->removeContentForAsins(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 483
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->loadFromDatabaseAndNotify()V

    :cond_1
    return-void
.end method

.method public final onLocaleChange(Lcom/amazon/kindle/event/LocaleChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->partialFTUEFirstBatchAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->makeHomeFeedRequest(ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;)V

    return-void
.end method

.method public final onResumeWidgetUpdateEvent(Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->partialFTUEFirstBatchAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->ftueSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->counterResetTime:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v0, v5

    if-gez v7, :cond_1

    .line 435
    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->setCounterResetTime(J)V

    .line 436
    invoke-direct {p0, v4}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->setContentAddRequestCounter(I)V

    .line 437
    invoke-direct {p0, v4}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->setContentUpdateRequestCounter(I)V

    .line 440
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;->getType()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 442
    :cond_2
    iget p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->contentAddRequestCounter:I

    const/16 v2, 0x14

    if-ge p1, v2, :cond_6

    .line 443
    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->makeHomeFeedRequest(ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;)V

    .line 444
    iget p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->contentUpdateRequestCounter:I

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->setContentUpdateRequestCounter(I)V

    goto :goto_0

    .line 449
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->recentAsinsFromLibrary()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 450
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->clearCache()V

    .line 451
    sget-object p1, Lcom/amazon/kcp/home/models/HomeFeed;->UNINITIALIZED_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->currentFeed:Lcom/amazon/kcp/home/models/HomeFeed;

    .line 452
    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->makeHomeFeedRequest(ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;)V

    .line 453
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kcp/home/events/HomeFeedEvent;

    invoke-direct {v0, v4}, Lcom/amazon/kcp/home/events/HomeFeedEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void

    .line 459
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->recentAsinsFromLibrary()Ljava/util/Collection;

    move-result-object p1

    .line 460
    iget-object v2, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->lastRecentAsins:Ljava/util/Collection;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 465
    :cond_5
    iget p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->contentUpdateRequestCounter:I

    const/16 v2, 0x19

    if-ge p1, v2, :cond_6

    .line 466
    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->makeHomeFeedRequest(ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;)V

    .line 467
    iget p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->contentUpdateRequestCounter:I

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->setContentUpdateRequestCounter(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onStorePurchase(Ljava/lang/String;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->database:Lcom/amazon/kcp/home/database/HomeDatabase;

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/database/HomeDatabase;->removeContentForAsins(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->loadFromDatabaseAndNotify()V

    :cond_0
    return-void
.end method

.method public final onSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "ftueSyncInProgress is unexpectedly "

    const-string v2, "com.amazon.kcp.home.feeds.HomeFeedManager"

    const/4 v3, 0x0

    const-string v4, " event"

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    :goto_0
    return-void

    .line 410
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->ftueSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 412
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->recentAsinsAtPartialSync:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->recentAsinsFromLibrary()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 414
    invoke-virtual {p0, v5, p1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->makeHomeFeedRequest(ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;)V

    goto/16 :goto_1

    .line 417
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->ftueSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->partialFTUEFirstBatchAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 392
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->partialFTUEFirstBatchAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 394
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->ftueSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 395
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->recentAsinsFromLibrary()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->recentAsinsAtPartialSync:Ljava/util/List;

    .line 396
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v0, Lcom/amazon/kcp/application/PerfMarker;->FTUE_HOME_FEED_REQUEST_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_HOME_FEED_REQUEST_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->startTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    .line 397
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v0, Lcom/amazon/kcp/application/PerfMarker;->FTUE_HOME_FEED_REQUEST_START:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V

    .line 398
    new-instance p1, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onSyncMetadataParseEvent$1;

    invoke-direct {p1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$onSyncMetadataParseEvent$1;-><init>()V

    invoke-virtual {p0, v5, p1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->makeHomeFeedRequest(ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;)V

    goto :goto_1

    .line 406
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->ftueSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
