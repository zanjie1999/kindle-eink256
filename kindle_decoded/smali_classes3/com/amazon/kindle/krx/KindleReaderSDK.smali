.class public Lcom/amazon/kindle/krx/KindleReaderSDK;
.super Lcom/amazon/kindle/krx/BaseKindleReaderSDK;
.source "KindleReaderSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.krx.KindleReaderSDK"

.field private static volatile instance:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private static final sdkInstanceLatch:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private volatile applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final applicationManagerLock:Ljava/lang/Object;

.field private volatile coverManager:Lcom/amazon/kindle/krx/cover/ICoverManager;

.field private final coverManagerLock:Ljava/lang/Object;

.field private final factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private volatile krxClippingService:Lcom/amazon/kindle/krx/clipping/IKRXClippingService;

.field private final krxClippingServiceLock:Ljava/lang/Object;

.field private volatile kwisClientProvider:Lcom/amazon/kindle/krx/kwis/IKWISClientProvider;

.field private final kwisClientProviderLock:Ljava/lang/Object;

.field private final lazyBubbleManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/IBubbleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyContentUpdateManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/update/IContentUpdateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyExtensionManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyLibraryUIManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyLogger:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyPubSubMessageService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyReaderManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyReaderModeHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/IReaderModeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyReaderSearchManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/search/IReaderSearchManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyReaderUIManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/ui/ReaderUIManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazySyncManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/sync/ISyncManager;",
            ">;"
        }
    .end annotation
.end field

.field private volatile libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final libraryManagerLock:Ljava/lang/Object;

.field private volatile messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

.field private final messagingManagerLock:Ljava/lang/Object;

.field private volatile readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

.field private final readingStreamsEncoderLock:Ljava/lang/Object;

.field private volatile themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

.field private final themeManagerLock:Ljava/lang/Object;

.field private volatile tutorialManager:Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

.field private final tutorialManagerLock:Ljava/lang/Object;

.field private volatile weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

