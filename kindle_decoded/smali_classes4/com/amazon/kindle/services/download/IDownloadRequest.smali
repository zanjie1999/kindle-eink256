.class public interface abstract Lcom/amazon/kindle/services/download/IDownloadRequest;
.super Ljava/lang/Object;
.source "IDownloadRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebRequest;


# virtual methods
.method public abstract getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;
.end method

.method public abstract getBookId()Ljava/lang/String;
.end method

.method public abstract getDownloadPath()Ljava/lang/String;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getIsCompleted()Z
.end method

.method public abstract getPathAndQuery()Ljava/lang/String;
.end method

.method public abstract initalizeTempFilePath()Ljava/io/File;
.end method

.method public abstract onRequestComplete()Z
.end method

.method public abstract setIsCompleted(Z)V
.end method

.method public abstract setShouldDownloadOverWan(Z)V
.end method

.method public abstract shouldDownloadOverWan()Z
.end method

.method public abstract shouldReportProgressToLauncher()Z
.end method
