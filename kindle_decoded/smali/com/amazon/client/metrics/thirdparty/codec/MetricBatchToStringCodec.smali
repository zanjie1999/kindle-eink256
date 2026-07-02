.class public Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchToStringCodec;
.super Ljava/lang/Object;
.source "MetricBatchToStringCodec.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchCodec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/amazon/client/metrics/thirdparty/MetricBatch;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/CodecException;
        }
    .end annotation

    .line 26
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 28
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/CodecException;

    invoke-direct {v0, p1}, Lcom/amazon/client/metrics/thirdparty/CodecException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
