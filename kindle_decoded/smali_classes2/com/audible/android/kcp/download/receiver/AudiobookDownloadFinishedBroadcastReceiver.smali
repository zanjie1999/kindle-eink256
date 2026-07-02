.class public Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudiobookDownloadFinishedBroadcastReceiver.java"


# static fields
.field public static final AUDIOBOOK_DOWNLOAD_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mDownloadStatusCallbacksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/util/Set<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->AUDIOBOOK_DOWNLOAD_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.audible.mobile.download.action.DOWNLOAD_COMPLETE"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->AUDIOBOOK_DOWNLOAD_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.audible.mobile.download.action.DOWNLOAD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->AUDIOBOOK_DOWNLOAD_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.audible.mobile.download.action.DOWNLOAD_CANCELLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->AUDIOBOOK_DOWNLOAD_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.audible.mobile.download.action.DOWNLOAD_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->AUDIOBOOK_DOWNLOAD_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.audible.mobile.download.action.DOWNLOAD_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/audible/android/kcp/library/NewAudiobookRegistrar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/util/Set<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;>;",
            "Lcom/audible/android/kcp/library/NewAudiobookRegistrar;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->mDownloadStatusCallbacksMap:Ljava/util/Map;

    .line 53
    iput-object p2, p0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

    return-void
.end method

.method private handleDownloadCompleteCancelled(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;

    .line 141
    invoke-interface {v0}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;->onDownloadCancelled()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleDownloadCompleteFailure(Landroid/content/Intent;Lcom/audible/mobile/domain/Asin;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/util/Set<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.audible.mobile.download.extra.ERROR_STATUS"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p1}, Lcom/audible/mobile/downloader/NetworkError;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/downloader/NetworkError;

    move-result-object p1

    goto :goto_1

    .line 123
    :cond_1
    :goto_0
    sget-object p1, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No error status was provided on the broadcasted event from DownloadManager. Asin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 128
    :goto_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;

    .line 129
    invoke-interface {p3, p1}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;->onDownloadError(Lcom/audible/mobile/downloader/NetworkError;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private handleDownloadCompleteSuccess(Landroid/content/Intent;Lcom/audible/mobile/domain/Asin;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/util/Set<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.audible.mobile.download.extra.FILE_URI"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No file location was provided on the broadcasted event from DownloadManager. Asin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 105
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    sget-object v1, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    invoke-virtual {v1}, Lcom/audible/mobile/download/ContentType;->toIntentCategory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/android/kcp/library/NewAudiobookRegistrar;->addAudiobook(Ljava/lang/String;)V

    .line 110
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;

    .line 111
    invoke-interface {p2, v0}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;->onDownloadComplete(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private handleDownloadRemoved(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;

    .line 147
    invoke-interface {v0}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;->onDownloadRemoved()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleDownloadStarted(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;

    .line 135
    invoke-interface {v0}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;->onDownloadStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.audible.mobile.download.action.DOWNLOAD_COMPLETE"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.audible.mobile.download.action.DOWNLOAD_REMOVED"

    const-string v3, "com.audible.mobile.download.action.DOWNLOAD_STARTED"

    const-string v4, "com.audible.mobile.download.action.DOWNLOAD_CANCELLED"

    const-string v5, "com.audible.mobile.download.action.DOWNLOAD_FAILED"

    if-nez v1, :cond_0

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    const-string v1, "com.audible.mobile.download.extra.REQUEST"

    .line 63
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/download/Request;

    if-nez v1, :cond_1

    .line 66
    sget-object p1, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "No request was provided on the broadcasted event from DownloadManager. We are unable to handle this intent."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_1
    invoke-virtual {v1}, Lcom/audible/mobile/download/Request;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    .line 71
    iget-object v6, p0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->mDownloadStatusCallbacksMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v6, :cond_2

    .line 74
    sget-object p2, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There are no download callbacks for this asin.  There is nothing to with the download result of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-direct {p0, p2, v1, v6}, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->handleDownloadCompleteSuccess(Landroid/content/Intent;Lcom/audible/mobile/domain/Asin;Ljava/util/Set;)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    invoke-direct {p0, p2, v1, v6}, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->handleDownloadCompleteFailure(Landroid/content/Intent;Lcom/audible/mobile/domain/Asin;Ljava/util/Set;)V

    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 83
    invoke-direct {p0, v6}, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->handleDownloadCompleteCancelled(Ljava/util/Set;)V

    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 85
    invoke-direct {p0, v6}, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->handleDownloadStarted(Ljava/util/Set;)V

    goto :goto_0

    .line 86
    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 87
    invoke-direct {p0, v6}, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->handleDownloadRemoved(Ljava/util/Set;)V

    :cond_7
    :goto_0
    return-void
.end method