.field private final weblabManagerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/amazon/kindle/krx/KindleReaderSDK;->sdkInstanceLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/application/IKindleObjectFactory;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/ui/ReaderUIManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/search/IReaderSearchManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/IReaderModeHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/sync/ISyncManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/IBubbleManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/update/IContentUpdateManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/amazon/kindle/krx/BaseKindleReaderSDK;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->libraryManagerLock:Ljava/lang/Object;

    .line 84
    iput-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    .line 85
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->messagingManagerLock:Ljava/lang/Object;

    .line 87
    iput-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->applicationManagerLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->coverManagerLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->readingStreamsEncoderLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->kwisClientProviderLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->krxClippingServiceLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->tutorialManagerLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->themeManagerLock:Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->weblabManagerLock:Ljava/lang/Object;

    .line 124
    iput-object p1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 126
    iput-object p2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyReaderManager:Ldagger/Lazy;

    .line 127
    iput-object p3, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyReaderUIManager:Ldagger/Lazy;

    .line 128
    iput-object p4, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyPubSubMessageService:Ldagger/Lazy;

    .line 129
    iput-object p5, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyReaderSearchManager:Ldagger/Lazy;

    .line 130
    iput-object p6, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyReaderModeHandler:Ldagger/Lazy;

    .line 131
    iput-object p7, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyLibraryUIManager:Ldagger/Lazy;

    .line 132
    iput-object p8, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyLogger:Ldagger/Lazy;

    .line 133
    iput-object p9, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazySyncManager:Ldagger/Lazy;

    .line 134
    iput-object p10, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyBubbleManager:Ldagger/Lazy;

    .line 135
    iput-object p11, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyContentUpdateManager:Ldagger/Lazy;

    .line 136
    iput-object p12, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyExtensionManager:Ldagger/Lazy;

    .line 138
    invoke-interface {p1, p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->setKindleReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 2

    .line 148
    sget-object v0, Lcom/amazon/kindle/krx/KindleReaderSDK;->instance:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez v0, :cond_0

    .line 150
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/krx/KindleReaderSDK;->sdkInstanceLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "com.amazon.kindle.krx.KindleReaderSDK"

    const-string v1, "interrupted while waiting for KindleReaderSDK instance"

    .line 152
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    sget-object v0, Lcom/amazon/kindle/krx/KindleReaderSDK;->instance:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public static declared-synchronized setInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-class v0, Lcom/amazon/kindle/krx/KindleReaderSDK;

    monitor-enter v0

    .line 142
    :try_start_0
    sput-object p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->instance:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 143
    sget-object p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->sdkInstanceLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;
    .locals 9

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->applicationManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Lcom/amazon/kindle/krx/application/ApplicationManager;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 189
    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v4

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 190
    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v5

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 191
    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v6

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    .line 192
    invoke-interface {v2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v7

    iget-object v8, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kindle/krx/application/ApplicationManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kindle/services/download/IDownloadService;Lcom/amazon/kindle/io/IPathDescriptor;Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    iput-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 194
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 196
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    return-object v0
.end method

.method public getBatchMetricsCollector()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;
    .locals 1

    .line 308
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v0

    return-object v0
.end method

.method public getBubbleManager()Lcom/amazon/kindle/krx/reader/IBubbleManager;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyBubbleManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/IBubbleManager;

    return-object v0
.end method

.method public getClippingService()Lcom/amazon/kindle/krx/clipping/IKRXClippingService;
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->krxClippingService:Lcom/amazon/kindle/krx/clipping/IKRXClippingService;

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->krxClippingServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->krxClippingService:Lcom/amazon/kindle/krx/clipping/IKRXClippingService;

    if-nez v1, :cond_0

    .line 336
    new-instance v1, Lcom/amazon/kindle/krx/clipping/KRXClippingService;

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getClippingService()Lcom/amazon/kindle/clipping/IClippingService;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 337
    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/krx/clipping/KRXClippingService;-><init>(Lcom/amazon/kindle/clipping/IClippingService;Lcom/amazon/kcp/reader/IReaderController;)V

    iput-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->krxClippingService:Lcom/amazon/kindle/krx/clipping/IKRXClippingService;

    .line 339
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 341
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->krxClippingService:Lcom/amazon/kindle/krx/clipping/IKRXClippingService;

    return-object v0
.end method

.method public getContentUpdateManager()Lcom/amazon/kindle/krx/update/IContentUpdateManager;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyContentUpdateManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/update/IContentUpdateManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCoverManager()Lcom/amazon/kindle/krx/cover/ICoverManager;
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->coverManager:Lcom/amazon/kindle/krx/cover/ICoverManager;

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->coverManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->coverManager:Lcom/amazon/kindle/krx/cover/ICoverManager;

    if-nez v1, :cond_0

    .line 272
    new-instance v1, Lcom/amazon/kindle/krx/cover/CoverManager;

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 273
    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/krx/cover/CoverManager;-><init>(Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kindle/content/ILibraryService;)V

    iput-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->coverManager:Lcom/amazon/kindle/krx/cover/ICoverManager;

    .line 275
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 277
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->coverManager:Lcom/amazon/kindle/krx/cover/ICoverManager;

    return-object v0
.end method

.method public getExtensionManager()Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyExtensionManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    return-object v0
.end method

.method public getKWISClientProvider()Lcom/amazon/kindle/krx/kwis/IKWISClientProvider;
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->kwisClientProvider:Lcom/amazon/kindle/krx/kwis/IKWISClientProvider;

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->kwisClientProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->kwisClientProvider:Lcom/amazon/kindle/krx/kwis/IKWISClientProvider;

    if-nez v1, :cond_0

    .line 323
    new-instance v1, Lcom/amazon/kindle/krx/kwis/KWISClientProvider;

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKWISClientHandler()Lcom/amazon/kindle/kwis/IKWISClientHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/krx/kwis/KWISClientProvider;-><init>(Lcom/amazon/kindle/kwis/IKWISClientHandler;)V

    iput-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->kwisClientProvider:Lcom/amazon/kindle/krx/kwis/IKWISClientProvider;

    .line 325
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 327
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->kwisClientProvider:Lcom/amazon/kindle/krx/kwis/IKWISClientProvider;

    return-object v0
.end method

.method public getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;
    .locals 8

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->libraryManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Lcom/amazon/kindle/krx/library/LibraryManager;

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 206
    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v4

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 207
    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v5

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v6

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 208
    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCMSActionRunnerFactory()Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/krx/library/LibraryManager;-><init>(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/content/IGroupService;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;)V

    iput-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 210
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 212
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    return-object v0
.end method

.method public getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyLibraryUIManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    return-object v0
.end method

.method public getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyLogger:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/logging/ILogger;

    return-object v0
.end method

.method public getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->messagingManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    if-nez v1, :cond_0

    .line 245
    new-instance v1, Lcom/amazon/kindle/krx/messaging/MessagingManager;

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 246
    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMessengerServiceForPlugins()Lcom/amazon/kindle/krx/messaging/IMessengerService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/krx/messaging/MessagingManager;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/messaging/IMessengerService;)V

    iput-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    .line 247
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getRemoteTodoService()Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    check-cast v2, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;->registerTodoItemHandler(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V

    .line 249
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 251
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    return-object v0
.end method

.method public getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    .line 236
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    return-object v0
.end method

.method public getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;
    .locals 1

    .line 405
    invoke-static {}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyPubSubMessageService:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    return-object v0
.end method

.method public getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyReaderManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/IReaderManager;

    return-object v0
.end method

.method public getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyReaderModeHandler:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    return-object v0
.end method

.method public getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyReaderUIManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    return-object v0
.end method

.method public getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->readingStreamsEncoderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    if-nez v1, :cond_0

    .line 298
    new-instance v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    .line 300
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 302
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    return-object v0
.end method

.method public getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazyReaderSearchManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    return-object v0
.end method

.method public getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    return-object v0
.end method

.method public getSyncManager()Lcom/amazon/kindle/krx/sync/ISyncManager;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->lazySyncManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/sync/ISyncManager;

    return-object v0
.end method

.method public getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->themeManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

    if-nez v1, :cond_0

    .line 376
    new-instance v1, Lcom/amazon/android/theme/ThemeManager;

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getInitialThemeConfig()Lcom/amazon/kcp/theme/ThemeConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/android/theme/ThemeManager;-><init>(Lcom/amazon/kcp/theme/ThemeConfig;)V

    iput-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

    .line 378
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 380
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

    return-object v0
.end method

.method public getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;
    .locals 1

    .line 367
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    return-object v0
.end method

.method public getTutorialManager()Lcom/amazon/kindle/krx/tutorial/ITutorialManager;
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->tutorialManager:Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->tutorialManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->tutorialManager:Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    if-nez v1, :cond_0

    .line 356
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v1

    .line 357
    new-instance v2, Lcom/amazon/kindle/krx/tutorial/TutorialManager;

    invoke-direct {v2, v1}, Lcom/amazon/kindle/krx/tutorial/TutorialManager;-><init>(Lcom/amazon/kindle/krx/tutorial/BaseTutorialManager;)V

    iput-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->tutorialManager:Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    .line 359
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 361
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->tutorialManager:Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    return-object v0
.end method

.method public getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->weblabManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    if-nez v1, :cond_0

    .line 395
    sget-object v1, Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory;->Companion:Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory$Companion;

    iget-object v2, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory$Companion;->getWeblabManager(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    .line 397
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 399
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDK;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    return-object v0
.end method
