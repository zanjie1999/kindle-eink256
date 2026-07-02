.class public interface abstract Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
.super Ljava/lang/Object;
.source "IKRXResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
    }
.end annotation


# virtual methods
.method public abstract onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
.end method

.method public abstract onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
