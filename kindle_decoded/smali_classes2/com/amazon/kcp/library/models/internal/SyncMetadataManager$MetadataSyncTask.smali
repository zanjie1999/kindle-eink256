.class public Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;
.super Lcom/amazon/kindle/sync/SyncTask;
.source "SyncMetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetadataSyncTask"
.end annotation


# static fields
.field private static final MILLISECONDS_PER_HOURS:I = 0x36ee80


# instance fields
.field private killCallback:Lcom/amazon/foundation/ICallback;

.field private final reason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field private final secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

.field private final statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

.field private final syncMetadataManager:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

.field private final syncMetadataThrottleTimeInHours:I

.field private final syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/persistence/ISecureStorage;Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 337
    invoke-direct {p0, v1, v0, v0}, Lcom/amazon/kindle/sync/SyncTask;-><init>(ILcom/amazon/kcp/application/models/internal/TodoModel$Reason;Lcom/amazon/kcp/application/internal/commands/CCommand;)V

    .line 338
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    .line 339
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->syncMetadataManager:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    .line 340
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 341
    invoke-virtual {p3}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getTodoReason()Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->reason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 342
    iput-object p4, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    .line 343
    invoke-interface {p5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$integer;->sync_metadata_throttle_time_in_hours:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->syncMetadataThrottleTimeInHours:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/persistence/ISecureStorage;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$1;)V
    .locals 0

    .line 315
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;-><init>(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/persistence/ISecureStorage;Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;)Lcom/amazon/foundation/ICallback;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->killCallback:Lcom/amazon/foundation/ICallback;

    return-object p0
.end method

.method private compareSyncMetadataTime(JJ)Z
    .locals 1

    sub-long/2addr p3, p1

    const-wide/32 p1, 0x36ee80

    .line 390
    div-long/2addr p3, p1

    iget p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->syncMetadataThrottleTimeInHours:I

    int-to-long p1, p1

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getStoredDate(Lcom/amazon/kindle/persistence/ISecureStorage;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .line 394
    invoke-interface {p1, p2}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 397
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 398
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object p3
.end method

.method private throttleSync(Lcom/amazon/kcp/application/sync/internal/SyncType;)Z
    .locals 1

    .line 383
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->APP_STARTUP_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public execute()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    monitor-enter p0

    const/4 v0, 0x1

    .line 350
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kindle/sync/SyncTask;->started:Z

    .line 351
    iget-boolean v0, p0, Lcom/amazon/kindle/sync/SyncTask;->cancelled:Z

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit p0

    return-object v0

    .line 354
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->throttleSync(Lcom/amazon/kcp/application/sync/internal/SyncType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "last_syncmetadata_date"

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->getStoredDate(Lcom/amazon/kindle/persistence/ISecureStorage;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->compareSyncMetadataTime(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    invoke-static {}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " request, but the sync metadata was throttled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->syncMetadataManager:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->reason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    invoke-static {v0, v1, p0, v2}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->access$800(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V

    .line 369
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :catchall_0
    move-exception v0

    .line 354
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasError()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->syncMetadataManager:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->access$200(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public registerKillEvent(Lcom/amazon/foundation/ICallback;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->killCallback:Lcom/amazon/foundation/ICallback;

    return-void
.end method
