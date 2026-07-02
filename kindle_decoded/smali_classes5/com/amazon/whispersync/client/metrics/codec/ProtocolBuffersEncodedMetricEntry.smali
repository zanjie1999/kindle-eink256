.class public Lcom/amazon/whispersync/client/metrics/codec/ProtocolBuffersEncodedMetricEntry;
.super Ljava/lang/Object;
.source "ProtocolBuffersEncodedMetricEntry.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;


# instance fields
.field private mMetricEntryMessage:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/ProtocolBuffersEncodedMetricEntry;->mMetricEntryMessage:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MetricEntryMessage is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 39
    :cond_1
    const-class v1, Lcom/amazon/whispersync/client/metrics/codec/ProtocolBuffersEncodedMetricEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 42
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/client/metrics/codec/ProtocolBuffersEncodedMetricEntry;

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/ProtocolBuffersEncodedMetricEntry;->mMetricEntryMessage:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/codec/ProtocolBuffersEncodedMetricEntry;->getEncodedMetricEntry()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEncodedMetricEntry()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/ProtocolBuffersEncodedMetricEntry;->mMetricEntryMessage:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    return-object v0
.end method

.method public bridge synthetic getEncodedMetricEntry()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/ProtocolBuffersEncodedMetricEntry;->getEncodedMetricEntry()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedSize()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/ProtocolBuffersEncodedMetricEntry;->mMetricEntryMessage:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/ProtocolBuffersEncodedMetricEntry;->mMetricEntryMessage:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/ProtocolBuffersEncodedMetricEntry;->mMetricEntryMessage:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
