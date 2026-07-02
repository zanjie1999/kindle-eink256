.class final Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$ToaRedeemHandler;
.super Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;
.source "ToaOfferRedeemRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ToaRedeemHandler"
.end annotation


# instance fields
.field private volatile responseBody:Ljava/lang/String;

.field final synthetic this$0:Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$ToaRedeemHandler;->this$0:Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$1;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$ToaRedeemHandler;-><init>(Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;)V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 2

    .line 283
    invoke-static {}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOA offer redeem: onDownloadComplete http status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 285
    iget-object p2, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$ToaRedeemHandler;->this$0:Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;

    invoke-static {p2}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->access$200(Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;)Lcom/audible/hushpuppy/service/network/INetworkResponseParser;

    move-result-object p2

    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$ToaRedeemHandler;->responseBody:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/audible/hushpuppy/service/network/INetworkResponseParser;->parseResponse(ILjava/lang/String;)Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;

    move-result-object p1

    .line 286
    iget-object p2, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$ToaRedeemHandler;->this$0:Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;

    invoke-static {p2}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->access$300(Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;)Lcom/audible/hushpuppy/common/misc/ICallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/audible/hushpuppy/common/misc/ICallback;->execute(Ljava/lang/Object;)V

    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 2

    if-nez p1, :cond_0

    .line 268
    invoke-static {}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Response body input stream was null for TOA offer redeem request."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 272
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$ToaRedeemHandler;->responseBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 274
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Error processing input stream from Toa offer redeem request"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 276
    :goto_2
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 277
    throw v0
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
