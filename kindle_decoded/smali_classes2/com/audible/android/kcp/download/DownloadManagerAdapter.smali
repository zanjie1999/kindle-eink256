.class public Lcom/audible/android/kcp/download/DownloadManagerAdapter;
.super Ljava/lang/Object;
.source "DownloadManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final mActivationManager:Lcom/audible/android/kcp/activation/ActivationManager;

.field private final mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

.field private final mEventBus:Lde/greenrobot/event/EventBus;

.field private final mKindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

.field private final mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/android/kcp/download/AudioFileManager;Lde/greenrobot/event/EventBus;Lcom/audible/android/kcp/activation/ActivationManager;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/android/kcp/library/NewAudiobookRegistrar;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mKindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 73
    iput-object p2, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    .line 74
    iput-object p3, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 75
    iput-object p4, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mActivationManager:Lcom/audible/android/kcp/activation/ActivationManager;

    .line 76
    iput-object p6, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

    .line 77
    iput-object p5, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 78
    iput-object p7, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 56
    sget-object v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/audible/android/kcp/download/DownloadManagerAdapter;Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->downloadSampleAudiobook(Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/audible/android/kcp/download/DownloadManagerAdapter;Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->downloadAudiobook(Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/audible/android/kcp/download/DownloadManagerAdapter;Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->generateDownloadErrorNotification(Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V

    return-void
.end method

.method private activateDevice(Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V
    .locals 2

    .line 268
    sget-object v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "activateDevice: activating device"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mActivationManager:Lcom/audible/android/kcp/activation/ActivationManager;

    new-instance v1, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;

    invoke-direct {v1, p0, p1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;-><init>(Lcom/audible/android/kcp/download/DownloadManagerAdapter;Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V

    invoke-interface {v0, v1}, Lcom/audible/android/kcp/activation/ActivationManager;->activateDevice(Lcom/audible/android/kcp/activation/ActivationCallback;)V

    return-void
.end method

.method private downloadAudiobook(Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V
    .locals 5

    .line 124
    sget-object v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "downloadAudiobook: downloading audiobook"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v1, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->DOWNLOAD_AUDIO:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    const-string v2, "<UNKNOWN>"

    const-string v3, "Calling AAP to download audio file."

    invoke-interface {v0, v1, v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 128
    new-instance v0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getAudioBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getAudioFormat()Lcom/audible/mobile/domain/Format;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadRequestProvider;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V

    .line 129
    new-instance v1, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getAudioBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    iget-object v3, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v4, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {v1, v2, v3, v4}, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/AudioFileManager;Lde/greenrobot/event/EventBus;)V

    .line 131
    iget-object v2, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getAudioBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v0}, Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;->getDownloadType()Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    move-result-object v3

    invoke-interface {v2, p1, v3, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->registerDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 132
    iget-object p1, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/download/AudioFileManager;->startDownload(Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;)V

    return-void
.end method

.method private downloadSampleAudiobook(Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V
    .locals 5

    .line 149
    sget-object v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "downloadSampleAudiobook: downloading sample audiobook"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v1, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->DOWNLOAD_SAMPLE:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    const-string v2, "<UNKNOWN>"

    const-string v3, "Calling AAP to download sample file."

    invoke-interface {v0, v1, v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadSample:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 153
    new-instance v0, Lcom/audible/android/kcp/download/receiver/SampleAudiobookDownloadRequestProvider;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getAudioBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getAudioFormat()Lcom/audible/mobile/domain/Format;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/audible/android/kcp/download/receiver/SampleAudiobookDownloadRequestProvider;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V

    .line 154
    new-instance v1, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getAudioBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    iget-object v3, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v4, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {v1, v2, v3, v4}, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/AudioFileManager;Lde/greenrobot/event/EventBus;)V

    .line 156
    iget-object v2, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getAudioBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v0}, Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;->getDownloadType()Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    move-result-object v3

    invoke-interface {v2, p1, v3, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->registerDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 157
    iget-object p1, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/download/AudioFileManager;->startDownload(Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;)V

    return-void
.end method

.method private generateDownloadErrorNotification(Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V
    .locals 6

    .line 247
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mKindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 250
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    new-instance v3, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;

    new-instance v4, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    invoke-direct {v4, v0, v2}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;-><init>(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    iget-object v2, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mKindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 253
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getEBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v5

    invoke-interface {v5}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getAudioBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v5

    invoke-direct {v3, v0, v4, v2, v5}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;-><init>(Landroid/content/Context;Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;Lcom/amazon/kindle/krx/content/IBook;Lcom/audible/mobile/domain/Asin;)V

    .line 254
    sget-object v0, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    invoke-virtual {v0}, Lcom/audible/mobile/download/ContentType;->getNotificationId()I

    move-result v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getAudioBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->getUniqueDownloadId(ILcom/audible/mobile/domain/Asin;)I

    move-result p1

    .line 256
    invoke-virtual {v3}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilderFactory;->getDownloadErrorNotification()Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 257
    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public deleteAudiobook(Lcom/audible/mobile/domain/Asin;)Z
    .locals 2

    .line 203
    sget-object v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "deleteAudiobook: delete audiobook file"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, p1, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->deleteFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    move-result p1

    return p1
.end method

.method public deleteSyncFile(Lcom/audible/mobile/domain/Asin;)Z
    .locals 2

    .line 209
    sget-object v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "deleteSyncFile: deleting sync file"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, p1, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->deleteFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    move-result p1

    return p1
.end method

.method public downloadAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V
    .locals 2

    .line 112
    new-instance v0, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p2, v1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;Z)V

    .line 114
    iget-object p1, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mActivationManager:Lcom/audible/android/kcp/activation/ActivationManager;

    invoke-interface {p1}, Lcom/audible/android/kcp/activation/ActivationManager;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->downloadAudiobook(Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V

    goto :goto_0

    .line 117
    :cond_0
    sget-object p1, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "downloadAudiobook: not downloading (device not activated)"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->activateDevice(Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V

    :goto_0
    return-void
.end method

.method public downloadSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
    .locals 4

    .line 162
    sget-object v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "downloadSyncFile: downloading sync file"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v1, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->DOWNLOAD_AUDIO_SYNC:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    const-string v2, "<UNKNOWN>"

    const-string v3, "Calling AAP to download audio sync file."

    invoke-interface {v0, v1, v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookSyncFile:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 167
    new-instance v0, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;

    invoke-direct {v0, p1, p2}, Lcom/audible/android/kcp/download/receiver/SyncFileDownloadRequestProvider;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    .line 168
    new-instance v1, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;

    iget-object v2, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v3, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/android/kcp/download/AudioFileManager;Lde/greenrobot/event/EventBus;)V

    .line 170
    iget-object p2, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;->getDownloadType()Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    move-result-object v2

    invoke-interface {p2, p1, v2, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->registerDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 171
    iget-object p1, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/download/AudioFileManager;->startDownload(Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;)V

    return-void
.end method

.method public forceClearAllDownloads()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/download/AudioFileManager;->forceClearAllDownloads()V

    return-void
.end method

.method public getAudioBookFileSize(Lcom/audible/mobile/domain/Asin;)J
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, p1, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->getFileSize(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public isAudiobookNew(Lcom/audible/mobile/domain/Asin;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/android/kcp/library/NewAudiobookRegistrar;->isNewAudiobook(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDownloadQueued(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {v0, p1, p2}, Lcom/audible/android/kcp/download/AudioFileManager;->isQueued(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    move-result p1

    return p1
.end method

.method public isDownloaded(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {v0, p1, p2}, Lcom/audible/android/kcp/download/AudioFileManager;->isDownloaded(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    move-result p1

    return p1
.end method

.method public isDownloading(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {v0, p1, p2}, Lcom/audible/android/kcp/download/AudioFileManager;->isDownloading(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    move-result p1

    return p1
.end method

.method public tryToCancel(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/lang/String;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->getPlayerState()Lcom/audible/mobile/player/State;

    move-result-object v0

    .line 222
    sget-object v1, Lcom/audible/mobile/player/State;->STARTED:Lcom/audible/mobile/player/State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/audible/mobile/player/State;->PAUSED:Lcom/audible/mobile/player/State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->stop()V

    .line 224
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->reset()V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2}, Lcom/audible/android/kcp/download/AudioFileManager;->cancelDownload(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    .line 231
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2}, Lcom/audible/android/kcp/download/AudioFileManager;->cancelDownload(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    .line 234
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method
