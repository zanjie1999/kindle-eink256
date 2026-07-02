.class public interface abstract Lcom/amazon/kindle/webservices/IResponseHandler;
.super Ljava/lang/Object;
.source "IResponseHandler.java"


# virtual methods
.method public abstract getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;
.end method

.method public abstract getHttpStatusCode()I
.end method

.method public abstract onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V
.end method

.method public abstract onHttpStatusCodeReceived(I)V
.end method

.method public abstract onInputStream(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation
.end method

.method public abstract onRequestCanceled()V
.end method
