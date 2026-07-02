.class public Lcom/amazon/whispersync/communication/BlockingResponseHandler;
.super Ljava/lang/Object;
.source "BlockingResponseHandler.java"

# interfaces
.implements Lamazon/whispersync/communication/ResponseHandler;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mDataPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mException:Lamazon/whispersync/communication/RequestFailedException;

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private mResponse:Lorg/apache/http/HttpResponse;

.field private final mResponseAvailable:Ljava/util/concurrent/locks/Condition;

.field private final mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.BlockingResponseHandler"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 41
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mResponseAvailable:Ljava/util/concurrent/locks/Condition;

    .line 50
    iput p1, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mTimeout:I

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mException:Lamazon/whispersync/communication/RequestFailedException;

    return-void
.end method


# virtual methods
.method public onError(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/RequestFailedException;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 116
    :try_start_0
    iput-object p2, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mException:Lamazon/whispersync/communication/RequestFailedException;

    .line 118
    iget-object p1, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mResponseAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object p1, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onResponse(Lamazon/whispersync/communication/identity/EndpointIdentity;Lorg/apache/http/HttpResponse;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lamazon/whispersync/communication/identity/EndpointIdentity;",
            "Lorg/apache/http/HttpResponse;",
            "I",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object p1, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 100
    :try_start_0
    iput-object p2, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mResponse:Lorg/apache/http/HttpResponse;

    .line 101
    iput-object p4, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mDataPoints:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 104
    iget-object p1, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mResponseAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public waitForResponse()Lcom/amazon/whispersync/communication/utils/HttpResponseWithDataPoints;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/RequestFailedException;,
            Lamazon/whispersync/communication/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "currentThread.getId"

    const-string/jumbo v1, "waitForResponse"

    .line 62
    iget-object v2, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mResponse:Lorg/apache/http/HttpResponse;

    if-nez v2, :cond_3

    .line 66
    sget-object v2, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v3, "request sent... waiting..."

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-virtual {v2, v1, v3, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mResponseAvailable:Ljava/util/concurrent/locks/Condition;

    iget v3, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mTimeout:I

    int-to-long v9, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v9, v10, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_0

    .line 73
    sget-object v2, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v5, "timed out waiting for condition"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v9, "mTimeout"

    aput-object v9, v7, v4

    iget v9, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mTimeout:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-virtual {v2, v1, v5, v7}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 78
    :goto_0
    iget-object v5, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mException:Lamazon/whispersync/communication/RequestFailedException;

    if-nez v5, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    new-instance v0, Lamazon/whispersync/communication/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response timeout. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " TimeLimit."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lamazon/whispersync/communication/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    sget-object v2, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v5, "request failed"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    iget-object v0, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mException:Lamazon/whispersync/communication/RequestFailedException;

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v5, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mException:Lamazon/whispersync/communication/RequestFailedException;

    throw v0

    .line 89
    :cond_3
    :goto_1
    new-instance v0, Lcom/amazon/whispersync/communication/utils/HttpResponseWithDataPoints;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mResponse:Lorg/apache/http/HttpResponse;

    iget-object v2, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mDataPoints:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/communication/utils/HttpResponseWithDataPoints;-><init>(Lorg/apache/http/HttpResponse;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v1, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/communication/BlockingResponseHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
