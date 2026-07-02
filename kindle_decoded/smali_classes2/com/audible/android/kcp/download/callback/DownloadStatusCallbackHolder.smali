.class public interface abstract Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;
.super Ljava/lang/Object;
.source "DownloadStatusCallbackHolder.java"


# virtual methods
.method public abstract holdCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V
.end method

.method public abstract removeWaitingCallbacks(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/android/kcp/download/receiver/AirDownloadType;",
            ")",
            "Ljava/util/List<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;"
        }
    .end annotation
.end method
