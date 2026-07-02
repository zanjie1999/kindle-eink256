.class public final Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider;
.super Ljava/lang/Object;
.source "ThreadSafeReadAlongSyncDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider$SyncFileWrapper;
    }
.end annotation


# instance fields
.field private final logger:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/audible/hushpuppy/sync/SyncIntegration;->getDelegate()Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider;->logger:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    return-void
.end method


# virtual methods
.method public declared-synchronized create(Ljava/io/File;Ljava/lang/String;)Lcom/audible/hushpuppy/sync/ISyncData;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 22
    :try_start_0
    new-instance v0, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;

    new-instance v1, Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider$SyncFileWrapper;

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider$SyncFileWrapper;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;-><init>(Lcom/audible/hushpuppy/sync/IFile;)V

    invoke-virtual {v0, p2}, Lcom/audible/hushpuppy/sync/SimpleSyncDataBuilder;->setAsinId(Ljava/lang/String;)Lcom/audible/hushpuppy/sync/ISyncDataBuilder;

    invoke-interface {v0}, Lcom/audible/hushpuppy/sync/ISyncDataBuilder;->create()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/audible/hushpuppy/sync/ISyncData;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    :try_start_1
    iget-object p2, p0, Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider;->logger:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    const-string v0, "cannot create a SimpleSyncDataBuilder"

    invoke-interface {p2, v0, p1}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 29
    monitor-exit p0

    return-object p1

    .line 18
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The sync file must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
