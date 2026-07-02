.class public interface abstract Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;
.super Ljava/lang/Object;
.source "IAmazonWebServiceCallback.java"


# virtual methods
.method public abstract onBodyChunkReceived([BI)V
.end method

.method public abstract onHeadersReceived(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V
.end method

.method public abstract onNetworkError()V
.end method

.method public abstract onProgress(II)V
.end method

.method public abstract onRequestComplete()V
.end method
