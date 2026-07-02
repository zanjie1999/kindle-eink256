.class public Lcom/amazon/whispersync/client/metrics/MetricBatch;
.super Ljava/lang/Object;
.source "MetricBatch.java"


# instance fields
.field private mBatchSizeInBytes:J

.field private final mDeviceInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceSerialNumber:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private final mSerializedMetricEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mSerializedMetricEntryList:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mSerializedMetricEntryList:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceInfoMap:Ljava/util/Map;

    .line 39
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->putMetricsDeviceInfo(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addEntry(Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;)V
    .locals 4

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mSerializedMetricEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mBatchSizeInBytes:J

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;->getEncodedSize()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mBatchSizeInBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 135
    :cond_1
    const-class v2, Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 139
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/client/metrics/MetricBatch;

    .line 140
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getMetricEntryCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getMetricEntryCount()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x0

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getMetricEntryCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 144
    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getMetricEntry(I)Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getMetricEntry(I)Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public declared-synchronized getBatchSizeInBytes()J
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mBatchSizeInBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceInfoMap()Ljava/util/Map;
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

    .line 106
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMetricEntry(I)Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mSerializedMetricEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMetricEntryCount()I
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mSerializedMetricEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getMetricEntryCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getMetricEntry(I)Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public putMetricsDeviceInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 56
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceInfoMap:Ljava/util/Map;

    const-string v0, "deviceId"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceSerialNumber:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceInfoMap:Ljava/util/Map;

    const-string v0, "deviceType"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceType:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceSerialNumber:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device Info Map missing device ID"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device Info Map is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mDeviceInfoMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-wide v2, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mBatchSizeInBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 166
    :goto_0
    iget-object v3, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mSerializedMetricEntryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/amazon/whispersync/client/metrics/MetricBatch;->mSerializedMetricEntryList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
