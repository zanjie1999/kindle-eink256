.class public Lcom/amazon/whispersync/client/metrics/codec/MetricEntryToStringCodec;
.super Ljava/lang/Object;
.source "MetricEntryToStringCodec.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/codec/MetricEntryCodec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/amazon/whispersync/client/metrics/MetricEntry;)Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/MetricEntry;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
