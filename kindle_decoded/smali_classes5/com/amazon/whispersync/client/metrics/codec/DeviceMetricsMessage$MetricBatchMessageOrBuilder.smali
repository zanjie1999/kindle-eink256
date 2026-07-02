.class public interface abstract Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessageOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MetricBatchMessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getDeviceSerialNumber()Ljava/lang/String;
.end method

.method public abstract getDeviceType()Ljava/lang/String;
.end method

.method public abstract getMetadata(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
.end method

.method public abstract getMetadataCount()I
.end method

.method public abstract getMetadataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetadataOrBuilder(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValueOrBuilder;
.end method

.method public abstract getMetadataOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValueOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetricEntry(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;
.end method

.method public abstract getMetricEntryCount()I
.end method

.method public abstract getMetricEntryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetricEntryOrBuilder(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessageOrBuilder;
.end method

.method public abstract getMetricEntryOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessageOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract hasDeviceSerialNumber()Z
.end method

.method public abstract hasDeviceType()Z
.end method

.method public abstract hasTag()Z
.end method
