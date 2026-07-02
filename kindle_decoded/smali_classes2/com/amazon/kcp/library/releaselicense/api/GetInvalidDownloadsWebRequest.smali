.class public final Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;
.super Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest;
.source "GetInvalidDownloadsWebRequest.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final callBack:Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;

.field private final responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;Lcom/amazon/kindle/webservices/ResultResponseHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;",
            "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;->callBack:Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;

    iput-object p4, p0, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;

    .line 29
    const-class p1, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Utils.getTag(GetInvalidD\u2026dsWebRequest::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;->TAG:Ljava/lang/String;

    .line 33
    sget-object p1, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->MEDIUM:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;Lcom/amazon/kindle/webservices/ResultResponseHandler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 26
    new-instance p4, Lcom/amazon/kcp/library/releaselicense/api/InvalidDownloadsResponseHandler;

    invoke-direct {p4}, Lcom/amazon/kcp/library/releaselicense/api/InvalidDownloadsResponseHandler;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;Lcom/amazon/kindle/webservices/ResultResponseHandler;)V

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

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;

    return-object v0
.end method

.method public onRequestComplete()Z
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/ResultResponseHandler;

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 46
    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check Invalid Downloads API request completed with response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;->callBack:Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;

    new-instance v2, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4, v3}, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;-><init>(Ljava/util/List;ZI)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;)V

    return v4

    .line 49
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;->callBack:Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;

    new-instance v2, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;-><init>(Ljava/util/List;ZI)V

    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;)V

    return v4
.end method
