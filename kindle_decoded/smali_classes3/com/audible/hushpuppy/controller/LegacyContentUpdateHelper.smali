.class public final Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;
.super Ljava/lang/Object;
.source "LegacyContentUpdateHelper.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/ILegacyContentUpdateHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;
    }
.end annotation


# static fields
.field private static final CM_QUIET_PERIOD:Lcom/audible/mobile/domain/Time;

.field private static final CM_TIMEOUT_PERIOD:Lcom/audible/mobile/domain/Time;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MAX_SYNC_FILE_DOWNLOAD_RETRY:I = 0x2


# instance fields
.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

.field private final relationshipUpdater:Lcom/audible/hushpuppy/controller/IRelationshipUpdater;

.field private final syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 58
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 59
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->CM_TIMEOUT_PERIOD:Lcom/audible/mobile/domain/Time;

    .line 60
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->CM_QUIET_PERIOD:Lcom/audible/mobile/domain/Time;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;Lcom/audible/hushpuppy/controller/IRelationshipUpdater;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 161
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 162
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    .line 163
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 164
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;

    .line 165
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->relationshipUpdater:Lcom/audible/hushpuppy/controller/IRelationshipUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;)V
    .locals 13

    .line 135
    new-instance v5, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;

    move-object v2, p2

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v5, v0, v1, p2}, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;-><init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/ILibraryController;)V

    new-instance v12, Lcom/audible/hushpuppy/controller/RelationshipUpdater;

    sget-object v10, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->CM_TIMEOUT_PERIOD:Lcom/audible/mobile/domain/Time;

    sget-object v11, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->CM_QUIET_PERIOD:Lcom/audible/mobile/domain/Time;

    move-object v6, v12

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v6 .. v11}, Lcom/audible/hushpuppy/controller/RelationshipUpdater;-><init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;Lcom/audible/mobile/domain/Time;Lcom/audible/mobile/domain/Time;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;Lcom/audible/hushpuppy/controller/IRelationshipUpdater;)V

    return-void
.end method

.method private getEbookRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    return-object p1
.end method

