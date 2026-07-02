.class final Lcom/audible/hushpuppy/sync/SyncData;
.super Ljava/lang/Object;
.source "SyncData.java"

# interfaces
.implements Lcom/audible/hushpuppy/sync/ISyncData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/sync/SyncData$HasHeader;
    }
.end annotation


# instance fields
.field private final content:Lcom/audible/hushpuppy/sync/SyncDataContent;

.field private final hasHeader:Lcom/audible/hushpuppy/sync/SyncData$HasHeader;

.field private final logger:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/sync/SyncData$HasHeader;Lcom/audible/hushpuppy/sync/SyncDataContent;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/audible/hushpuppy/sync/SyncIntegration;->getDelegate()Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/sync/SyncData;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData;->logger:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    .line 20
    iput-object p1, p0, Lcom/audible/hushpuppy/sync/SyncData;->hasHeader:Lcom/audible/hushpuppy/sync/SyncData$HasHeader;

    .line 21
    iput-object p2, p0, Lcom/audible/hushpuppy/sync/SyncData;->content:Lcom/audible/hushpuppy/sync/SyncDataContent;

    .line 23
    new-instance p1, Lcom/audible/hushpuppy/sync/SyncData$1;

    invoke-direct {p1, p0}, Lcom/audible/hushpuppy/sync/SyncData$1;-><init>(Lcom/audible/hushpuppy/sync/SyncData;)V

    invoke-virtual {p2, p1}, Lcom/audible/hushpuppy/sync/SyncDataContent;->setErrorHandler(Lcom/audible/hushpuppy/sync/SyncDataContent$IErrorHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/sync/SyncData;)Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/audible/hushpuppy/sync/SyncData;->logger:Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    return-object p0
.end method


# virtual methods
.method public getAsinId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData;->content:Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getAsinId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getEBookPosFromAudiobookPos(J)J
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData;->content:Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-virtual {v0, p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getEBookPosFromAudiobookPos(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getHiAudiobookPos()J
    .locals 2

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData;->content:Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getHiAudiobookPos()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHiEbookPos()J
    .locals 2

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData;->content:Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getHiEbookPos()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLoAudiobookPos()J
    .locals 2

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData;->content:Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getLoAudiobookPos()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLoEbookPos()J
    .locals 2

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData;->content:Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getLoEbookPos()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxAudiobookPosFromEBookRange(JJ)J
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData;->content:Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getMaxAudiobookPosFromEBookRange(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMinAudiobookPosFromEBookRange(JJ)J
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData;->content:Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getMinAudiobookPosFromEBookRange(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData;->content:Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData;->content:Lcom/audible/hushpuppy/sync/SyncDataContent;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/sync/SyncDataContent;->init()V

    return-void
.end method
