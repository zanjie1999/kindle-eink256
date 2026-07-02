.class public Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchProtocolBuffersCodec;
.super Ljava/lang/Object;
.source "MetricBatchProtocolBuffersCodec.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchCodec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/amazon/client/metrics/thirdparty/MetricBatch;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/CodecException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getBatchSizeInBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 27
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->setDeviceSerialNumber(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    .line 31
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->setDeviceType(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getDeviceInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 38
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->setKey(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->setValue(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->addMetadata(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 43
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getMetricEntryCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 45
    invoke-virtual {p1, v1}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getMetricEntry(I)Lcom/amazon/client/metrics/thirdparty/codec/EncodedMetricEntry;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/codec/EncodedMetricEntry;->getEncodedMetricEntry()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;

    .line 44
    invoke-virtual {v0, v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->addMetricEntry(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    if-eqz p1, :cond_5

    .line 52
    array-length v0, p1

    if-eqz v0, :cond_4

    return-object p1

    .line 53
    :cond_4
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/CodecException;

    const-string/jumbo v0, "serialized batch is empty"

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/CodecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_5
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/CodecException;

    const-string/jumbo v0, "serialized batch is null"

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/CodecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_6
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/CodecException;

    const-string v0, "MetricEntryBatch is empty"

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/CodecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_7
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/CodecException;

    const-string v0, "MetricEntryBatch is null"

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/CodecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
