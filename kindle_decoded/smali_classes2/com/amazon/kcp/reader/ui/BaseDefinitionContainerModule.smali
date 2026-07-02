.class public abstract Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;
.super Landroid/content/BroadcastReceiver;
.source "BaseDefinitionContainerModule.java"

# interfaces
.implements Lcom/amazon/kindle/config/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CustomComparator;,
        Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CORPFMChangedEventListener;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final METRICS_NAME_DICTIONARY_FREE:Ljava/lang/String; = "DICTIONARY_FREE"

.field public static final METRICS_NAME_DICTIONARY_PURCHASED:Ljava/lang/String; = "DICTIONARY_PURCHASED"

.field private static final TAG:Ljava/lang/String;

.field protected static hasCorPfmChanged:Z

.field protected static shouldForceFileSystem:Z


# instance fields
.field protected context:Landroid/content/Context;

.field protected dictionaryList:Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;

.field protected libraryService:Lcom/amazon/kindle/content/LibraryContentService;

.field private onContentAddHandler:Lcom/amazon/kindle/event/IEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/event/IEventHandler<",
            "Lcom/amazon/kindle/content/LibraryContentAddPayload;",
            ">;"
        }
    .end annotation
.end field

.field private onContentDeleteHandler:Lcom/amazon/kindle/event/IEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/event/IEventHandler<",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private onContentUpdateHandler:Lcom/amazon/kindle/event/IEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/event/IEventHandler<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    const-class v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->TAG:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    const-string v1, "DefinitionContainer"

    .line 77
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    const/4 v1, 0x1

    .line 78
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withPriority(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 79
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 81
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->hasCorPfmChanged:Z

    .line 85
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->shouldForceFileSystem:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->dictionaryList:Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;

    .line 87
    new-instance v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$1;-><init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->onContentAddHandler:Lcom/amazon/kindle/event/IEventHandler;

    .line 121
    new-instance v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$2;-><init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->onContentDeleteHandler:Lcom/amazon/kindle/event/IEventHandler;

    .line 163
    new-instance v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$3;-><init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->onContentUpdateHandler:Lcom/amazon/kindle/event/IEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->addDictionary(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Ljava/util/List;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->deleteDictionary(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->deleteDictionaries()V

    return-void
.end method

.method private addDictionary(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->addCustomDictionaries(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 536
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 537
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 539
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_2

    .line 543
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 544
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 546
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 548
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/ContentMetadata;

    add-int/lit8 v5, v1, 0x1

    .line 549
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p1, v1

    .line 552
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Landroid/util/Pair;

    .line 553
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 552
    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    goto :goto_0

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    .line 558
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/content/LibraryContentService;->getDictionaryInfoFromTableForASIN([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 560
    invoke-static {p2, v2, p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->addFreeDictionaries(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 561
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 562
    new-instance p2, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CustomComparator;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CustomComparator;-><init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 563
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 564
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->setDictionaries(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private deleteDictionaries()V
    .locals 4

    .line 585
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->dictionaryList:Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;

    .line 587
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 586
    invoke-static {v1, v2, v3, v0}, Lcom/amazon/kcp/dictionary/utils/DictionaryUtils;->deleteDictionaries(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    return-void
.end method

.method private deleteDictionary(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 571
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->deleteCustomDictionary(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->deleteDictionariesForAsin(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private scanDBForUserDictionariesAsync(Lcom/amazon/kindle/callback/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 433
    sget-object v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$5;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$5;-><init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Lcom/amazon/kindle/callback/ICallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getDictionaryListForPreloadedDictionaries()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->dictionaryList:Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->getDictionaryLanguages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method protected getDictionaryResourceId()I
    .locals 1

    .line 419
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isChinaUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    sget v0, Lcom/amazon/kindle/dcm/R$xml;->dictionaries_cn:I

    return v0

    .line 422
    :cond_0
    sget v0, Lcom/amazon/kindle/dcm/R$xml;->dictionaries:I

    return v0
.end method

.method protected getPreferredDictionaryResourceId()I
    .locals 1

    .line 426
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isChinaUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    sget v0, Lcom/amazon/kindle/dcm/R$xml;->preferred_dictionaries_cn:I

    return v0

    .line 429
    :cond_0
    sget v0, Lcom/amazon/kindle/dcm/R$xml;->preferred_dictionaries:I

    return v0
.end method

.method public handleBookEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 333
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 334
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object p1

    sget-object v1, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_OPENED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    if-ne p1, v1, :cond_3

    .line 335
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 340
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "DICTIONARY_FREE"

    const-string v1, "FreeDictionaryFullDefinitionOpened"

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void

    .line 343
    :cond_1
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isCustomDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result p1

    const-string v1, "PurchasedDictionaryFullDefinitionOpened"

    const-string v2, "DICTIONARY_PURCHASED"

    if-eqz p1, :cond_2

    .line 344
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {p0, v2, v1, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void

    .line 349
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    .line 350
    invoke-virtual {v3}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 349
    invoke-virtual {p1, v0, v4, v3, v4}, Lcom/amazon/kindle/content/LibraryContentService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-eq v0, v3, :cond_3

    .line 352
    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {p0, v2, v1, v0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 354
    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setDictionaryType(Lcom/amazon/kindle/model/content/DictionaryType;)V

    .line 355
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->addContentMetadata(Ljava/util/Collection;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public handleSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 492
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->METADATA_PARSE_END:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    if-ne p1, v0, :cond_1

    .line 493
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 502
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->isFirstPartyChinaUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->initializeDictionaries(Landroid/content/Context;)V

    .line 505
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$6;-><init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->scanDBForUserDictionariesAsync(Lcom/amazon/kindle/callback/ICallback;)V

    :cond_1
    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3

    .line 217
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/IAndroidReaderController;

    .line 221
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->context:Landroid/content/Context;

    .line 222
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    if-nez v1, :cond_0

    .line 226
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/LibraryContentService;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->onContentAddHandler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/LibraryContentService;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 229
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->onContentDeleteHandler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/LibraryContentService;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 230
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->onContentUpdateHandler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/LibraryContentService;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 232
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CORPFMChangedEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CORPFMChangedEventListener;-><init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/event/IEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    .line 236
    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 238
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->initialize(Lcom/amazon/kcp/library/ILibraryController;)V

    .line 240
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->initializeDictionaries(Landroid/content/Context;)V

    return-void
.end method

.method public initializeDictionaries(Landroid/content/Context;)V
    .locals 2

    .line 370
    sget-object v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;-><init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected isFirstPartyChinaUser()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    invoke-static {v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 279
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    .line 280
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->deleteDictionaryAsinIfExistsInUserSettings(Ljava/util/List;)V

    .line 284
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->deleteDictionary(Ljava/util/List;)V

    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentUpdate;

    .line 298
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    .line 299
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    if-eq v4, v5, :cond_0

    .line 303
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 304
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 305
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 309
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne v4, v5, :cond_3

    .line 310
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 313
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v2, v4, :cond_0

    .line 317
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 318
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getInstance()Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    move-result-object v2

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->removeAsinFromCache(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 325
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->addDictionary(Ljava/util/List;Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public onLibraryContentAddPayload(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_ADD"
    .end annotation

    .line 247
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 251
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-nez v3, :cond_1

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 261
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->addDictionary(Ljava/util/List;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 361
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->initializeDictionaries(Landroid/content/Context;)V

    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V
    .locals 1

    .line 592
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 593
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method public scanDBForUserDictionaries()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    .line 456
    invoke-virtual {v0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/content/LibraryContentService;->listDictionaryContent(Ljava/lang/String;Lcom/amazon/kindle/model/content/DictionaryType;)Ljava/util/Collection;

    move-result-object v0

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    .line 463
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->addCustomDictionaries(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 466
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 473
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->getDictionaryListForPreloadedDictionaries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 474
    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->setDictionaries(Ljava/util/ArrayList;)V

    return-void
.end method
