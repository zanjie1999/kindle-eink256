.class public final Lcom/audible/hushpuppy/controller/ContentUpdateHandler;
.super Ljava/lang/Object;
.source "ContentUpdateHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/update/IContentUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MAX_SYNC_FILE_DOWNLOAD_RETRY:I = 0x2


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final audioDownloadedFileManager:Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final legacyContentUpdateController:Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;

.field private final libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

.field private final mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

.field private final relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

.field private final syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;

.field private final syncFileManager:Lcom/audible/relationship/controller/ISyncFileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 223
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    .line 224
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    .line 225
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 226
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;

    .line 227
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 228
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->syncFileManager:Lcom/audible/relationship/controller/ISyncFileManager;

    .line 229
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->audioDownloadedFileManager:Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    .line 230
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->legacyContentUpdateController:Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;

    .line 231
    iput-object p10, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 232
    iput-object p11, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lde/greenrobot/event/EventBus;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 12

    .line 181
    new-instance v6, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;

    move-object v2, p2

    move-object/from16 v5, p5

    move-object/from16 v0, p6

    invoke-direct {v6, v5, v0, p2}, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;-><init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/ILibraryController;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-void
.end method

.method private getPluginStateForNewSyncFileDownload(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Lcom/amazon/kindle/krx/update/PluginUpdateState;
    .locals 3

    .line 350
    sget-object v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$1;->$SwitchMap$com$audible$hushpuppy$controller$ISyncFileDownloadController$SyncFileDownloadStatus:[I

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;->get(Lcom/audible/hushpuppy/common/relationship/IRelationship;I)Lcom/audible/hushpuppy/controller/ISyncFileDownloadController;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController;->downloadSyncFile()Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 375
    sget-object v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Unknown sync file download state, Return FAILED"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;->remove(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    .line 377
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedSyncFileDownloadUnknownError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 378
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->FAILED_PLUGIN_AUDIBLE_RETRYABLE:Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->getFailureCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->fromFailureCode(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object p1

    return-object p1

    .line 369
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "New sync file download error. Return FAILED"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;->remove(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    .line 371
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedSyncFileDownloadFailed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 372
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->FAILED_PLUGIN_AUDIBLE_RETRYABLE:Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->getFailureCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->fromFailureCode(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object p1

    return-object p1

    .line 363
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "New sync file download timed out. Return FAILED_RETRYABLE"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableSyncFileDownloadTimeOut:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 365
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 358
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "New sync file is downloading. Return WAIT"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->WaitSyncFileDownloadInProgress:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 360
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->WAIT:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 352
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "New sync file downloaded successfully. Return READY"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;->remove(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    .line 354
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNewSyncFileDownloaded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 355
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1
.end method

.method private getRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/relationship/domain/Relationship;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;->queryRelationship(Lcom/audible/mobile/domain/Asin;)Lcom/audible/relationship/domain/Relationship;

    move-result-object p1

    return-object p1
.end method

.method private isAudiobookDownloaded(Lcom/audible/mobile/domain/Asin;)Z
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    return p1
.end method

.method private isSyncFileDownloaded(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/ILibraryController;->getSyncFile(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isUpdateForValidEbooks(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 408
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Old EBook is null."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 413
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "New EBook is null."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 417
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 422
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 423
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Old and new asin not equal."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 427
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 432
    :cond_4
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 437
    :cond_5
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 438
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const-string p1, "Old Book info: Title - %s , Format - %s, Guid - %s,EBookASIN - %s"

    .line 437
    invoke-interface {v1, p1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    .line 441
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    const-string p2, "New Book info: Title - %s , Format - %s, Guid - %s EBookASIN - %s"

    .line 440
    invoke-interface {p1, p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 433
    :cond_6
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Old/New EBook guid is null."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 428
    :cond_7
    :goto_1
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Old/New EBook format is null."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 418
    :cond_8
    :goto_2
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Old/New EBook asin is null."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0
.end method

.method private isValidSyncFileAcr(Lcom/audible/mobile/domain/ACR;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 342
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Sync file acr is null."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isWifiConnected()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->isWifiNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public enable()V
    .locals 2

    .line 394
    sget-object v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Enabling this IContentUpdateHandler for Full solution"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContentUpdateManager()Lcom/amazon/kindle/krx/update/IContentUpdateManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/update/IContentUpdateManager;->registerContentUpdateHandler(Lcom/amazon/kindle/krx/update/IContentUpdateHandler;)V

    return-void
.end method

.method public getPluginUpdateState(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;
    .locals 21

    move-object/from16 v0, p0

    .line 244
    iget-object v1, v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->checkAndUpdateDBScalingToggle()V

    .line 245
    iget-object v1, v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 246
    invoke-direct/range {p0 .. p2}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->isUpdateForValidEbooks(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Not valid ebook information. Returning FAILED_PLUGIN_AUDIBLE_RETRYABLE"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedInvalidIBook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 249
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->FAILED_PLUGIN_AUDIBLE_RETRYABLE:Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->getFailureCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->fromFailureCode(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object v1

    return-object v1

    .line 252
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->getRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/relationship/domain/Relationship;

    move-result-object v1

    if-nez v1, :cond_1

    .line 255
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Current relationship is null. Not hushpuppy enabled. Return READY"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNoCompanionForOldFormat:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 257
    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object v1

    .line 260
    :cond_1
    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->isAudiobookDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 261
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Audio file is not downloaded. Return FAILED_RETRYABLE"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedAudioFileNotDownloaded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 263
    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object v1

    .line 267
    :cond_2
    iget-object v2, v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getLocalAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v2

    if-nez v2, :cond_3

    .line 269
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Not able to find the audiobook file even though it was downloaded. Return FAILED_RETRYABLE"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedAudioDownloadedNotFound:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 271
    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object v1

    .line 274
    :cond_3
    iget-object v3, v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->audioDownloadedFileManager:Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getAudioFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;->getAudiobookAcr(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 277
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Not able to find the acr even though audiobook was downloaded. Return FAILED_RETRYABLE"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedAudioDownloadedAcrNotFound:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 279
    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object v1

    .line 281
    :cond_4
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v3

    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;->AudioBookACRSuccess:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    sget-object v5, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->SUCCESS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v3, v4, v5}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->isWifiConnected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 284
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "No wifi connection. Returning FAILED_RETRYABLE to try again later"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableNoNetwork:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 286
    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object v1

    .line 289
    :cond_5
    iget-object v3, v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->syncFileManager:Lcom/audible/relationship/controller/ISyncFileManager;

    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    new-instance v5, Lcom/audible/mobile/domain/ImmutableGUIDImpl;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/audible/mobile/domain/ImmutableGUIDImpl;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v6

    invoke-static {v2}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v7

    .line 289
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/audible/relationship/controller/ISyncFileManager;->getSyncFileAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/mobile/domain/ACR;

    move-result-object v12

    .line 292
    invoke-direct {v0, v12}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->isValidSyncFileAcr(Lcom/audible/mobile/domain/ACR;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 293
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Old Sync file acr missing. Returning FAILED_RETRYABLE"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedOldSyncFileMissing:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 295
    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object v1

    .line 298
    :cond_6
    new-instance v3, Lcom/audible/hushpuppy/common/relationship/Relationship;

    new-instance v11, Lcom/audible/hushpuppy/common/relationship/Companion;

    .line 299
    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/audible/hushpuppy/common/relationship/Companion;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/audible/hushpuppy/common/relationship/Companion;

    .line 300
    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v14

    invoke-static {v2}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v10

    invoke-direct/range {v13 .. v19}, Lcom/audible/hushpuppy/common/relationship/Companion;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAmazonAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned()Z

    move-result v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v8, v3

    move-object v9, v11

    move-object v11, v4

    invoke-direct/range {v8 .. v17}, Lcom/audible/hushpuppy/common/relationship/Relationship;-><init>(Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 303
    iget-object v4, v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->syncFileManager:Lcom/audible/relationship/controller/ISyncFileManager;

    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v5

    new-instance v6, Lcom/audible/mobile/domain/ImmutableGUIDImpl;

    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/audible/mobile/domain/ImmutableGUIDImpl;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v7

    invoke-static {v2}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v8

    .line 303
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/audible/relationship/controller/ISyncFileManager;->getSyncFileAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/mobile/domain/ACR;

    move-result-object v13

    .line 306
    invoke-direct {v0, v13}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->isValidSyncFileAcr(Lcom/audible/mobile/domain/ACR;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 307
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "New Sync file acr missing. Returning FAILED_RETRYABLE"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedNewSyncFileMissing:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 309
    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object v1

    .line 312
    :cond_7
    new-instance v4, Lcom/audible/hushpuppy/common/relationship/Relationship;

    new-instance v12, Lcom/audible/hushpuppy/common/relationship/Companion;

    .line 313
    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/audible/hushpuppy/common/relationship/Companion;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/audible/hushpuppy/common/relationship/Companion;

    .line 314
    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v15

    invoke-static {v2}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v11

    invoke-direct/range {v14 .. v20}, Lcom/audible/hushpuppy/common/relationship/Companion;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAmazonAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v1}, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned()Z

    move-result v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v9, v4

    move-object v10, v12

    move-object v12, v2

    invoke-direct/range {v9 .. v18}, Lcom/audible/hushpuppy/common/relationship/Relationship;-><init>(Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 317
    invoke-direct {v0, v3}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->isSyncFileDownloaded(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 318
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Sync file downloaded for old book format. Will try to download sync file for new book format"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 322
    iget-object v1, v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 323
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 324
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Current book is being updated. Return FAILED_RETRYABLE"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableBookOpened:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 326
    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object v1

    .line 329
    :cond_8
    invoke-direct {v0, v4}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->getPluginStateForNewSyncFileDownload(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object v1

    return-object v1

    .line 331
    :cond_9
    sget-object v1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Sync file not downloaded. Return READY"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNoSyncFileExists:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 333
    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object v1

    .line 335
    :cond_a
    iget-object v1, v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->legacyContentUpdateController:Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;->getPluginUpdateState(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object v1

    return-object v1
.end method

.method public onContentUpdateComplete(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 386
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Finish updating content."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onContentUpdateStart(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 238
    sget-object p1, Lcom/audible/hushpuppy/controller/ContentUpdateHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Start updating content..."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method
