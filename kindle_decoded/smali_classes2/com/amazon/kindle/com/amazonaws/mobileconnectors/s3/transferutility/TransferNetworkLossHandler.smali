.class public Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
.super Landroid/content/BroadcastReceiver;
.source "TransferNetworkLossHandler.java"


# static fields
.field private static final LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static transferNetworkLossHandler:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;


# instance fields
.field final connManager:Landroid/net/ConnectivityManager;

.field private dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "connectivity"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->connManager:Landroid/net/ConnectivityManager;

    .line 72
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 73
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->resumeAllTransfersOnNetworkAvailability()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->pauseAllTransfersDueToNetworkInterruption()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException;
        }
    .end annotation

    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->transferNetworkLossHandler:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->transferNetworkLossHandler:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 101
    :cond_0
    :try_start_1
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 102
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException;

    const-string v2, "TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    .locals 2

    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->transferNetworkLossHandler:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->transferNetworkLossHandler:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 86
    :cond_0
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->transferNetworkLossHandler:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized pauseAllTransfersDueToNetworkInterruption()V
    .locals 5

    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 213
    iget v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->get(Ljava/lang/Integer;)Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 214
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->connManager:Landroid/net/ConnectivityManager;

    .line 216
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->pauseIfRequiredForNetworkInterruption(Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget v1, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resumeAllTransfersOnNetworkAvailability()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 156
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 160
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v3, "Loading transfers from database..."

    invoke-interface {v1, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    :try_start_1
    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    sget-object v5, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-virtual {v4, v5, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryTransfersWithTypeAndStates(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/database/Cursor;

    move-result-object v1

    .line 170
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    .line 171
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 174
    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v4, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v4

    if-nez v4, :cond_0

    .line 175
    new-instance v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v4, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;-><init>(I)V

    .line 176
    invoke-virtual {v4, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->updateFromDB(Landroid/database/Cursor;)V

    .line 177
    iget-object v5, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v5, v4}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->addTransfer(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    add-int/lit8 v2, v2, 0x1

    .line 180
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 184
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v4, "Closing the cursor for resumeAllTransfers"

    invoke-interface {v0, v4}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 185
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    :cond_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 192
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->get(Ljava/lang/Integer;)Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 195
    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 196
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->isRunning()Z

    move-result v4

    if-nez v4, :cond_3

    .line 197
    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v5, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v6, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->start(Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 202
    :try_start_4
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in resuming the transfers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 205
    :cond_4
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " transfers are loaded from database."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 206
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 184
    :try_start_5
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v3, "Closing the cursor for resumeAllTransfers"

    invoke-interface {v2, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 185
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method isNetworkConnected()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string p2, "Network connectivity changed detected."

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->isNetworkConnected()Z

    move-result p1

    .line 113
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 119
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;-><init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
