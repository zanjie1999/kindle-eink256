.class public final Lcom/amazon/kcp/library/FalkorProcessesPlugin;
.super Ljava/lang/Object;
.source "FalkorProcessesPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "FalkorProcessesPlugin"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorProcessesPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorProcessesPlugin.kt\ncom/amazon/kcp/library/FalkorProcessesPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1517#2:100\n1588#2,3:101\n*E\n*S KotlinDebug\n*F\n+ 1 FalkorProcessesPlugin.kt\ncom/amazon/kcp/library/FalkorProcessesPlugin\n*L\n53#1:100\n53#1,3:101\n*E\n"
.end annotation


# instance fields
.field private final isSyncProcessRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private postSyncFinishProcess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin;->isSyncProcessRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$isSyncProcessRunning$p(Lcom/amazon/kcp/library/FalkorProcessesPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin;->isSyncProcessRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$setPostSyncFinishProcess$p(Lcom/amazon/kcp/library/FalkorProcessesPlugin;Ljava/lang/Runnable;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin;->postSyncFinishProcess:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final cleanSamples(Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 4

    const-string v0, "libraryService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/FalkorProcessesPlugin$cleanSamples$idsToRemove$1;->INSTANCE:Lcom/amazon/kcp/library/FalkorProcessesPlugin$cleanSamples$idsToRemove$1;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "libraryService.listConte\u2026tadata.isSample\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 102
    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    const-string/jumbo v3, "metadata"

    .line 53
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method public getDependecies()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDependecies()Ljava/util/Collection;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FalkorProcessesPlugin;->getDependecies()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/FalkorProcessesPlugin$initialize$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/FalkorProcessesPlugin$initialize$1;-><init>(Lcom/amazon/kcp/library/FalkorProcessesPlugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 39
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final onFalkorFullSyncRequestEvent(Lcom/amazon/kindle/krx/events/FalkorFullSyncRequestEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;-><init>(Lcom/amazon/kcp/library/FalkorProcessesPlugin;Lcom/amazon/kindle/krx/events/FalkorFullSyncRequestEvent;)V

    .line 79
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xbb8

    .line 62
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final onSynchronizationManagerEvent(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 90
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin;->isSyncProcessRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    iget-object p1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin;->postSyncFinishProcess:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin;->postSyncFinishProcess:Ljava/lang/Runnable;

    goto :goto_1

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin;->isSyncProcessRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    return-void
.end method
