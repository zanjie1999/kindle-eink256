.class public Lcom/amazon/client/metrics/thirdparty/transport/OutputStreamMetricsTransport;
.super Ljava/lang/Object;
.source "OutputStreamMetricsTransport.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;
.implements Lcom/amazon/client/metrics/thirdparty/transport/TransportStateNotifier;


# static fields
.field private static final TAG:Ljava/lang/String; = "Metrics:OutputStreamMetricsTransport"


# instance fields
.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/OutputStreamMetricsTransport;->mOutputStream:Ljava/io/OutputStream;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The OutputStream may not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public listenForTransportWarmed(Lcom/amazon/client/metrics/thirdparty/transport/TransportStateNotifier$TransportWarmedListener;)V
    .locals 0

    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/OutputStreamMetricsTransport;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Metrics:OutputStreamMetricsTransport"

    const-string v2, "Unable to shutdown transport."

    .line 77
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public transmit([B)Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;
    .locals 2

    if-eqz p1, :cond_1

    .line 48
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/OutputStreamMetricsTransport;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 53
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/OutputStreamMetricsTransport;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 54
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Metrics:OutputStreamMetricsTransport"

    const-string v1, "Unable to transmit."

    .line 56
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(ILjava/lang/Exception;)V

    return-object v0

    .line 49
    :cond_1
    :goto_0
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(I)V

    return-object p1
.end method
