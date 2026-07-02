.class public final Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler;
.super Ljava/lang/Object;
.source "Mobi7LunaMultimediaManifestDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult;
    }
.end annotation


# instance fields
.field private final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V
    .locals 1

    const-string v0, "krlForDownloadFacade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    return-void
.end method


# virtual methods
.method public final fetchMultimediaAssets(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult;
    .locals 6

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multimediaGuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getLunaManifestDownloadURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v1

    .line 25
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/library/models/BookType;->getCDEContentTypeFor(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lunaManifestServiceUrl"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&key="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&contentReference="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v3, Lcom/amazon/kindle/webservices/XmlResponseHandler;

    new-instance v4, Lcom/amazon/kindle/luna/LunaManifestContentHandler;

    iget-object v5, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-direct {v4, v5, p1, v2}, Lcom/amazon/kindle/luna/LunaManifestContentHandler;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;)V

    invoke-direct {v3, v4}, Lcom/amazon/kindle/webservices/XmlResponseHandler;-><init>(Lcom/amazon/foundation/internal/DefaultContentHandler;)V

    .line 31
    new-instance p1, Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setId(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 33
    invoke-virtual {p1, v3}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p2, 0x1

    .line 34
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 35
    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/WebserviceURL;->getTimeout()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 36
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 37
    sget-object p2, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 40
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    .line 41
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p2

    if-nez p2, :cond_0

    .line 43
    new-instance p1, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$Success;

    invoke-direct {p1, v2}, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$Success;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance p2, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$RequestFailure;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object p1

    const-string v0, "lunaManifestRequest.errorDescriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$RequestFailure;-><init>(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method
