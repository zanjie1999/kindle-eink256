.class public interface abstract Lcom/audible/android/kcp/player/DownloadProgressUI;
.super Ljava/lang/Object;
.source "DownloadProgressUI.java"


# virtual methods
.method public abstract getUiContext()Landroid/content/Context;
.end method

.method public abstract notifyDownloadCancelled()V
.end method

.method public abstract notifyDownloadComplete(Ljava/io/File;)V
.end method

.method public abstract notifyDownloadError(I)V
.end method

.method public abstract notifyDownloadProgress(JJ)V
.end method

.method public abstract notifyDownloadQueued()V
.end method

.method public abstract notifyDownloadRemoved()V
.end method

.method public abstract notifyDownloadStarted()V
.end method
