.class public interface abstract Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;
.super Ljava/lang/Object;
.source "IAudioDownloadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;
    }
.end annotation


# virtual methods
.method public abstract getDownloadProgress(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;
.end method

.method public abstract onAudioBookDelete(Lcom/amazon/kindle/krx/content/IBook;)V
.end method
