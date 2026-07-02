.class public Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingsRequest;
.super Lcom/audible/hushpuppy/service/network/KRXUserAgentDownloadRequest;
.source "KrxCompanionMappingsRequest.java"


# static fields
.field private static final NETWORK_TIMEOUT_MILLIS:I = 0x927c0


# instance fields
.field private final responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p3}, Lcom/audible/hushpuppy/service/network/KRXUserAgentDownloadRequest;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingsRequest;->url:Ljava/net/URL;

    .line 41
    iput-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingsRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    const-string p1, "Accept-Encoding"

    const-string p2, "gzip"

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/service/network/KRXUserAgentDownloadRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x927c0

    .line 43
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->setTimeout(I)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    .line 84
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;->ADP:Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;

    return-object v0
.end method

.method public getBody()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingsRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingsRequest;->url:Ljava/net/URL;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