.method private isSyncFileDownloaded(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/ILibraryController;->getSyncFile(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 347
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

    .line 303
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Old EBook is Null."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 308
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "New EBook is Null."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 312
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 317
    :cond_2
    sget-object v1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

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

    .line 318
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const-string p1, "Old Book info: Title - %s , Format - %s, Guid - %s,EBookASIN - %s"

    .line 317
    invoke-interface {v1, p1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

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

    .line 321
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    const-string p2, "New Book info: Title - %s , Format - %s, Guid - %s EBookASIN - %s"

    .line 320
    invoke-interface {p1, p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 313
    :cond_3
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Old/New EBook format is Null."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0
.end method

.method private isWifiConnected()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->isWifiNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getPluginUpdateState(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;
    .locals 6

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->isUpdateForValidEbooks(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 179
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Updating EBook(s) is NOT valid. Return FAILED"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedInvalidIBook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 181
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;->FAILED_PLUGIN_AUDIBLE_RETRYABLE:Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;->getFailureCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->fromFailureCode(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object p1

    return-object p1

    .line 184
    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->getEbookRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p3

    .line 185
    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->getEbookRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p4

    if-nez p3, :cond_1

    .line 188
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Current Relationship is null. Return READY"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNoCompanionForOldFormat:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 190
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez p4, :cond_7

    .line 194
    sget-object v4, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v5, "No Relationship exists for this new EBook. Updating Companion Mapping."

    invoke-interface {v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->isWifiConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 196
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "No wifi connection. Returning FAILED_RETRYABLE to try again later"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableNoNetwork:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 198
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 201
    :cond_2
    sget-object v4, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v5, "Try to update relationship..."

    invoke-interface {v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->relationshipUpdater:Lcom/audible/hushpuppy/controller/IRelationshipUpdater;

    invoke-interface {v4}, Lcom/audible/hushpuppy/controller/IRelationshipUpdater;->updateRelationship()Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    move-result-object v4

    .line 204
    sget-object v5, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$1;->$SwitchMap$com$audible$hushpuppy$controller$IRelationshipUpdater$Status:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v2, :cond_6

    if-eq v4, v3, :cond_5

    if-eq v4, v1, :cond_4

    if-eq v4, v0, :cond_3

    .line 224
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Unknown result! This shouldn\'t happen returning FAILED."

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRelationshipUpdateUnknownError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 226
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;->FAILED_PLUGIN_AUDIBLE_RETRYABLE:Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;->getFailureCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->fromFailureCode(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object p1

    return-object p1

    .line 220
    :cond_3
    sget-object v4, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v5, "Companion Mapping is recently updated. Checking relationship again..."

    invoke-interface {v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_4
    sget-object v4, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v5, "Companion Mapping update is successful. Checking relationship again..."

    invoke-interface {v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 230
    :goto_0
    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->getEbookRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p2

    if-nez p2, :cond_7

    .line 231
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Still no sync file in companion mapping for new EBook! Returning FAILED."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedNoRelationship:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 233
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;->FAILED_PLUGIN_AUDIBLE_RETRYABLE:Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;->getFailureCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->fromFailureCode(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object p1

    return-object p1

    .line 211
    :cond_5
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Companion Mapping update is in progress. Returning WAIT."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->WaitRelationshipUpdateInProgress:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 213
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->WAIT:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 206
    :cond_6
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Companion Mapping update failed. Returning FAILED_RETRYABLE to try again later."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableRelationshipUpdateFailed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 208
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 237
    :cond_7
    invoke-direct {p0, p3}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->isSyncFileDownloaded(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 238
    sget-object p2, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Sync file downloaded for old book format. Will try to download sync file for new book format"

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p2

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p2

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p2

    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 243
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Current book is being updated. Return FAILED_RETRYABLE"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableBookOpened:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 245
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 248
    :cond_8
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$1;->$SwitchMap$com$audible$hushpuppy$controller$ISyncFileDownloadController$SyncFileDownloadStatus:[I

    iget-object p2, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;

    invoke-interface {p2, p4, v3}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;->get(Lcom/audible/hushpuppy/common/relationship/IRelationship;I)Lcom/audible/hushpuppy/controller/ISyncFileDownloadController;

    move-result-object p2

    invoke-interface {p2}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController;->downloadSyncFile()Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_c

    if-eq p1, v3, :cond_b

    if-eq p1, v1, :cond_a

    if-eq p1, v0, :cond_9

    const/4 p2, 0x5

    if-eq p1, p2, :cond_9

    .line 273
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Unknow sync file download state, Return FAILED"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;

    invoke-interface {p1, p4}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;->remove(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    .line 275
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedSyncFileDownloadUnknownError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 276
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;->FAILED_PLUGIN_AUDIBLE_RETRYABLE:Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;->getFailureCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->fromFailureCode(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object p1

    return-object p1

    .line 267
    :cond_9
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "New sync file download error. Return FAILED"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;

    invoke-interface {p1, p4}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;->remove(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    .line 269
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedSyncFileDownloadFailed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 270
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;->FAILED_PLUGIN_AUDIBLE_RETRYABLE:Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper$AudibleContentUpdateFailureCode;->getFailureCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->fromFailureCode(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object p1

    return-object p1

    .line 261
    :cond_a
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "New sync file download timed out. Return FAILED_RETRYABLE"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableSyncFileDownloadTimeOut:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 263
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 256
    :cond_b
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "New sync file is downloading. Return WAIT"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->WaitSyncFileDownloadInProgress:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 258
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->WAIT:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 250
    :cond_c
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "New sync file downloaded successfully. Return READY"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->syncFileDownloadControllerFactory:Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;

    invoke-interface {p1, p4}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;->remove(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    .line 252
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNewSyncFileDownloaded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 253
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1

    .line 280
    :cond_d
    sget-object p1, Lcom/audible/hushpuppy/controller/LegacyContentUpdateHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Sync file not downloaded. Return READY"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNoSyncFileExists:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 282
    sget-object p1, Lcom/amazon/kindle/krx/update/PluginUpdateState;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-object p1
.end method
