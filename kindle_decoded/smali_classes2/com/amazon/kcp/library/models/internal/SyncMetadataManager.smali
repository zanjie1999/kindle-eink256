.class public Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;
.super Ljava/lang/Object;
.source "SyncMetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;,
        Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$FTUESyncMetadataFinishedEvent;
    }
.end annotation


# static fields
.field private static final PHASE_TWO_FTUE_BROADCAST_TIMEOUT:I = 0xafc8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private delayedSyncTask:Ljava/lang/Runnable;

.field private final delayedSyncTaskLock:Ljava/lang/Object;

.field private downloadManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

.field private hasStartSyncMetadataConnection:Z

.field private isSyncMetadataProcessRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mainThreadHandle:Landroid/os/Handler;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

.field private syncMetadataHadError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/persistence/ISecureStorage;Lcom/amazon/kindle/webservices/IWebRequestManager;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->delayedSyncTaskLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->isSyncMetadataProcessRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataHadError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput-boolean v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->hasStartSyncMetadataConnection:Z

    .line 80
    new-instance v0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadata;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    .line 82
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    .line 83
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->downloadManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    .line 85
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->mainThreadHandle:Landroid/os/Handler;

    .line 87
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 88
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$102(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->hasStartSyncMetadataConnection:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataHadError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->onSynchronizeMetadataFinished(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->delayedSyncTaskLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->delayedSyncTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataIfNeeded(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V

    return-void
.end method

.method public static fetchSkippedCovers()V
    .locals 6

    .line 278
    sget-object v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->SKIPPED_COVERS_METADATA:Ljava/util/Vector;

    monitor-enter v0

    .line 279
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching skipped covers, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->SKIPPED_COVERS_METADATA:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in total."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->SKIPPED_COVERS_METADATA:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 281
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v5, 0x0

    invoke-interface {v3, v2, v4, v5}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    goto :goto_0

    .line 283
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    sget-object v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;->SKIPPED_COVERS_METADATA:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 283
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onSynchronizeMetadataFinished(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    const-string v1, "last_syncmetadata_server_date"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataHadError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getSyncTime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->setLastSyncMetadataServerTime(Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync time stored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getSyncTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->hasMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    .line 166
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getMinTodoItemRequestIntervalMinutes()I

    move-result v2

    .line 165
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/sync/SynchronizationManager;->setMinTodoItemRequestInterval(I)V

    .line 168
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getAnnotationSyncStatus()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->setSyncStatus(Z)V

    .line 172
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_syncmetadata_date"

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ftue_sync_complete"

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 179
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v2, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$FTUESyncMetadataFinishedEvent;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$FTUESyncMetadataFinishedEvent;-><init>(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->hasStartSyncMetadataConnection:Z

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->getSyncTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    sget-object v1, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->TAG:Ljava/lang/String;

    const-string v2, "Full sync failed, clear the data"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->empty(Ljava/lang/String;)V

    .line 197
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->isSyncMetadataProcessRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 199
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->performAdditionalSyncIfNeeded(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    return-void
.end method

.method private performAdditionalSyncIfNeeded(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->hasMore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataHadError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->shouldFetchSkippedCovers()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 257
    invoke-static {}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->fetchSkippedCovers()V

    goto :goto_1

    .line 239
    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    const-string v0, "phase_two_ftue_broadcast_received"

    invoke-interface {p4, v0}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p4

    .line 240
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->split_ftue_sync:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez p4, :cond_5

    if-nez v0, :cond_2

    goto :goto_2

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->postDelayedSyncTask()V

    .line 260
    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->access$400(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;)Lcom/amazon/foundation/ICallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 261
    invoke-static {p2}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;->access$400(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;)Lcom/amazon/foundation/ICallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_4
    return-void

    .line 245
    :cond_5
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->shouldFetchSkippedCovers()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 246
    invoke-static {}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->fetchSkippedCovers()V

    .line 248
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataIfNeeded(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V

    return-void
.end method

.method private postDelayedSyncTask()V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->delayedSyncTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->delayedSyncTask:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$3;-><init>(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->delayedSyncTask:Ljava/lang/Runnable;

    .line 306
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->mainThreadHandle:Landroid/os/Handler;

    const-wide/32 v3, 0xafc8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setLastSyncMetadataServerTime(Ljava/lang/String;)V
    .locals 2

    const-string v0, "last_syncmetadata_server_date"

    if-eqz p1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public static shouldFetchSkippedCovers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private syncMetadataIfNeeded(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V
    .locals 9

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->isSyncMetadataProcessRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->isSyncMetadataProcessRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->hasStartSyncMetadataConnection:Z

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->delayedSyncTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->delayedSyncTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->mainThreadHandle:Landroid/os/Handler;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->delayedSyncTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->delayedSyncTask:Ljava/lang/Runnable;

    .line 124
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    new-instance v4, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$1;-><init>(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;)V

    .line 137
    new-instance v0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;-><init>(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/kindle/webservices/XmlResponseHandler;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V

    .line 146
    iget-object p2, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->downloadManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    new-instance p3, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    invoke-direct {p3, v0, p1}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;-><init>(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    invoke-interface {p2, p3}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 124
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getSyncMetadataModel()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    return-object v0
.end method

.method public getSyncTask(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/application/sync/internal/SyncType;)Lcom/amazon/kindle/sync/SyncTask;
    .locals 8

    .line 97
    new-instance v7, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;

    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;-><init>(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/persistence/ISecureStorage;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$1;)V

    return-object v7
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 219
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 220
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataModel:Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->empty(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->setLastSyncMetadataServerTime(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    const-string v0, "ftue_sync_complete"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 223
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    const-string v0, "phase_two_ftue_broadcast_received"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
