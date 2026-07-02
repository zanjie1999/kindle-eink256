.class public interface abstract Lcom/audible/android/kcp/download/AudioFileManager;
.super Ljava/lang/Object;
.source "AudioFileManager.java"


# virtual methods
.method public abstract cancelDownload(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
.end method

.method public abstract clearAllDownloads()V
.end method

.method public abstract deleteAllFiles()I
.end method

.method public abstract deleteFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
.end method

.method public abstract forceClearAllDownloads()V
.end method

.method public abstract getDownloadStatus(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Lcom/audible/mobile/downloader/DownloadStatus;
.end method

.method public abstract getFileSize(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/lang/Long;
.end method

.method public abstract getPartialFileLocation(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/io/File;
.end method

.method public abstract isDownloaded(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
.end method

.method public abstract isDownloading(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
.end method

.method public abstract isQueued(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
.end method

.method public abstract registerDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V
.end method

.method public abstract startDownload(Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;)V
.end method

.method public abstract unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V
.end method
