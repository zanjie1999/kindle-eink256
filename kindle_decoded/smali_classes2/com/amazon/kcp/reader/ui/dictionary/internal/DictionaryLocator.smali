.class public Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;
.super Ljava/lang/Object;
.source "DictionaryLocator.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;
.implements Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;


# static fields
.field private static final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "DictionaryLocator"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private asin:Ljava/lang/String;

.field private bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

.field private bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private boundDictionary:Lcom/amazon/kindle/content/ContentMetadata;

.field private dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryManager;

.field private isDownloading:Z

.field private languageCode:Ljava/lang/String;

.field private libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field private metadataDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$READER;

    const-string v1, "Dictionary"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$READER;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryManager;Lcom/amazon/kcp/library/ILibraryController;Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    .line 47
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->isDownloading:Z

    .line 51
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 53
    new-instance p3, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-direct {p3}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;-><init>()V

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    .line 54
    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->languageCode:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryManager;

    .line 57
    new-instance p2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object p3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p2, p1, p3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 59
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->getDictionaryMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result p2

    if-nez p2, :cond_3

    .line 62
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazon/kindle/services/download/IDownloadService;->getContentDownload(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 63
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p3

    sget-object p4, Lcom/amazon/kindle/model/content/ContentState;->REQUIRED_COMPLETE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p3, p4, :cond_1

    .line 64
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p3

    sget-object p4, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p3, p4, :cond_1

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p2

    sget-object p3, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p2, p3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->isDownloading:Z

    if-eqz v0, :cond_3

    .line 66
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    sget-object p3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p2, p1, p3, p0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->startTracking(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;)V

    :cond_3
    return-void
.end method

.method private getBoundDictionary()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->getBoundDictionary(Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    return-object v0
.end method

.method private getDictionaryMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 267
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method private stopTrackingDownload()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->isTrackingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->stopTracking()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelDictionaryDownload()Z
    .locals 6

    .line 154
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->isDownloading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    const-string v4, "ASIN"

    .line 157
    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    const-string v4, "DictionaryLocator"

    const-string v5, "DictDownloadCanceled"

    .line 155
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 159
    invoke-static {v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setDictCardImpressionPending(Z)V

    const-string v0, "DictionaryDownloadCancel"

    .line 162
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 163
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->isDownloading:Z

    .line 164
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->stopTrackingDownload()V

    .line 166
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling download for bookId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 168
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 167
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/services/download/IDownloadService;->cancel(Ljava/lang/String;Z)Z

    move-result v1

    .line 173
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    :cond_0
    return v1
.end method

.method public deleteDictionary()Z
    .locals 5

    .line 139
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->getBoundDictionary()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->getBoundDictionary()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kindle/content/ContentMetadata;

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->deleteBook(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    const-string v3, "ASIN"

    .line 146
    invoke-static {v3, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    const-string v3, "DictionaryLocator"

    const-string v4, "CorruptDictDeleteSuccess"

    .line 144
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public downloadDictionary()Z
    .locals 10

    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->getBoundDictionary()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->getBoundDictionary()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->isTrackingOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0, v1, v2, p0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->startTracking(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;)V

    .line 86
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->getBoundDictionary()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 87
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    .line 88
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getPreferredDictionaryTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    move-object v5, v2

    .line 92
    new-instance v4, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    invoke-direct {v4, v2, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 93
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, ""

    .line 94
    invoke-interface/range {v3 .. v9}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {v2, v0, v3}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    .line 99
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    goto :goto_1

    .line 101
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->getBoundDictionary()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    .line 104
    :goto_1
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->isDownloading:Z

    .line 106
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    const-string v4, "ASIN"

    .line 108
    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    const-string v4, "DictionaryLocator"

    const-string v5, "DictDownloadRequest"

    .line 106
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setDictionaryASIN(Ljava/lang/String;)V

    const-string v0, "DictionaryDownload"

    .line 111
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    return v1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBoundDictionary(Z)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsMetadataDirty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " boundDictionary value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p1, :cond_0

    .line 122
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kindle/content/ContentMetadata;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz p1, :cond_2

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->getDictionaryMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kindle/content/ContentMetadata;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    .line 130
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kindle/content/ContentMetadata;

    return-object p1
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public isDictionaryLocal()Z
    .locals 1

    .line 259
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->getBoundDictionary()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->isDownloading:Z

    return v0
.end method

.method public onDownloadAdded(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 0

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    return-void
.end method

.method public onDownloadComplete(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 4

    .line 227
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    const-string v2, "ASIN"

    .line 229
    invoke-static {v2, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    const-string v2, "DictionaryLocator"

    const-string v3, "DictDownloadSuccess"

    .line 227
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 232
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    const/4 p1, 0x0

    .line 233
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->isDownloading:Z

    .line 235
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->stopTrackingDownload()V

    return-void
.end method

.method public onDownloadError(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 4

    .line 200
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    const-string v2, "ASIN"

    .line 202
    invoke-static {v2, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    const-string v2, "DictionaryLocator"

    const-string v3, "DictDownloadFailure"

    .line 200
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 204
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->TAG:Ljava/lang/String;

    const-string v0, "Todo manager is in error"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    .line 206
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->stopTrackingDownload()V

    return-void
.end method

.method public onDownloadProgressChanged(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 0

    return-void
.end method

.method public onDownloadStateChanged(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 0

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    return-void
.end method

.method public onLicenseCountError(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 4

    .line 211
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    const-string v2, "ASIN"

    .line 213
    invoke-static {v2, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    const-string v2, "DictionaryLocator"

    const-string v3, "DictLicenseCountError"

    .line 211
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 217
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->metadataDirty:Z

    const/4 p1, 0x0

    .line 218
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->isDownloading:Z

    .line 219
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->stopTrackingDownload()V

    .line 221
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryManager;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryManager;->downloadFallbackDictionary(Ljava/lang/String;)V

    return-void
.end method
