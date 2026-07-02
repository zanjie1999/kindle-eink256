.class public final Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;
.super Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest;
.source "GetDeviceConsumptionsForAsinWebRequest.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final callBack:Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;

.field private final responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
            "Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;Lcom/amazon/kindle/webservices/ResultResponseHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;",
            "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
            "Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentMetadata"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "callBack"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "responseHandler"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->callBack:Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;

    iput-object p5, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;

    .line 40
    const-class p1, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Utils.getTag(GetDeviceCo\u2026inWebRequest::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;Lcom/amazon/kindle/webservices/ResultResponseHandler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 37
    new-instance p5, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;

    invoke-virtual {p3}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object p6

    const-string p7, "contentMetadata.asin"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p5, p6}, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;-><init>(Ljava/lang/String;)V

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;Lcom/amazon/kindle/webservices/ResultResponseHandler;)V

    return-void
.end method

.method private final handleRequestFailed(ILcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "Handling failed request with errorCode: "

    const/16 v3, 0x193

    if-ne p1, v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v2, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    const-string v3, "FORBIDDEN"

    invoke-direct {v2, v1, v0, v3, p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;-><init>(Ljava/util/Map;ZLjava/lang/String;I)V

    invoke-interface {p2, v2}, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x198

    if-ne p1, v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v2, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    const-string v3, "TIME_OUT"

    invoke-direct {v2, v1, v0, v3, p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;-><init>(Ljava/util/Map;ZLjava/lang/String;I)V

    invoke-interface {p2, v2}, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;)V

    goto :goto_1

    :cond_1
    const/16 v3, 0x1ff

    const/16 v4, 0x1f4

    if-le v4, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt v3, p1, :cond_3

    .line 87
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v2, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    const-string v3, "SERVER_ERROR"

    invoke-direct {v2, v1, v0, v3, p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;-><init>(Ljava/util/Map;ZLjava/lang/String;I)V

    invoke-interface {p2, v2}, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;)V

    goto :goto_1

    .line 92
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v2, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    const-string v3, "UNKNOWN"

    invoke-direct {v2, v1, v0, v3, p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;-><init>(Ljava/util/Map;ZLjava/lang/String;I)V

    invoke-interface {p2, v2}, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;

    return-object v0
.end method

.method public onRequestComplete()Z
    .locals 6

    .line 49
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DebugSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "ListConsumptionsDebugResponseError"

    .line 50
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v0

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;

    invoke-virtual {v2}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    .line 56
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List Devices request completed with response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->callBack:Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;)V

    const/4 v0, 0x1

    return v0

    .line 59
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->callBack:Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;

    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;->handleRequestFailed(ILcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;)V

    return v1
.end method
