.class public Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;
.super Ljava/lang/Object;
.source "AirAudioDeletionHandler.java"

# interfaces
.implements Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/AirAudioDeletionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DeletionDownloadStatusCallback"
.end annotation


# instance fields
.field private final mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

.field private final mEbookAsin:Ljava/lang/String;

.field final synthetic this$0:Lcom/audible/android/kcp/AirAudioDeletionHandler;


# direct methods
.method public constructor <init>(Lcom/audible/android/kcp/AirAudioDeletionHandler;Ljava/lang/String;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->this$0:Lcom/audible/android/kcp/AirAudioDeletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->mEbookAsin:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    return-void
.end method

.method private cancelAudiobookDownload()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->this$0:Lcom/audible/android/kcp/AirAudioDeletionHandler;

    invoke-static {v0}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->access$000(Lcom/audible/android/kcp/AirAudioDeletionHandler;)Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->mEbookAsin:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne v0, v1, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->this$0:Lcom/audible/android/kcp/AirAudioDeletionHandler;

    iget-object v1, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->access$100(Lcom/audible/android/kcp/AirAudioDeletionHandler;Lcom/audible/mobile/domain/Asin;)V

    :cond_1
    return-void
.end method

.method private unregisterDownloadStatusUpdates()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->this$0:Lcom/audible/android/kcp/AirAudioDeletionHandler;

    iget-object v1, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->mAudiobookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->access$200(Lcom/audible/android/kcp/AirAudioDeletionHandler;Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method


# virtual methods
.method public onDownloadCancelled()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->unregisterDownloadStatusUpdates()V

    return-void
.end method

.method public onDownloadComplete(Ljava/io/File;)V
    .locals 0

    .line 243
    invoke-direct {p0}, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->unregisterDownloadStatusUpdates()V

    return-void
.end method

.method public onDownloadError(Lcom/audible/mobile/downloader/NetworkError;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->unregisterDownloadStatusUpdates()V

    return-void
.end method

.method public onDownloadProgress(JJ)V
    .locals 0

    return-void
.end method

.method public onDownloadQueued()V
    .locals 0

    .line 267
    invoke-direct {p0}, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->cancelAudiobookDownload()V

    return-void
.end method

.method public onDownloadRemoved()V
    .locals 0

    .line 261
    invoke-direct {p0}, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->unregisterDownloadStatusUpdates()V

    return-void
.end method

.method public onDownloadStarted()V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;->cancelAudiobookDownload()V

    return-void
.end method
