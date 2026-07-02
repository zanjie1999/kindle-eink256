.class Lcom/amazon/device/crashmanager/ArtifactOffloader;
.super Ljava/lang/Object;
.source "ArtifactOffloader.java"


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final LOGS_DIR:Ljava/io/File;

.field private static final LOG_FILE_PREFIX:Ljava/lang/String; = "crashes_"

.field private static final LOG_FILE_SUFFIX:Ljava/lang/String; = ".zip"

.field private static final TEMP_LOGS_DIR:Ljava/io/File;

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field private final mArtifactSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/crashmanager/source/ArtifactSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceSerialNumber:Ljava/lang/String;

.field private final mMediaScannerHelper:Lcom/amazon/device/utils/det/MediaScannerHelper;

.field private final mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "CrashManager.ArtifactOffloader"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/dp/logger/DPLogger;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd.hhmmss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "KindleLogs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->LOGS_DIR:Ljava/io/File;

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "tmp/crashes"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->TEMP_LOGS_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/amazon/device/utils/det/StatusNotifier;Lcom/amazon/device/utils/det/MediaScannerHelper;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/device/crashmanager/source/ArtifactSource;",
            ">;",
            "Lcom/amazon/device/utils/det/StatusNotifier;",
            "Lcom/amazon/device/utils/det/MediaScannerHelper;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 47
    iput-object p1, p0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mArtifactSources:Ljava/util/List;

    .line 48
    iput-object p2, p0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    .line 49
    iput-object p3, p0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mMediaScannerHelper:Lcom/amazon/device/utils/det/MediaScannerHelper;

    if-eqz p4, :cond_0

    .line 50
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p4, "UNKNOWN_DSN"

    :cond_1
    iput-object p4, p0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mDeviceSerialNumber:Ljava/lang/String;

    return-void

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaScannerHelper must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StatusNotifier must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Artifact sources must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createTempFile()Ljava/io/File;
    .locals 5

    .line 168
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->TEMP_LOGS_DIR:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashes_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mDeviceSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactOffloader;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

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

    .line 170
    sget-object v1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "createTempFile"

    const-string v4, "Creating temp file"

    invoke-virtual {v1, v3, v4, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
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

    .line 147
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getNextZipStream"

    const-string v3, "Creating stream for"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x9

    .line 150
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    const/16 p1, 0x8

    .line 151
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    return-object v0
.end method

.method private renameFile(Ljava/io/File;)Z
    .locals 6

    .line 157
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->LOGS_DIR:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashes_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mDeviceSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactOffloader;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

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

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 159
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    sget-object v2, Lcom/amazon/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/dp/logger/DPLogger;

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

    invoke-virtual {v2, p1, v0, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method


# virtual methods
.method public generateOffloadFileName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    .line 136
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public offloadArtifacts(Lcom/amazon/client/metrics/common/MetricEvent;I)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string/jumbo v3, "offloadCrashEntries"

    const-string v4, "Finished offloading Crashes"

    const/16 v0, 0x2710

    new-array v5, v0, [B

    .line 65
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    const-string/jumbo v8, "offloadArtifacts"

    const-string v9, "Offloading artifacts."

    invoke-virtual {v0, v8, v9, v7}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, v1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    const-string v7, "Offloading Crashes"

    invoke-interface {v0, v7, v2}, Lcom/amazon/device/utils/det/StatusNotifier;->fireNotification(Ljava/lang/CharSequence;I)V

    const/4 v7, 0x0

    .line 68
    :try_start_0
    iget-object v0, v1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mArtifactSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v11, v7

    const/4 v12, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/crashmanager/source/ArtifactSource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 70
    :try_start_2
    sget-object v13, Lcom/amazon/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/dp/logger/DPLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Offloading Artifacts for source: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v15, v6, [Ljava/lang/Object;

    invoke-virtual {v13, v8, v14, v15}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const-string v13, "ARTIFACT_OFFLOAD"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v14, p1

    .line 71
    :try_start_3
    invoke-interface {v0, v14, v13}, Lcom/amazon/device/crashmanager/source/ArtifactSource;->getNextArtifact(Lcom/amazon/client/metrics/common/MetricEvent;Ljava/lang/String;)Lcom/amazon/device/crashmanager/Artifact;

    move-result-object v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v13, :cond_3

    if-nez v7, :cond_0

    .line 78
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/amazon/device/crashmanager/ArtifactOffloader;->createTempFile()Ljava/io/File;

    move-result-object v11

    .line 79
    invoke-direct {v1, v11}, Lcom/amazon/device/crashmanager/ArtifactOffloader;->getZipStream(Ljava/io/File;)Ljava/util/zip/ZipOutputStream;

    move-result-object v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v0

    .line 82
    :try_start_5
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v15, "Failed to create zip output stream."

    invoke-direct {v13, v15, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 87
    :cond_0
    :goto_2
    new-instance v15, Ljava/util/zip/ZipEntry;

    invoke-virtual {v13}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v16, v7

    .line 88
    :try_start_6
    invoke-virtual {v13}, Lcom/amazon/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v6

    .line 87
    invoke-virtual {v1, v9, v6, v7}, Lcom/amazon/device/crashmanager/ArtifactOffloader;->generateOffloadFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v7, v16

    .line 89
    :try_start_7
    invoke-virtual {v7, v15}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 92
    invoke-virtual {v13}, Lcom/amazon/device/crashmanager/Artifact;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 94
    :goto_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v9

    if-lez v9, :cond_2

    .line 95
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v13, -0x1

    if-ne v9, v13, :cond_1

    goto :goto_4

    :cond_1
    const/4 v13, 0x0

    .line 100
    invoke-virtual {v7, v5, v13, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 103
    :cond_2
    :goto_4
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 106
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    add-int/lit8 v12, v12, 0x1

    .line 108
    iget-object v6, v1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    invoke-interface {v6, v12}, Lcom/amazon/device/utils/det/StatusNotifier;->updateFilesCount(I)V

    const/4 v6, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 103
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 104
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_1
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v14, p1

    .line 111
    :goto_5
    :try_start_a
    sget-object v6, Lcom/amazon/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v9, "IOException while offloading crashes."

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v15, v13

    invoke-virtual {v6, v3, v9, v15}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 118
    :cond_4
    iget-object v0, v1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mMediaScannerHelper:Lcom/amazon/device/utils/det/MediaScannerHelper;

    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactOffloader;->LOGS_DIR:Ljava/io/File;

    invoke-virtual {v0, v5}, Lcom/amazon/device/utils/det/MediaScannerHelper;->scanDirectory(Ljava/io/File;)V

    if-eqz v7, :cond_5

    .line 121
    :goto_6
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 122
    invoke-direct {v1, v11}, Lcom/amazon/device/crashmanager/ArtifactOffloader;->renameFile(Ljava/io/File;)Z

    .line 125
    :cond_5
    iget-object v0, v1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    invoke-interface {v0, v4, v2}, Lcom/amazon/device/utils/det/StatusNotifier;->fireNotification(Ljava/lang/CharSequence;I)V

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v11, v7

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v11, v7

    const/4 v12, 0x0

    .line 115
    :goto_7
    :try_start_b
    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v6, "createOffloaderAndOffload"

    const-string v8, "Exception thrown while offloading crashes."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 118
    iget-object v0, v1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mMediaScannerHelper:Lcom/amazon/device/utils/det/MediaScannerHelper;

    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactOffloader;->LOGS_DIR:Ljava/io/File;

    invoke-virtual {v0, v5}, Lcom/amazon/device/utils/det/MediaScannerHelper;->scanDirectory(Ljava/io/File;)V

    if-eqz v7, :cond_5

    goto :goto_6

    .line 128
    :goto_8
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactOffloader;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Done offloading crashes"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :catchall_3
    move-exception v0

    .line 118
    :goto_9
    iget-object v3, v1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mMediaScannerHelper:Lcom/amazon/device/utils/det/MediaScannerHelper;

    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactOffloader;->LOGS_DIR:Ljava/io/File;

    invoke-virtual {v3, v5}, Lcom/amazon/device/utils/det/MediaScannerHelper;->scanDirectory(Ljava/io/File;)V

    if-eqz v7, :cond_6

    .line 121
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 122
    invoke-direct {v1, v11}, Lcom/amazon/device/crashmanager/ArtifactOffloader;->renameFile(Ljava/io/File;)Z

    .line 125
    :cond_6
    iget-object v3, v1, Lcom/amazon/device/crashmanager/ArtifactOffloader;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    invoke-interface {v3, v4, v2}, Lcom/amazon/device/utils/det/StatusNotifier;->fireNotification(Ljava/lang/CharSequence;I)V

    .line 126
    throw v0
.end method
