.class public interface abstract Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessageOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MetricEntryMessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getDataPoint(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;
.end method

.method public abstract getDataPointCount()I
.end method

.method public abstract getDataPointList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataPointOrBuilder(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessageOrBuilder;
.end method

.method public abstract getDataPointOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessageOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProgram()Ljava/lang/String;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract hasProgram()Z
.end method

.method public abstract hasSource()Z
.end method

.method public abstract hasTimestamp()Z
.end method
