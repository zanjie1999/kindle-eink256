.class Lcom/amazon/kindle/services/download/DownloadUtils$AssetDetailsForAnalytics;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/download/DownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AssetDetailsForAnalytics"
.end annotation


# instance fields
.field private final transient headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;)V
    .locals 4

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/services/download/DownloadUtils$AssetDetailsForAnalytics;->responseHeaders:Ljava/util/Map;

    const-string v0, "X-ADP-Host"

    const-string v1, "x-amz-id-2"

    const-string v2, "x-amzn-RequestId"

    .line 248
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/download/DownloadUtils$AssetDetailsForAnalytics;->headers:Ljava/util/List;

    .line 255
    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadUtils$AssetDetailsForAnalytics;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v3, p0, Lcom/amazon/kindle/services/download/DownloadUtils$AssetDetailsForAnalytics;->responseHeaders:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
