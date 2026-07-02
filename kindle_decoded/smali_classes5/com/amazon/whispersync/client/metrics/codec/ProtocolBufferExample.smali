.class public Lcom/amazon/whispersync/client/metrics/codec/ProtocolBufferExample;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeSerializedMetrics()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/ProtocolBufferExample;->generateEncodedMetrics()[B

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->parseFrom([B)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceSerialNumber()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getDeviceType()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetricEntryCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetricEntry(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetadataCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->getMetadata(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    :try_end_0
    .catch Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0
.end method

.method public static generateEncodedMetrics()[B
    .locals 6

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v0

    const-string v1, "CounterName"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setName(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v0

    const-string v1, "100"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setValue(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setSampleSize(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->COUNTER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setType(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->build()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    const-string/jumbo v2, "testTimerName"

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setName(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    const-string v2, "150"

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setValue(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setSampleSize(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    sget-object v2, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->TIMER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setType(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->build()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    move-result-object v2

    const-string v3, "ProgramName"

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->setProgram(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    move-result-object v3

    const-string v4, "SourceName"

    invoke-virtual {v3, v4}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->setSource(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->setTimestamp(J)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->addDataPoint(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->addDataPoint(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    const-string v3, "REMOTE_ADDR"

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setName(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    const-string v3, "localhost"

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setValue(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setSampleSize(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    sget-object v4, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->CLICKSTREAM:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    invoke-virtual {v1, v4}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setType(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->build()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->addDataPoint(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    const-string/jumbo v4, "page-type"

    invoke-virtual {v1, v4}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setName(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    const-string/jumbo v4, "some-device"

    invoke-virtual {v1, v4}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setValue(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setSampleSize(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    sget-object v3, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->CLICKSTREAM:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setType(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;->build()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->addDataPoint(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    const-string/jumbo v1, "testDSN"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->setDeviceSerialNumber(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v1

    const-string v3, "TEST"

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->setDeviceType(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v1

    const-string/jumbo v3, "tag"

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->setTag(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->newBuilder()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v1

    const-string v3, "key"

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->setKey(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v1

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->setValue(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->build()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->addMetadata(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->build()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->addMetricEntry(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->build()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
