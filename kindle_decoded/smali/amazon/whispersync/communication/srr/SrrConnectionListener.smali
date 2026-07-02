.class public Lamazon/whispersync/communication/srr/SrrConnectionListener;
.super Ljava/lang/Object;
.source "SrrConnectionListener.java"

# interfaces
.implements Lamazon/whispersync/communication/connection/Connection$ConnectionListener;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mCreationTime:J

.field private final mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

.field private final mOnOpenedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

.field private final mTimeoutInMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.SrrConnectionListener"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/ResponseHandler;ILcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mCreationTime:J

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mOnOpenedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    iput-object p1, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 62
    iput-object p2, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    .line 63
    iput p3, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mTimeoutInMillis:I

    .line 64
    iput-object p4, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    return-void
.end method


# virtual methods
.method public onClosed(Lamazon/whispersync/communication/connection/Connection;Lamazon/whispersync/communication/connection/ConnectionClosedDetails;)V
    .locals 5

    const-string/jumbo v0, "onClosed"

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 158
    :try_start_0
    sget-object v2, Lamazon/whispersync/communication/srr/SrrConnectionListener;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v3, "releasing connection"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/Connection;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    sget-object v2, Lamazon/whispersync/communication/srr/SrrConnectionListener;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string/jumbo p1, "unexpected exception while releasing connection"

    invoke-virtual {v2, v0, p1, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 166
    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;->getDetailsCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    new-instance p1, Lamazon/whispersync/communication/ConnectionInterruptedException;

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/ConnectionInterruptedException;-><init>(Lamazon/whispersync/communication/connection/ConnectionClosedDetails;)V

    :cond_1
    if-nez p1, :cond_2

    .line 172
    iget-object p2, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mOnOpenedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    .line 175
    new-instance p2, Lamazon/whispersync/communication/RequestFailedException;

    invoke-direct {p2, p1}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/Exception;)V

    goto :goto_1

    .line 177
    :cond_3
    new-instance p2, Lamazon/whispersync/communication/RequestFailedException;

    const-string p1, "Connection closed even before onOpened was called"

    invoke-direct {p2, p1}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;)V

    .line 180
    :goto_1
    iget-object p1, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    iget-object v0, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {p1, v0, p2}, Lamazon/whispersync/communication/ResponseHandler;->onError(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/RequestFailedException;)V

    :cond_4
    return-void
.end method

.method public onOpened(Lamazon/whispersync/communication/connection/Connection;)V
    .locals 12

    const-string v0, "exception"

    .line 78
    sget-object v1, Lamazon/whispersync/communication/srr/SrrConnectionListener;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "currentThread.getId"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const-string/jumbo v6, "onOpened"

    const-string v8, "connection opened; about to send request"

    invoke-virtual {v1, v6, v8, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mOnOpenedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    sget-object p1, Lamazon/whispersync/communication/srr/SrrConnectionListener;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v4, v0, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "seems like onOpened was already called for this instance; not firing a duplicate request"

    invoke-virtual {p1, v6, v1, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mCreationTime:J

    sub-long/2addr v8, v10

    long-to-int v1, v8

    .line 89
    iget v3, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mTimeoutInMillis:I

    sub-int/2addr v3, v1

    const/4 v8, 0x3

    if-ge v3, v7, :cond_1

    .line 93
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, "mCreationTime"

    aput-object v4, v3, v2

    iget-wide v4, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mCreationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v8

    const/4 v2, 0x4

    const-string v4, "connectionEstablishmentTime"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x6

    const-string/jumbo v2, "mTimeoutInMillis"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    iget v2, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mTimeoutInMillis:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string/jumbo v1, "no time left to make the actual request"

    invoke-direct {v0, v6, v1, v3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    sget-object v1, Lamazon/whispersync/communication/srr/SrrConnectionListener;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V

    .line 101
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/Connection;->release()V

    .line 103
    iget-object p1, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    iget-object v1, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v2, Lamazon/whispersync/communication/RequestFailedException;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v2}, Lamazon/whispersync/communication/ResponseHandler;->onError(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/RequestFailedException;)V

    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    if-nez v1, :cond_2

    .line 109
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 111
    :cond_2
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 113
    iget-object v3, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 117
    new-instance v1, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;

    iget-object v3, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    invoke-direct {v1, p1, v3}, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;-><init>(Lamazon/whispersync/communication/connection/Connection;Lamazon/whispersync/communication/ResponseHandler;)V

    .line 120
    :try_start_0
    iget-object v3, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v9, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {p1, v3, v1, v9}, Lamazon/whispersync/communication/connection/Connection;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/ResponseHandler;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    :try_end_0
    .catch Lamazon/whispersync/communication/connection/IllegalConnectionStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lamazon/whispersync/communication/connection/TransmissionFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lamazon/whispersync/communication/MissingCredentialsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 129
    sget-object v1, Lamazon/whispersync/communication/srr/SrrConnectionListener;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p1, v3, v2

    invoke-virtual {v1, v6, v0, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    iget-object v1, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v2, Lamazon/whispersync/communication/RequestFailedException;

    const-string v3, "No Amazon account on the device"

    invoke-direct {v2, v3, p1}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v0, v1, v2}, Lamazon/whispersync/communication/ResponseHandler;->onError(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/RequestFailedException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 126
    sget-object v1, Lamazon/whispersync/communication/srr/SrrConnectionListener;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p1, v3, v2

    invoke-virtual {v1, v6, v0, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    iget-object v1, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v2, Lamazon/whispersync/communication/RequestFailedException;

    const-string v3, "Cannot send data"

    invoke-direct {v2, v3, p1}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v0, v1, v2}, Lamazon/whispersync/communication/ResponseHandler;->onError(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/RequestFailedException;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 122
    sget-object v1, Lamazon/whispersync/communication/srr/SrrConnectionListener;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p1, v3, v2

    invoke-virtual {v1, v6, v0, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    iget-object v1, p0, Lamazon/whispersync/communication/srr/SrrConnectionListener;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v2, Lamazon/whispersync/communication/RequestFailedException;

    const-string v3, "Illegal connection state when making http request"

    invoke-direct {v2, v3, p1}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v0, v1, v2}, Lamazon/whispersync/communication/ResponseHandler;->onError(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/RequestFailedException;)V

    :goto_0
    return-void
.end method
