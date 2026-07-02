.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;
.super Ljava/lang/Object;
.source "TransferStatusUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;
    }
.end annotation


# static fields
.field static final LISTENERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static final STATES_NOT_TO_NOTIFY:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
            ">;"
        }
    .end annotation
.end field

.field private static dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private static transferStatusUpdater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# instance fields
.field private final mainHandler:Landroid/os/Handler;

.field private final transfers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_NETWORK_DISCONNECT:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 46
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->STATES_NOT_TO_NOTIFY:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sput-object p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 83
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->mainHandler:Landroid/os/Handler;

    .line 84
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/kindle/com/amazonaws/logging/Log;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;
    .locals 2

    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transferStatusUpdater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 96
    new-instance p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-direct {p0, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;-><init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    sput-object p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transferStatusUpdater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 98
    :cond_0
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transferStatusUpdater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method declared-synchronized addTransfer(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V
    .locals 2

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    iget v1, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getTransfer(I)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getTransfers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized newProgressListener(I)Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;
    .locals 4

    monitor-enter p0

    .line 396
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating a new progress listener for transfer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 402
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;-><init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 398
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferStatusUpdater doesn\'t track the transfer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeTransferRecordFromDB(I)V
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->remove(Ljava/lang/Integer;)V

    .line 148
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->deleteTransferRecords(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method throwError(ILjava/lang/Exception;)V
    .locals 5

    .line 276
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    monitor-enter v0

    .line 277
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 278
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 284
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;-><init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;ILjava/lang/Exception;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 291
    :cond_1
    monitor-exit v0

    return-void

    .line 279
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 291
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method declared-synchronized updateProgress(IJJZ)V
    .locals 16

    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, v9, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    if-eqz v0, :cond_0

    .line 236
    iput-wide v10, v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    move-wide/from16 v12, p4

    .line 237
    iput-wide v12, v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    goto :goto_0

    :cond_0
    move-wide/from16 v12, p4

    .line 242
    :goto_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    move/from16 v14, p1

    invoke-virtual {v0, v14, v10, v11}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateBytesTransferred(IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p6, :cond_1

    .line 245
    monitor-exit p0

    return-void

    .line 249
    :cond_1
    :try_start_1
    sget-object v15, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    monitor-enter v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 251
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 255
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 257
    iget-object v7, v9, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->mainHandler:Landroid/os/Handler;

    new-instance v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 p6, v0

    move-object v0, v7

    move-object v10, v8

    move-wide/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;-><init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;IJJ)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v10, p2

    move-object/from16 v0, p6

    goto :goto_1

    .line 264
    :cond_3
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 252
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 264
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    .locals 6

    monitor-enter p0

    .line 168
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->STATES_NOT_TO_NOTIFY:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->transfers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    if-nez v1, :cond_0

    .line 172
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    move-result v1

    if-nez v1, :cond_1

    .line 173
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update the status of transfer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {p2, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 177
    iput-object p2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 179
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateTransferRecord(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)I

    move-result v1

    if-nez v1, :cond_1

    .line 180
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update the status of transfer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 185
    monitor-exit p0

    return-void

    .line 190
    :cond_2
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->removeTransferRecordFromDB(I)V

    .line 194
    :cond_3
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    :try_start_2
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->LISTENERS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_8

    .line 196
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 201
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 202
    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;

    invoke-direct {v5, p0, v3, p1, p2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$1;-><init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 212
    :cond_5
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 213
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 214
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 215
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 217
    :cond_7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 197
    :cond_8
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 217
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
