.class public interface abstract Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;
.super Ljava/lang/Object;
.source "IAmazonWebServiceCallback.java"


# virtual methods
.method public abstract onBodyChunkReceived([BI)V
.end method

.method public abstract onHeadersReceived(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
.end method

.method public abstract onNetworkError()V
.end method

.method public abstract onProgress(II)V
.end method

.method public abstract onRequestComplete()V
.end method
