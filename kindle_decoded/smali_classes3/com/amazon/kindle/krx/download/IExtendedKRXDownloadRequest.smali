.class public interface abstract Lcom/amazon/kindle/krx/download/IExtendedKRXDownloadRequest;
.super Ljava/lang/Object;
.source "IExtendedKRXDownloadRequest.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;


# virtual methods
.method public abstract getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
.end method

.method public abstract getRetries()I
.end method

.method public abstract getTimeout()I
.end method

.method public abstract setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
.end method

.method public abstract setTimeout(I)V
.end method
