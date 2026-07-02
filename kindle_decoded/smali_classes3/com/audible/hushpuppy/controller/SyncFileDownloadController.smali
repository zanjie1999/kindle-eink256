.class public final Lcom/audible/hushpuppy/controller/SyncFileDownloadController;
.super Ljava/lang/Object;
.source "SyncFileDownloadController.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/ISyncFileDownloadController;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final SYNC_DOWNLOAD_TIMEOUT_IN_MINUTES:Lcom/audible/mobile/domain/Time;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final countDownLatchFactory:Lcom/audible/mobile/framework/Factory1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/framework/Factory1<",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final isSyncFileDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

.field private final maxRetry:I

.field private final relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

.field private syncFileDownloadCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private syncFileDownloadCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 44
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->SYNC_DOWNLOAD_TIMEOUT_IN_MINUTES:Lcom/audible/mobile/domain/Time;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/relationship/IRelationship;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/ILibraryController;I)V
    .locals 7

    .line 103
    new-instance v5, Lcom/audible/hushpuppy/common/misc/CountDownLatchFactory;

    invoke-direct {v5}, Lcom/audible/hushpuppy/common/misc/CountDownLatchFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;-><init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/relationship/IRelationship;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/mobile/framework/Factory1;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/relationship/IRelationship;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/mobile/framework/Factory1;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/audible/hushpuppy/controller/ILibraryController;",
            "Lcom/audible/mobile/framework/Factory1<",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->isSyncFileDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "Audible Service cannot be NULL"

    .line 120
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Relationship cannot be NULL"

    .line 121
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Event Buss cannot be NULL"

    .line 122
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Library Controller cannot be NULL"

    .line 123
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Count Down Factory cannot be NULL"

    .line 124
    invoke-static {p5, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 127
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 128
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->eventBus:Lde/greenrobot/event/EventBus;

    .line 129
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    .line 130
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->countDownLatchFactory:Lcom/audible/mobile/framework/Factory1;

    .line 131
    iput p6, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->maxRetry:I

    .line 132
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget p2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->maxRetry:I

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->syncFileDownloadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public downloadSyncFile()Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/controller/ILibraryController;->getSyncFile(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    const-string v2, "Sync File Already exists for %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->SUCCESS:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->isSyncFileDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    const-string v2, "Sync File Downloading for %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->DOWNLOADING:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    return-object v0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->shouldRetrySyncFileDownload()Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    sget-object v0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    const-string v2, "Sync file download was tried twice already for %s, not retrying again!"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    sget-object v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->MAX_RETRY_COMPLETE:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    return-object v0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->isSyncFileDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->syncFileDownloadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 165
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->countDownLatchFactory:Lcom/audible/mobile/framework/Factory1;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    iput-object v2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->syncFileDownloadCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 166
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 169
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    sget-object v2, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Downloading Sync for Full Book"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v2, v0, v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    goto :goto_1

    .line 173
    :cond_4
    sget-object v2, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Downloading Sync for sample Book"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v2, v0, v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadSampleSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    :goto_1
    const/4 v0, 0x0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->syncFileDownloadCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->SYNC_DOWNLOAD_TIMEOUT_IN_MINUTES:Lcom/audible/mobile/domain/Time;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v2

    sget-object v4, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->SYNC_DOWNLOAD_TIMEOUT_IN_MINUTES:Lcom/audible/mobile/domain/Time;

    invoke-interface {v4}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 178
    sget-object v1, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Sync file Download timed out and not completed!!"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->TIME_OUT:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_2
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->isSyncFileDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-object v1

    .line 181
    :cond_5
    :try_start_1
    sget-object v1, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Sync file Download completed successfully!!"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 182
    sget-object v1, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->SUCCESS:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 185
    :try_start_2
    sget-object v2, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync file download wait failed with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 186
    sget-object v1, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->ERROR:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 188
    :goto_3
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->isSyncFileDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 190
    throw v1
.end method

.method protected isSyncFileDownloading()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->isSyncFileDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;)V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->syncFileDownloadCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    const-string v2, "SyncDownloadSuccessfulEvent for Sync file ACR: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;->getAcr()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->syncFileDownloadCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method protected shouldRetrySyncFileDownload()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;->syncFileDownloadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
