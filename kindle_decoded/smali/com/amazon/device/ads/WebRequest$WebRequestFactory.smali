.class public Lcom/amazon/device/ads/WebRequest$WebRequestFactory;
.super Ljava/lang/Object;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/WebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebRequestFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createJSONGetWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 3

    .line 995
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 996
    sget-object v1, Lcom/amazon/device/ads/WebRequest$HttpMethod;->GET:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setHttpMethod(Lcom/amazon/device/ads/WebRequest$HttpMethod;)V

    const-string v1, "Accept"

    const-string v2, "application/json"

    .line 997
    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 1

    .line 987
    new-instance v0, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;

    invoke-direct {v0}, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;-><init>()V

    return-object v0
.end method
