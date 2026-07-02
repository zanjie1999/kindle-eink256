.class public interface abstract Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;
.super Ljava/lang/Object;
.source "DownloadStatusCallback.java"


# virtual methods
.method public abstract onDownloadCancelled()V
.end method

.method public abstract onDownloadComplete(Ljava/io/File;)V
.end method

.method public abstract onDownloadError(Lcom/audible/mobile/downloader/NetworkError;)V
.end method

.method public abstract onDownloadProgress(JJ)V
.end method

.method public abstract onDownloadQueued()V
.end method

.method public abstract onDownloadRemoved()V
.end method

.method public abstract onDownloadStarted()V
.end method
