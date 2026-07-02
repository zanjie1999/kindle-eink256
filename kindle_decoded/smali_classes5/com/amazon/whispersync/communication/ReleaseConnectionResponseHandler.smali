.class public Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;
.super Ljava/lang/Object;
.source "ReleaseConnectionResponseHandler.java"

# interfaces
.implements Lamazon/whispersync/communication/ResponseHandler;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mConnection:Lamazon/whispersync/communication/connection/Connection;

.field private mDecoratedResponseHandler:Lamazon/whispersync/communication/ResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.ReleaseConnectionResponseHandler"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lamazon/whispersync/communication/connection/Connection;Lamazon/whispersync/communication/ResponseHandler;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 46
    iput-object p1, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mConnection:Lamazon/whispersync/communication/connection/Connection;

    .line 47
    iput-object p2, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mDecoratedResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Decorated ResponseHandler can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized releaseConnection()V
    .locals 6

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mConnection:Lamazon/whispersync/communication/connection/Connection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v2, "releaseConnection"

    const-string/jumbo v3, "releasing"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "mConnection"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mConnection:Lamazon/whispersync/communication/connection/Connection;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mConnection:Lamazon/whispersync/communication/connection/Connection;

    invoke-interface {v0}, Lamazon/whispersync/communication/connection/Connection;->release()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mConnection:Lamazon/whispersync/communication/connection/Connection;

    goto :goto_0

    .line 89
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v2, "releaseConnection"

    const-string v3, "connection is already released"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onError(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/RequestFailedException;)V
    .locals 2

    const/4 v0, 0x0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mDecoratedResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mDecoratedResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    invoke-interface {v1, p1, p2}, Lamazon/whispersync/communication/ResponseHandler;->onError(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/RequestFailedException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->releaseConnection()V

    .line 79
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mDecoratedResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    return-void

    .line 73
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse/onError has already been invoked for the ResponseHandler:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 78
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->releaseConnection()V

    .line 79
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mDecoratedResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    throw p1
.end method

.method public onResponse(Lamazon/whispersync/communication/identity/EndpointIdentity;Lorg/apache/http/HttpResponse;ILjava/util/List;)V
    .locals 2
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

    const/4 v0, 0x0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mDecoratedResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mDecoratedResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    invoke-interface {v1, p1, p2, p3, p4}, Lamazon/whispersync/communication/ResponseHandler;->onResponse(Lamazon/whispersync/communication/identity/EndpointIdentity;Lorg/apache/http/HttpResponse;ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->releaseConnection()V

    .line 63
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mDecoratedResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    return-void

    .line 57
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onResponse/onError has already been invoked for the ResponseHandler:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 62
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->releaseConnection()V

    .line 63
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ReleaseConnectionResponseHandler;->mDecoratedResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    throw p1
.end method
