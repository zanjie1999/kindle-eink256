.class public final Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "ManifestDownloadJob.kt"

# interfaces
.implements Lcom/amazon/kindle/webservices/HasConnectionDetails;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeliveryManifestResponseHandler"
.end annotation


# instance fields
.field private connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

.field private final manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

.field private final networkService:Lcom/amazon/kindle/network/INetworkService;

.field private final onResponse:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/webservices/HttpResponseProperties;",
            "Lcom/amazon/kindle/webservices/IManifestWebRequest;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onResponseStart:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private responseReceived:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webservices/IManifestWebRequest;Lcom/amazon/kindle/network/INetworkService;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/webservices/IManifestWebRequest;",
            "Lcom/amazon/kindle/network/INetworkService;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/amazon/kindle/webservices/HttpResponseProperties;",
            "-",
            "Lcom/amazon/kindle/webservices/IManifestWebRequest;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "manifestRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResponseStart"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResponse"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->networkService:Lcom/amazon/kindle/network/INetworkService;

    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->onResponseStart:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->onResponse:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public getConnectionDetails()Lcom/amazon/kindle/webservices/ConnectionDetails;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    return-object v0
.end method

.method public onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V
    .locals 3

    const-string v0, "responseProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V

    .line 108
    iget-boolean v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->responseReceived:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->responseReceived:Z

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->onResponseStart:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const-string v0, "X-ADP-Call-After"

    .line 113
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {v0}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->parseCallAfterValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 115
    sget-object v2, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->Companion:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;->getXAdpCallAfter()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    const-string v0, "X-ADP-Displayable-Error"

    .line 117
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setShouldDisplayCDEError(Z)V

    :cond_2
    const-string v0, "X-ADP-Error-Code"

    .line 120
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v1

    const-string v2, "manifestRequest.errorDescriber"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorCode(Ljava/lang/String;)V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getContentLength()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->setContentSize(J)V

    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->setStreamingStartTime(J)V

    .line 132
    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 136
    :cond_0
    sget-object v1, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->Companion:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input stream received for bookId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 p1, 0x2000

    instance-of v1, v2, Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    check-cast v2, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v1

    :goto_0
    const/4 p1, 0x0

    .line 139
    :try_start_0
    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 159
    iget-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->onResponse:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-interface {p1, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 141
    :try_start_1
    sget-object v1, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->Companion:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input stream for delivery manifest of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " was interrupted"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_6

    .line 146
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_5

    .line 147
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->networkService:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 148
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_2

    .line 150
    :cond_4
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_2

    .line 153
    :cond_5
    throw p1

    .line 144
    :cond_6
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 155
    :goto_2
    new-instance v0, Lcom/amazon/kindle/webservices/ResponseHandlerException;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/webservices/ResponseHandlerException;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :goto_3
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setConnectionDetails(Lcom/amazon/kindle/webservices/ConnectionDetails;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    return-void
.end method
