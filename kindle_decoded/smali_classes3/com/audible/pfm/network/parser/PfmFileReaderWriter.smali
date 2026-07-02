.class public final Lcom/audible/pfm/network/parser/PfmFileReaderWriter;
.super Ljava/lang/Object;
.source "PfmFileReaderWriter.java"

# interfaces
.implements Lcom/audible/pfm/network/parser/IPfmReaderWriter;


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private pfmFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    .line 43
    iput-object p1, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    return-void
.end method

.method private getDevicePlatformConfig(Lcom/audible/pfm/domain/HushpuppyEndpointConfig;Ljava/lang/String;)Lcom/audible/pfm/domain/DevicePlatformConfig;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 139
    invoke-virtual {p1}, Lcom/audible/pfm/domain/HushpuppyEndpointConfig;->getDevicePlatformConfig()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 140
    invoke-virtual {p1}, Lcom/audible/pfm/domain/HushpuppyEndpointConfig;->getDevicePlatformConfig()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/audible/pfm/domain/HushpuppyEndpointConfig;->getDevicePlatformConfig()Ljava/util/List;

    move-result-object p1

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/pfm/domain/DevicePlatformConfig;

    .line 147
    invoke-virtual {v2}, Lcom/audible/pfm/domain/DevicePlatformConfig;->getDevicePlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {v2}, Lcom/audible/pfm/domain/DevicePlatformConfig;->getDevicePlatform()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 155
    sget-object p1, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find devicePlatformConfig for DEFAULT or device platform : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v0

    .line 158
    :cond_4
    iget-object p1, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    .line 159
    sget-object v0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting last modified millis for devicePlatformConfig to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, p1, p2}, Lcom/audible/pfm/domain/DevicePlatformConfig;->setLastModifiedFileTimeMillis(J)V

    return-object v1

    .line 141
    :cond_5
    :goto_2
    sget-object p1, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "devicePlatformConfig is missing, returning null"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public read(Ljava/lang/String;)Lcom/audible/pfm/domain/DevicePlatformConfig;
    .locals 4

    .line 86
    sget-object v0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Reading from pfm file"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    sget-object p1, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pfm file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v1

    .line 94
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/audible/pfm/domain/HushpuppyEndpointConfig;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/pfm/domain/HushpuppyEndpointConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->getDevicePlatformConfig(Lcom/audible/pfm/domain/HushpuppyEndpointConfig;Ljava/lang/String;)Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 96
    sget-object v0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read the pfm file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v2, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;->PfmModule_FailedToReadJsonFile_:Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->Occurred:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {v0, v2, p1, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-object v1
.end method

.method public updateTimestamp(Lcom/audible/pfm/domain/DevicePlatformConfig;)V
    .locals 5

    .line 112
    sget-object v0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Updating last modified timestamp in Pfm File"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    sget-object p1, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pfm file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 117
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    iget-object v2, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;->PfmModule_FailedToUpdateFileTimestamp:Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    sget-object v4, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->Occurred:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {v2, v3, v4}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    :cond_1
    if-nez p1, :cond_2

    .line 124
    sget-object p1, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "devicePlatformConfig is null"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 127
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/audible/pfm/domain/DevicePlatformConfig;->setLastModifiedFileTimeMillis(J)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing to pfm file at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Directory %s created"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 66
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/audible/pfm/network/parser/PfmFileReaderWriter;->pfmFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    invoke-static {p1, v1}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 70
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;->PfmModule_FailedToWriteJsonFile_:Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->Occurred:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {v1, v2, v3, v4}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 71
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    :goto_1
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 74
    throw p1
.end method
