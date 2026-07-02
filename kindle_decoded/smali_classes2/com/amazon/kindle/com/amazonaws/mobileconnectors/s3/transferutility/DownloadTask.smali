.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static final SIXTEEN_KB:I = 0x4000


# instance fields
.field private final download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

.field private final s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

.field private final updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 61
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    .line 62
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    return-void
.end method

.method private saveToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 7

    const-string v0, "got exception"

    .line 173
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 178
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 181
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x4000

    :try_start_1
    new-array p2, p2, [B

    .line 184
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 185
    invoke-virtual {v3, p2, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 197
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 200
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1, v0, p2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz p1, :cond_3

    .line 204
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 207
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {p2, v0, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void

    :catchall_0
    move-exception p2

    move-object v2, v3

    goto :goto_6

    :catch_2
    move-exception p2

    move-object v2, v3

    goto :goto_4

    :catch_3
    move-exception p2

    move-object v2, v3

    goto :goto_5

    :catchall_1
    move-exception p2

    goto :goto_6

    :catch_4
    move-exception p2

    .line 193
    :goto_4
    :try_start_4
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to store object contents to disk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception p2

    .line 188
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketTimeoutException: Unable to retrieve contents over network: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v3, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 191
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    invoke-direct {v3, v1, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    if-eqz v2, :cond_4

    .line 197
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v1

    .line 200
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    if-eqz p1, :cond_5

    .line 204
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    move-exception p1

    .line 207
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 209
    :cond_5
    :goto_8
    throw p2
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 26

    move-object/from16 v1, p0

    const-string v2, "]: Network wasn\'t available."

    const-string v3, "Thread:["

    const-string v4, "]"

    const-string v5, "TransferUtilityException: ["

    const/4 v6, 0x0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->getInstance()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->getInstance()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 74
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v7, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v7, v7, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v7, v8}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 75
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 78
    sget-object v7, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 81
    :cond_0
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v7, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v7, v7, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v7, v8}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 84
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v7, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v7, v7, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v0, v7}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->newProgressListener(I)Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    move-result-object v7

    const-wide/16 v8, 0x0

    .line 87
    :try_start_1
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;

    iget-object v10, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v10, v10, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bucketName:Ljava/lang/String;

    iget-object v11, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v11, v11, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->key:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendTransferServiceUserAgentString(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    .line 89
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v11, v11, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->file:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    const/4 v11, 0x1

    cmp-long v12, v14, v8

    if-lez v12, :cond_1

    .line 92
    sget-object v12, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v13, "Resume transfer %d from %d bytes"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v9, v9, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v13, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v8}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    const-wide/16 v8, -0x1

    .line 97
    invoke-virtual {v0, v14, v15, v8, v9}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 100
    :cond_1
    invoke-virtual {v0, v7}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->setGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)V

    .line 102
    iget-object v8, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    invoke-interface {v8, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;->getObject(Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v8, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v8, v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "AmazonS3.getObject returns null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 105
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v8, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v8, v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v9, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v8, v9}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 106
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 109
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getInstanceLength()J

    move-result-wide v23

    .line 110
    iget-object v12, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v8, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v13, v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    const/16 v18, 0x1

    move-wide/from16 v16, v23

    invoke-virtual/range {v12 .. v18}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJZ)V

    .line 111
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->saveToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 112
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v8, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v8, v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    const/16 v25, 0x1

    move-object/from16 v19, v0

    move/from16 v20, v8

    move-wide/from16 v21, v23

    invoke-virtual/range {v19 .. v25}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJZ)V

    .line 113
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v8, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v8, v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v9, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v8, v9}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 114
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    move-object v8, v0

    .line 117
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v9, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v9, v9, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v9, "Transfer is "

    if-eqz v0, :cond_3

    .line 118
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 119
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 123
    :cond_3
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v10, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v10, v10, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v10}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v10, 0x20

    if-eqz v0, :cond_4

    .line 124
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 125
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 126
    invoke-virtual {v0, v10}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 127
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;

    invoke-direct {v0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-interface {v7, v0}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;->progressChanged(Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;)V

    .line 128
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 135
    :cond_4
    invoke-static {v8}, Lcom/amazon/kindle/com/amazonaws/retry/RetryUtils;->isInterrupted(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    :try_start_2
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->getInstance()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 139
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->getInstance()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 140
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 145
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 146
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 147
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 148
    invoke-virtual {v0, v10}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 149
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;

    invoke-direct {v0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-interface {v7, v0}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;->progressChanged(Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;)V

    .line 150
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catch Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    .line 153
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 158
    :cond_5
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 159
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v0, v2, v8}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 160
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 161
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
