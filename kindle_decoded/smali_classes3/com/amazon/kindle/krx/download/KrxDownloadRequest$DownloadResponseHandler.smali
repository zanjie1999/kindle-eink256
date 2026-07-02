.class public Lcom/amazon/kindle/krx/download/KrxDownloadRequest$DownloadResponseHandler;
.super Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;
.source "KrxDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/download/KrxDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DownloadResponseHandler"
.end annotation


# instance fields
.field private handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Ljava/lang/String;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;)V
    .locals 0

    .line 229
    invoke-direct {p0, p2}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;-><init>(Lcom/amazon/kindle/network/INetworkService;)V

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_temp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->setDownloadFile(Ljava/lang/String;)V

    .line 232
    iput-object p4, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$DownloadResponseHandler;->handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$DownloadResponseHandler;->handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    return-object v0
.end method

.method public onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V
    .locals 5

    .line 237
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$DownloadResponseHandler;->handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getHeaderIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 241
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    iget-object v3, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$DownloadResponseHandler;->handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler;->onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
