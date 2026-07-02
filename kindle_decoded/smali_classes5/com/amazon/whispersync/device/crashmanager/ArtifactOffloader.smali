.class Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;
.super Ljava/lang/Object;
.source "ArtifactOffloader.java"


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final LOGS_DIR:Ljava/io/File;

.field private static final LOG_FILE_PREFIX:Ljava/lang/String; = "crashes_"

.field private static final LOG_FILE_SUFFIX:Ljava/lang/String; = ".zip"

.field private static final TEMP_LOGS_DIR:Ljava/io/File;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mArtifactSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceSerialNumber:Ljava/lang/String;

.field private final mMediaScannerHelper:Lcom/amazon/whispersync/device/utils/MediaScannerHelper;

.field private final mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "CrashManager.ArtifactOffloader"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd.hhmmss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "KindleLogs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->LOGS_DIR:Ljava/io/File;

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "tmp/crashes"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->TEMP_LOGS_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/amazon/whispersync/device/utils/StatusNotifier;Lcom/amazon/whispersync/device/utils/MediaScannerHelper;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;",
            ">;",
            "Lcom/amazon/whispersync/device/utils/StatusNotifier;",
            "Lcom/amazon/whispersync/device/utils/MediaScannerHelper;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 45
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mArtifactSources:Ljava/util/List;

    .line 46
    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    .line 47
    iput-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mMediaScannerHelper:Lcom/amazon/whispersync/device/utils/MediaScannerHelper;

    if-eqz p4, :cond_0

    .line 48
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p4, "UNKNOWN_DSN"

    :cond_1
    iput-object p4, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mDeviceSerialNumber:Ljava/lang/String;

    return-void

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaScannerHelper must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StatusNotifier must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Artifact sources must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createTempFile()Ljava/io/File;
    .locals 5

    .line 170
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->TEMP_LOGS_DIR:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashes_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mDeviceSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "createTempFile"

    const-string v4, "Creating temp file"

    invoke-virtual {v1, v3, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method private getZipStream(Ljava/io/File;)Ljava/util/zip/ZipOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getNextZipStream"

    const-string v3, "Creating stream for"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x9

    .line 149
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    const/16 p1, 0x8

    .line 150
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    return-object v0
.end method

.method private renameFile(Ljava/io/File;)Z
    .locals 6

    .line 156
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->LOGS_DIR:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashes_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mDeviceSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "OldFile"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    const-string v4, "NewFile"

    aput-object v4, v3, p1

    const/4 p1, 0x3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "RenameLogFile"

    const-string v0, "Unable to rename logfile"

    invoke-virtual {v2, p1, v0, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method


# virtual methods
.method public generateOffloadFileName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public offloadArtifacts(Lcom/amazon/whispersync/client/metrics/MetricEvent;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "offloadCrashEntries"

    const-string v3, "Crash offload finished."

    const/16 v0, 0x2710

    new-array v4, v0, [B

    .line 63
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "offloadArtifacts"

    const-string v8, "Offloading artifacts."

    invoke-virtual {v0, v7, v8, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    const-string v6, "Crash offload started."

    invoke-interface {v0, v6}, Lcom/amazon/whispersync/device/utils/StatusNotifier;->fireToast(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    .line 66
    :try_start_0
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mArtifactSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v6

    const/4 v10, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v11, p1

    .line 69
    :goto_1
    :try_start_2
    invoke-interface {v0, v11}, Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;->getNextArtifact(Lcom/amazon/whispersync/client/metrics/MetricEvent;)Lcom/amazon/whispersync/device/crashmanager/Artifact;

    move-result-object v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v12, :cond_3

    if-nez v6, :cond_0

    .line 76
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->createTempFile()Ljava/io/File;

    move-result-object v9

    .line 77
    invoke-direct {v1, v9}, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->getZipStream(Ljava/io/File;)Ljava/util/zip/ZipOutputStream;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 80
    :try_start_4
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Failed to create zip output stream."

    invoke-direct {v12, v13, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 85
    :cond_0
    :goto_2
    new-instance v13, Ljava/util/zip/ZipEntry;

    invoke-virtual {v12}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v14
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v15, v8

    :try_start_5
    invoke-virtual {v12}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v7

    invoke-virtual {v1, v14, v7, v8}, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->generateOffloadFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v6, v13}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 91
    invoke-virtual {v12}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 93
    :goto_3
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v8

    if-lez v8, :cond_2

    .line 94
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v12, -0x1

    if-ne v8, v12, :cond_1

    goto :goto_4

    .line 99
    :cond_1
    invoke-virtual {v6, v4, v5, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 102
    :cond_2
    :goto_4
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 105
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    add-int/lit8 v10, v10, 0x1

    move-object v8, v15

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 102
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_3
    move-object v15, v8

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v15, v8

    .line 109
    :goto_5
    :try_start_8
    sget-object v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v8, "IOException while offloading crashes."

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v0, v13, v5

    invoke-virtual {v7, v2, v8, v13}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_6
    move-object v8, v15

    goto :goto_0

    .line 116
    :cond_4
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mMediaScannerHelper:Lcom/amazon/whispersync/device/utils/MediaScannerHelper;

    sget-object v4, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->LOGS_DIR:Ljava/io/File;

    invoke-virtual {v0, v4}, Lcom/amazon/whispersync/device/utils/MediaScannerHelper;->scanDirectory(Ljava/io/File;)V

    if-eqz v6, :cond_5

    .line 119
    :goto_7
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 120
    invoke-direct {v1, v9}, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->renameFile(Ljava/io/File;)Z

    .line 123
    :cond_5
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    invoke-interface {v0, v3}, Lcom/amazon/whispersync/device/utils/StatusNotifier;->fireToast(Ljava/lang/CharSequence;)V

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v9, v6

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v9, v6

    const/4 v10, 0x0

    .line 113
    :goto_8
    :try_start_9
    sget-object v4, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v7, "createOffloaderAndOffload"

    const-string v8, "Exception thrown while offloading crashes."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v5

    invoke-virtual {v4, v7, v8, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 116
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mMediaScannerHelper:Lcom/amazon/whispersync/device/utils/MediaScannerHelper;

    sget-object v4, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->LOGS_DIR:Ljava/io/File;

    invoke-virtual {v0, v4}, Lcom/amazon/whispersync/device/utils/MediaScannerHelper;->scanDirectory(Ljava/io/File;)V

    if-eqz v6, :cond_5

    goto :goto_7

    .line 126
    :goto_9
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Done offloading crashes"

    invoke-virtual {v0, v2, v4, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v10

    :catchall_2
    move-exception v0

    .line 116
    :goto_a
    iget-object v2, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mMediaScannerHelper:Lcom/amazon/whispersync/device/utils/MediaScannerHelper;

    sget-object v4, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->LOGS_DIR:Ljava/io/File;

    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/device/utils/MediaScannerHelper;->scanDirectory(Ljava/io/File;)V

    if-eqz v6, :cond_6

    .line 119
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 120
    invoke-direct {v1, v9}, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->renameFile(Ljava/io/File;)Z

    .line 123
    :cond_6
    iget-object v2, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactOffloader;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    invoke-interface {v2, v3}, Lcom/amazon/whispersync/device/utils/StatusNotifier;->fireToast(Ljava/lang/CharSequence;)V

    throw v0
.end method
