.class public Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryToStringCodec;
.super Ljava/lang/Object;
.source "MetricEntryToStringCodec.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryCodec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/amazon/client/metrics/thirdparty/MetricEntry;)Lcom/amazon/client/metrics/thirdparty/codec/EncodedMetricEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/CodecException;
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/StringEncodedMetricEntry;

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/StringEncodedMetricEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
