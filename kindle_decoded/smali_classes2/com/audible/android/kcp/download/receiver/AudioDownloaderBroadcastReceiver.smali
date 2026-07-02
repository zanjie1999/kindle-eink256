.class public Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioDownloaderBroadcastReceiver.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/android/kcp/download/AudioFileManager;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    return-void
.end method

.method public static getAudioDownloaderBroadcastIntentFilter(Landroid/content/Context;)Landroid/content/IntentFilter;
    .locals 5

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    invoke-static {}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->values()[Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 48
    invoke-virtual {v4, p0}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->fromActionString(Landroid/content/Context;Ljava/lang/String;)Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    move-result-object p1

    if-nez p1, :cond_0

    .line 65
    sget-object p1, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "An action must be provided!"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->AUDIOBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v0}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object p1, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Asin is required for audio downloads!"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 76
    :cond_1
    invoke-static {p2}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p2

    .line 78
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver$1;->$SwitchMap$com$audible$android$kcp$download$receiver$AudioDownloaderAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 84
    sget-object p2, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action provided! Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {p1, p2, v0}, Lcom/audible/android/kcp/download/AudioFileManager;->cancelDownload(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    .line 81
    iget-object p1, p0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {p1, p2, v0}, Lcom/audible/android/kcp/download/AudioFileManager;->cancelDownload(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    :goto_0
    return-void
.end method
