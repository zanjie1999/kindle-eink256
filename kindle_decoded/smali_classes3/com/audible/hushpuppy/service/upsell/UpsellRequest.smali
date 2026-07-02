.class public abstract Lcom/audible/hushpuppy/service/upsell/UpsellRequest;
.super Lcom/audible/hushpuppy/service/network/KRXUserAgentDownloadRequest;
.source "UpsellRequest.java"


# static fields
.field private static final CONTENT_TYPE_KEY:Ljava/lang/String; = "content-type"

.field private static final RESPONSE_CHARSET:Ljava/lang/String; = "utf-8"


# instance fields
.field protected final audiobookAsin:Lcom/audible/mobile/domain/Asin;

.field protected final downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

.field protected final endpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/network/KRXUserAgentDownloadRequest;-><init>(Landroid/content/Context;)V

    const-string p1, "Kindle sdk cannot be NULL!"

    .line 51
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->getContentType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentType for request cannot be NULL!"

    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "Network endpoint cannot be NULL!"

    .line 53
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/pfm/endpoint/INetworkEndpoints;

    iput-object p2, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->endpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;

    const-string p1, "Audiobook asin endpoint cannot be NULL!"

    .line 54
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/mobile/domain/Asin;

    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    .line 55
    invoke-interface {p4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "utf-8"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content-type"

    invoke-virtual {p0, p2, p1}, Lcom/audible/hushpuppy/service/network/KRXUserAgentDownloadRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract buildPostData()[B
.end method

.method protected abstract buildUrl(Lcom/audible/mobile/domain/Asin;)Ljava/net/URL;
.end method

.method public abstract executeRequest()V
.end method

.method public final getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    .line 92
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;->ADP:Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;

    return-object v0
.end method

.method public final getBody()[B
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->buildPostData()[B

    move-result-object v0

    return-object v0
.end method

.method public final getBookId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getContentType()Ljava/lang/String;
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->buildUrl(Lcom/audible/mobile/domain/Asin;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
