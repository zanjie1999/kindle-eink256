.class public Lcom/amazon/whispersync/client/metrics/transport/OutputStreamMetricsTransport;
.super Ljava/lang/Object;
.source "OutputStreamMetricsTransport.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;
.implements Lcom/amazon/whispersync/client/metrics/transport/TransportStateNotifier;


# static fields
.field private static final TAG:Ljava/lang/String; = "Metrics:OutputStreamMetricsTransport"


# instance fields
.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/transport/OutputStreamMetricsTransport;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/OutputStreamMetricsTransport;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Metrics:OutputStreamMetricsTransport"

    const-string v2, "Unable to close transport."

    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public listenForTransportWarmed(Lcom/amazon/whispersync/client/metrics/transport/TransportStateNotifier$TransportWarmedListener;)V
    .locals 0

    return-void
.end method

.method public transmit([BLcom/amazon/whispersync/client/metrics/MetricEvent;)I
    .locals 1

    .line 42
    :try_start_0
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/OutputStreamMetricsTransport;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 43
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/transport/OutputStreamMetricsTransport;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Metrics:OutputStreamMetricsTransport"

    const-string v0, "Unable to transmit."

    .line 46
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x3

    return p1
.end method
