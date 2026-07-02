.class public final Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;
.super Ljava/lang/Object;
.source "ErrorDomainInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/webservices/ErrorDomainInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FACTORY"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;-><init>()V

    return-void
.end method

.method private final downloadRequestOperationFrom(Lcom/amazon/kindle/services/download/IBookAsset;)Lcom/amazon/kindle/webservices/DownloadRequestOperation;
    .locals 1

    .line 39
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object p1

    .line 40
    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/amazon/kindle/webservices/DownloadRequestOperation;->VOUCHER:Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    goto :goto_1

    .line 41
    :cond_0
    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->ANNOTATION_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->PAGE_NUMBER_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne p1, v0, :cond_2

    :goto_0
    sget-object p1, Lcom/amazon/kindle/webservices/DownloadRequestOperation;->SIDECAR:Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    goto :goto_1

    .line 42
    :cond_2
    sget-object p1, Lcom/amazon/kindle/webservices/DownloadRequestOperation;->ASSET:Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    :goto_1
    return-object p1
.end method

.method private final httpStatusCodeFrom(Lcom/amazon/kindle/webservices/IResponseHandler;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Lcom/amazon/kindle/webservices/ErrorDomainInfoKt;->access$getTAG$p()Ljava/lang/String;

    const/4 p1, -0x1

    return p1

    .line 60
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpStatusCode()I

    move-result p1

    return p1
.end method

.method private final requestHostUrlFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 48
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "URI(requestUrl).host"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    invoke-static {}, Lcom/amazon/kindle/webservices/ErrorDomainInfoKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "request url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " violates RFC 2396"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "None"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final build(Lcom/amazon/kindle/services/download/IDownloadRequest;)Lcom/amazon/kindle/webservices/ErrorDomainInfo;
    .locals 4

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "request.url"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;->requestHostUrlFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v2

    const-string/jumbo v3, "request.bookAsset"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;->downloadRequestOperationFrom(Lcom/amazon/kindle/services/download/IBookAsset;)Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    move-result-object v2

    .line 35
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object p1

    const-string/jumbo v3, "request.responseHandler"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;->httpStatusCodeFrom(Lcom/amazon/kindle/webservices/IResponseHandler;)I

    move-result p1

    .line 33
    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/webservices/ErrorDomainInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/webservices/DownloadRequestOperation;I)V

    return-object v0
.end method
