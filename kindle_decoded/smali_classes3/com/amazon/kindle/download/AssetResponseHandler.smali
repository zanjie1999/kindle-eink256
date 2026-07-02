.class public Lcom/amazon/kindle/download/AssetResponseHandler;
.super Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;
.source "AssetResponseHandler.java"


# static fields
.field private static final CDE_ERROR_CODE:I = 0x193

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final assetRequestErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

.field private hasCdeError:Z

.field private final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private final request:Lcom/amazon/kindle/download/assets/AssetDownloadRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/download/AssetResponseHandler;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/AssetResponseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V
    .locals 1

    .line 30
    invoke-interface {p3}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;-><init>(Lcom/amazon/kindle/network/INetworkService;)V

    .line 31
    iput-object p3, p0, Lcom/amazon/kindle/download/AssetResponseHandler;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/download/AssetResponseHandler;->request:Lcom/amazon/kindle/download/assets/AssetDownloadRequest;

    .line 33
    iput-object p2, p0, Lcom/amazon/kindle/download/AssetResponseHandler;->assetRequestErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-void
.end method


# virtual methods
.method public onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetResponseHandler;->request:Lcom/amazon/kindle/download/assets/AssetDownloadRequest;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->onResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V

    :cond_0
    return-void
.end method

.method public onHttpStatusCodeReceived(I)V
    .locals 1

    .line 38
    iput p1, p0, Lcom/amazon/kindle/webservices/BaseResponseHandler;->httpStatusCode:I

    const/16 v0, 0x193

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/amazon/kindle/download/AssetResponseHandler;->hasCdeError:Z

    .line 43
    iget-object p1, p0, Lcom/amazon/kindle/download/AssetResponseHandler;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->getFilepath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->deleteFile(Ljava/lang/String;)Z

    .line 44
    sget-object p1, Lcom/amazon/kindle/download/AssetResponseHandler;->TAG:Ljava/lang/String;

    const-string v0, "Received a 403 error from server"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    .line 59
    iget-boolean v0, p0, Lcom/amazon/kindle/download/AssetResponseHandler;->hasCdeError:Z

    if-nez v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->onInputStream(Ljava/io/InputStream;)V

    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/amazon/kindle/download/AssetResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Received CDE error"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetResponseHandler;->assetRequestErrorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-static {p1, v0}, Lcom/amazon/kindle/download/CdeErrorParser;->parse(Ljava/io/InputStream;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-void
.end method
