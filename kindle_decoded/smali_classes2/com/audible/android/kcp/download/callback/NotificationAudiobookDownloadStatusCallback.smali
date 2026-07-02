.class public Lcom/audible/android/kcp/download/callback/NotificationAudiobookDownloadStatusCallback;
.super Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;
.source "NotificationAudiobookDownloadStatusCallback.java"


# instance fields
.field private final mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/AudioFileManager;Lcom/audible/android/kcp/player/DownloadProgressUI;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p3, p2}, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/player/DownloadProgressUI;Lcom/audible/android/kcp/download/AudioFileManager;)V

    .line 24
    iput-object p2, p0, Lcom/audible/android/kcp/download/callback/NotificationAudiobookDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    return-void
.end method


# virtual methods
.method public onDownloadCancelled()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/NotificationAudiobookDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 45
    invoke-super {p0}, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->onDownloadCancelled()V

    return-void
.end method

.method public onDownloadComplete(Ljava/io/File;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/NotificationAudiobookDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 31
    invoke-super {p0, p1}, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->onDownloadComplete(Ljava/io/File;)V

    return-void
.end method

.method public onDownloadError(Lcom/audible/mobile/downloader/NetworkError;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/NotificationAudiobookDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 38
    invoke-super {p0, p1}, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->onDownloadError(Lcom/audible/mobile/downloader/NetworkError;)V

    return-void
.end method

.method public onDownloadRemoved()V
    .locals 3

    .line 51
    invoke-super {p0}, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->onDownloadRemoved()V

    .line 52
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/NotificationAudiobookDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    return-void
.end method
