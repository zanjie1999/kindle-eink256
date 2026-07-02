.class public Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryProtocolBuffersCodec;
.super Ljava/lang/Object;
.source "MetricEntryProtocolBuffersCodec.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryCodec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDataType(Lcom/amazon/client/metrics/thirdparty/DataPointType;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/CodecException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryProtocolBuffersCodec$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$DataPointType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 53
    sget-object p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->CLICKSTREAM:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0

    .line 55
    :cond_0
    new-instance p0, Lcom/amazon/client/metrics/thirdparty/CodecException;

    const-string v0, "Invalid DataPoint type"

    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/CodecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_1
    sget-object p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->DISCRETE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0

    .line 49
    :cond_2
    sget-object p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->TIMER:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0

    .line 47
    :cond_3
    sget-object p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->COUNTER:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0
.end method


# virtual methods
.method public encode(Lcom/amazon/client/metrics/thirdparty/MetricEntry;)Lcom/amazon/client/metrics/thirdparty/codec/EncodedMetricEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/CodecException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;->getDatapoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;->newBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;->getProgram()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->setProgram(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    .line 29
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->setSource(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    .line 30
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->setTimestamp(J)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    .line 32
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;->getDatapoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    .line 33
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->newBuilder()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v2

    .line 34
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setName(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    .line 35
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setValue(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    .line 36
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getSamples()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setSampleSize(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    .line 37
    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getType()Lcom/amazon/client/metrics/thirdparty/DataPointType;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryProtocolBuffersCodec;->getDataType(Lcom/amazon/client/metrics/thirdparty/DataPointType;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setType(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    .line 38
    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->addDataPoint(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/codec/ProtocolBuffersEncodedMetricEntry;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;->build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/codec/ProtocolBuffersEncodedMetricEntry;-><init>(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;)V

    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/CodecException;

    const-string v0, "Metric entry contains no data points"

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/CodecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/CodecException;

    const-string v0, "Metric entry is null"

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/CodecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
