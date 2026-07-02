.class public interface abstract Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;
.super Ljava/lang/Object;
.source "IAmazonWebserviceCallListener.java"


# virtual methods
.method public abstract onAuthenticationFailed()V
.end method

.method public abstract onDataReceived([BI)V
.end method

.method public abstract onNetworkFailure()V
.end method

.method public abstract onParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)V
.end method

.method public abstract onProgress(II)V
.end method

.method public abstract onResponseComplete(Ljava/lang/Object;)V
.end method
