.class public final Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;
.super Ljava/lang/Object;
.source "AudioDownloadedFileManager.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final sdk:Lcom/audible/sdk/AudibleSDK;

.field private final service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final syncFileManager:Lcom/audible/relationship/controller/ISyncFileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/audible/sdk/AudibleSDK;

    invoke-direct {v0}, Lcom/audible/sdk/AudibleSDK;-><init>()V

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;-><init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/library/ILibraryManager;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/library/ILibraryManager;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audible sdk can\'t be null."

    .line 74
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/sdk/AudibleSDK;

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->sdk:Lcom/audible/sdk/AudibleSDK;

    const-string p1, "syncFileManager can\'t be null."

    .line 75
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/relationship/controller/ISyncFileManager;

    iput-object p2, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->syncFileManager:Lcom/audible/relationship/controller/ISyncFileManager;

    const-string p1, "service can\'t be null."

    .line 76
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    iput-object p3, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    const-string p1, "libraryManager can\'t be null."

    .line 77
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/amazon/kindle/krx/library/ILibraryManager;

    iput-object p4, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    return-void
.end method

.method private logCounterMetricWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;Ljava/lang/String;)V
    .locals 2

    .line 175
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, p1, p2, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method


# virtual methods
.method public getAudiobookAcr(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 86
    sget-object p1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Audio file is null. Returning"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 87
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;->AudioBookACRError_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    const-string v1, "NullAudioFile"

    invoke-direct {p0, p1, v1}, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->logCounterMetricWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;Ljava/lang/String;)V

    return-object v0

    .line 90
    :cond_0
    sget-object v1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/audible/sdk/AudibleSDK;->openFile(Ljava/lang/String;)Z

    .line 93
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->sdk:Lcom/audible/sdk/AudibleSDK;

    sget-object v1, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_AACR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-virtual {p1, v1}, Lcom/audible/sdk/AudibleSDK;->getMetadata(Lcom/audible/sdk/AudibleSDK$MetadataTag;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/audible/sdk/UnsupportedFileFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->release()V

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {p1}, Lcom/audible/sdk/AudibleSDK;->release()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 98
    :goto_1
    :try_start_1
    sget-object v1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "SDK exception!"

    invoke-interface {v1, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;->AudioBookACRError_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->logCounterMetricWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :goto_2
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;->AudioBookACRError_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    const-string v1, "UnknownIssue"

    invoke-direct {p0, p1, v1}, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->logCounterMetricWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;Ljava/lang/String;)V

    return-object v0

    .line 101
    :goto_3
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->release()V

    .line 102
    throw p1
.end method

.method public getEbookGuid(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Lcom/audible/mobile/domain/GUID;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 155
    sget-object p1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Relationship is null. Returning."

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Lcom/audible/mobile/domain/ImmutableGUIDImpl;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/audible/mobile/domain/ImmutableGUIDImpl;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 161
    :cond_2
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Book is null or guid is null"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSyncFileAcr(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Lcom/audible/mobile/domain/ACR;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 112
    sget-object p1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Relationship is null. Returning."

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getLocalAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 118
    sget-object p1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "No file found. Returning."

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    .line 122
    :cond_1
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getAudioFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    .line 125
    sget-object p1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Audio file is null. Returning"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    .line 128
    :cond_2
    sget-object v2, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->getAudiobookAcr(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 131
    sget-object p1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Audio acr is null. Can\'t download sync file. Returning false"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    .line 134
    :cond_3
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;->AudioBookACRSuccess:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->SUCCESS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v2, v3, v4}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 135
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 136
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 141
    :cond_4
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->syncFileManager:Lcom/audible/relationship/controller/ISyncFileManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    new-instance v5, Lcom/audible/mobile/domain/ImmutableGUIDImpl;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/audible/mobile/domain/ImmutableGUIDImpl;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-static {v1}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    .line 141
    invoke-interface {v3, v4, v5, p1, v1}, Lcom/audible/relationship/controller/ISyncFileManager;->getSyncFileAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    if-nez p1, :cond_5

    .line 144
    sget-object p1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Sync file acr is null. Can\'t download sync file. Returning false"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    :cond_5
    return-object p1

    .line 137
    :cond_6
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/AudioDownloadedFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Book is null or guid is null"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0
.end method
