.class Lcom/amazon/weblab/mobile/repository/FileStorage;
.super Ljava/lang/Object;
.source "FileStorage.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/repository/IStorage;


# static fields
.field private static final UTF8_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private mDirectory:Ljava/io/File;

.field protected mFile:Ljava/io/File;

.field protected final mWeblabClientIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 27
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/FileStorage;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "directory cannot be null or empty"

    if-eqz p1, :cond_4

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mDirectory:Ljava/io/File;

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iput-object p2, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mWeblabClientIdentifier:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mFile:Ljava/io/File;

    return-void

    .line 55
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application needs a read and write access to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 51
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a directory"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 47
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 43
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readBackupFile()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 68
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x2000

    :try_start_1
    new-array v3, v1, [B

    :goto_0
    const/4 v4, 0x0

    .line 74
    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 75
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/amazon/weblab/mobile/repository/FileStorage;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v4, v5, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 83
    :cond_1
    throw v0
.end method

.method private writeBackupFile(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    :try_start_1
    sget-object v0, Lcom/amazon/weblab/mobile/repository/FileStorage;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 93
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 94
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mFile:Ljava/io/File;

    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    return-void

    .line 95
    :cond_0
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot rename the temporary file to backup file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 102
    :cond_1
    throw p1
.end method


# virtual methods
.method public hasBackup()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public readBackup()Lcom/amazon/weblab/mobile/repository/StorageEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const-string v0, "DefaultParserLatency"

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    .line 138
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/repository/FileStorage;->hasBackup()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/amazon/weblab/mobile/repository/FileStorage;->readBackupFile()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    :try_start_0
    new-instance v4, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;

    invoke-direct {v4, v3}, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v4}, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->getSessionInfo()Lcom/amazon/weblab/mobile/model/SessionInfo;

    move-result-object v3

    .line 144
    iget-object v5, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->getTreatmentAssignments(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 145
    invoke-virtual {v4}, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->getApplicationVersion()Ljava/lang/String;

    move-result-object v4

    .line 146
    new-instance v6, Lcom/amazon/weblab/mobile/repository/StorageEntity;

    invoke-direct {v6, v4, v3, v5}, Lcom/amazon/weblab/mobile/repository/StorageEntity;-><init>(Ljava/lang/String;Lcom/amazon/weblab/mobile/model/SessionInfo;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    sub-double/2addr v3, v1

    .line 152
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v0, v3, v4, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    return-object v6

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 149
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Stored data is in an unexpected format or it is corrupted"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double/2addr v4, v1

    .line 152
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/FileStorage;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v0, v4, v5, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    .line 153
    throw v3

    .line 139
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public writeBackup(Lcom/amazon/weblab/mobile/repository/StorageEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    new-instance v0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;

    invoke-direct {v0}, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/repository/StorageEntity;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->putApplicationVersion(Ljava/lang/String;)Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;

    .line 122
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/repository/StorageEntity;->getSessionInfo()Lcom/amazon/weblab/mobile/model/SessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->putSessionInfo(Lcom/amazon/weblab/mobile/model/SessionInfo;)Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/repository/StorageEntity;->getTreatments()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->putTreatmentAssignments(Ljava/util/Collection;)Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;

    .line 123
    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/repository/FileStorage;->writeBackupFile(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Data could not be parsed into a JSON String"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "data can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
