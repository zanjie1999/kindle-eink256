.class public interface abstract Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;
.super Ljava/lang/Object;
.source "IBookDownloadObserver.java"


# virtual methods
.method public abstract onDownloadAdded(Lcom/amazon/kindle/services/download/IContentDownload;)V
.end method

.method public abstract onDownloadComplete(Lcom/amazon/kindle/services/download/IContentDownload;)V
.end method

.method public abstract onDownloadError(Lcom/amazon/kindle/services/download/IContentDownload;)V
.end method

.method public abstract onDownloadProgressChanged(Lcom/amazon/kindle/services/download/IContentDownload;)V
.end method

.method public abstract onDownloadStateChanged(Lcom/amazon/kindle/services/download/IContentDownload;)V
.end method

.method public abstract onLicenseCountError(Lcom/amazon/kindle/services/download/IContentDownload;)V
.end method
