.class public Lcom/amazon/whispersync/communication/ResponseHandlerProxy;
.super Lcom/amazon/whispersync/communication/IResponseHandler$Stub;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mHttpRequestResponseConverter:Lcom/amazon/whispersync/communication/HttpRequestResponseConverter;

.field private mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.ResponseHandlerProxy"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/ResponseHandlerProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lamazon/whispersync/communication/ResponseHandler;Lcom/amazon/whispersync/communication/HttpRequestResponseConverter;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/communication/IResponseHandler$Stub;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ResponseHandlerProxy;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    iput-object p2, p0, Lcom/amazon/whispersync/communication/ResponseHandlerProxy;->mHttpRequestResponseConverter:Lcom/amazon/whispersync/communication/HttpRequestResponseConverter;

    return-void
.end method


# virtual methods
.method public getClientHandler()Lamazon/whispersync/communication/ResponseHandler;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ResponseHandlerProxy;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    return-object v0
.end method

.method public onResponse(Lcom/amazon/whispersync/communication/MessageEnvelope;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/communication/MessageEnvelope;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ResponseHandlerProxy;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    iget-object v3, p0, Lcom/amazon/whispersync/communication/ResponseHandlerProxy;->mHttpRequestResponseConverter:Lcom/amazon/whispersync/communication/HttpRequestResponseConverter;

    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/MessageEnvelope;->toMessage()Lamazon/whispersync/communication/Message;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/amazon/whispersync/communication/HttpRequestResponseConverter;->convertMessageToResponse(Lamazon/whispersync/communication/Message;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-static {p2}, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->convertFromEnvelopes(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v2, v1, p1, v0, p2}, Lamazon/whispersync/communication/ResponseHandler;->onResponse(Lamazon/whispersync/communication/identity/EndpointIdentity;Lorg/apache/http/HttpResponse;ILjava/util/List;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/communication/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v1, p0, Lcom/amazon/whispersync/communication/ResponseHandlerProxy;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v2, "CommunicationBaseException when handling response"

    invoke-direct {p2, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iput-object v1, p0, Lcom/amazon/whispersync/communication/ResponseHandlerProxy;->mResponseHandler:Lamazon/whispersync/communication/ResponseHandler;

    throw p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    sget-object p2, Lcom/amazon/whispersync/communication/ResponseHandlerProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "onResponse"

    const-string v2, "Exception occurred!"

    invoke-virtual {p2, v0, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
