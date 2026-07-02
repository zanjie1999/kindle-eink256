.class public Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;
.super Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;
.source "DictionaryDownloadRequest.java"


# static fields
.field private static final DICTIONARY_DOWNLOAD_EVENT:Ljava/lang/String; = "WordWiseDictionaryDownload"

.field private static final DICTIONARY_DOWNLOAD_SUCCESS_RATE:Ljava/lang/String; = "WordWiseDictionaryDownloadSuccessRate"

.field private static final DICTIONARY_DOWNLOAD_TIME:Ljava/lang/String; = "WordWiseDictionaryDownloadTime"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dictionaryType:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

.field private final downloadStartTime:J

.field private handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

.field private isChinaUser:Z

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private newVersion:Ljava/lang/String;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private url:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/krx/download/IKRXResponseHandler;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->url:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->userId:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->isChinaUser:Z

    .line 64
    iput-object p4, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    .line 65
    iput-object p5, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 66
    iput-object p6, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->newVersion:Ljava/lang/String;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 68
    iput-object p7, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->dictionaryType:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    .line 69
    sget-object p1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_DOWNLOADING:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->publishEvent(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->downloadStartTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->downloadStartTime:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->dictionaryType:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->gunzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->isChinaUser:Z

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->newVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;Lcom/amazon/kcp/wordwise/download/DownloadStatusType;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->publishEvent(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;)V

    return-void
.end method

.method private gunzip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const-string v0, "Could not delete gzip file"

    const-string v1, "Could not close file"

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    iget-object v3, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 197
    iget-object v3, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unzipping from : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 202
    :try_start_0
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x2000

    :try_start_2
    new-array v4, v4, [B

    .line 206
    :goto_0
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 207
    invoke-virtual {v7, v4, v5, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v4, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v4

    sget-object v8, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unzipped file at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 216
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 221
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 224
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->cleanUp()V

    .line 228
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 231
    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    .line 232
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    :catch_0
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v3

    goto/16 :goto_5

    :catch_1
    move-exception v7

    move-object v11, v7

    move-object v7, v4

    move-object v4, v11

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v6, v4

    goto :goto_5

    :catch_2
    move-exception v6

    move-object v7, v4

    move-object v4, v6

    move-object v6, v7

    .line 212
    :goto_1
    :try_start_5
    iget-object v8, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v8

    sget-object v9, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->TAG:Ljava/lang/String;

    const-string v10, "Could not unzip file"

    invoke-interface {v8, v9, v10, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v7, :cond_2

    .line 216
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v6, :cond_3

    .line 221
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 224
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->cleanUp()V

    .line 228
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 231
    :cond_4
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    .line 232
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 235
    :goto_3
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->TAG:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return v3

    :catchall_2
    move-exception v3

    move-object v4, v7

    :goto_5
    if-eqz v4, :cond_6

    .line 216
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    :catch_5
    move-exception p1

    goto :goto_7

    :cond_6
    :goto_6
    if-eqz v6, :cond_7

    .line 221
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 224
    :cond_7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 227
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->cleanUp()V

    .line 228
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 231
    :cond_8
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_9

    .line 232
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    .line 235
    :goto_7
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->TAG:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    :cond_9
    :goto_8
    throw v3
.end method

.method private publishEvent(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;)V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;-><init>(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBody()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->dictionaryType:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getGlossDictionaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 116
    new-instance v0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;-><init>(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
