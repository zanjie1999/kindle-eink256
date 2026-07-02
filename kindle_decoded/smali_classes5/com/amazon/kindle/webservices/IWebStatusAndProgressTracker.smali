.class public interface abstract Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;
.super Ljava/lang/Object;
.source "IWebStatusAndProgressTracker.java"


# virtual methods
.method public abstract reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
.end method

.method public abstract reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
.end method

.method public abstract setMaxProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
