.class public Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;
.super Ljava/lang/Object;
.source "KrxDownloadRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/download/KrxDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InputStreamHandler"
.end annotation


# instance fields
.field private handler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

.field private statusCode:I


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;->handler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;Lcom/amazon/kindle/krx/download/KrxDownloadRequest$1;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;-><init>(Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;)V

    return-void
.end method


# virtual methods
.method public getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;->statusCode:I

    return v0
.end method

.method public onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;->handler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getHeaderIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 279
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 281
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

    .line 282
    iget-object v3, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;->handler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler;->onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onHttpStatusCodeReceived(I)V
    .locals 1

    .line 290
    iput p1, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;->statusCode:I

    .line 291
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;->handler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;->onStatusCode(I)V

    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;->handler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;->onInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 301
    :catch_0
    new-instance p1, Lcom/amazon/kindle/webservices/ResponseHandlerException;

    invoke-direct {p1}, Lcom/amazon/kindle/webservices/ResponseHandlerException;-><init>()V

    throw p1
.end method

.method public onRequestCanceled()V
    .locals 0

    return-void
.end method
