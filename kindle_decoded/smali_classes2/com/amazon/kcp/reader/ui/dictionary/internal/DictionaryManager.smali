.class public Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;
.super Ljava/lang/Object;
.source "DictionaryManager.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryManager;


# static fields
.field private static DictionaryManagerSingleton:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager; = null

.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "DictionaryManager"


# instance fields
.field private cachedDictionaryLocators:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;",
            ">;"
        }
    .end annotation
.end field

.field private libraryController:Lcom/amazon/kcp/library/ILibraryController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kcp/library/ILibraryController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 66
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->cachedDictionaryLocators:Ljava/util/Hashtable;

    .line 67
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private getDictionaryByAsin(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->cachedDictionaryLocators:Ljava/util/Hashtable;

    .line 187
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    if-eqz v0, :cond_0

    return-object v0

    .line 195
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getLanguageFromAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-direct {v1, p1, p0, v2, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryLocator;-><init>(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryManager;Lcom/amazon/kcp/library/ILibraryController;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->cachedDictionaryLocators:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static getInstance()Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->DictionaryManagerSingleton:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    return-object v0
.end method

.method private getSavedCustomerDictionaryFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;
    .locals 4

    .line 318
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getDictionaryAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 322
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getLanguageFromAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isCustomDictionary(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 326
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 328
    invoke-virtual {p0, p2, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->setPreferedDictionaryForLanguage(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryLocatorForAsin(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 333
    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->isDictionaryLocal()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private getUserPreferredDictionary(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;
    .locals 1

    .line 290
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 291
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->getDictionaryAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryLocatorForAsin(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private hasCDEError(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->getFromSerialized(I)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static initialize(Lcom/amazon/kcp/library/ILibraryController;)V
    .locals 1

    .line 44
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;-><init>(Lcom/amazon/kcp/library/ILibraryController;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->DictionaryManagerSingleton:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    return-void
.end method


# virtual methods
.method public downloadFallbackDictionary(Ljava/lang/String;)V
    .locals 2

    .line 210
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getFallbackDictionaryAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryByAsin(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object p1

    const/4 v0, 0x0

    .line 213
    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getBoundDictionary(Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 214
    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->hasCDEError(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager$1;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getDictionaryLocator(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;
    .locals 5

    .line 91
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->getPrimaryLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getUserPreferredDictionary(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 102
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getSavedCustomerDictionaryFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 108
    :cond_1
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getDictionaryAsinFromLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 110
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "languageCode"

    .line 112
    invoke-static {v3, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    const-string v3, "DictionaryManager"

    const-string v4, "DictNotFound"

    .line 110
    invoke-virtual {v1, v3, v4, v2, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 117
    invoke-static {}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getPreferredDictionaries()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 119
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 121
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    .line 122
    invoke-virtual {p1}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->getDefaultAsin()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 124
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryLocatorForAsin(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryLocatorForAsin(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getDictionaryLocatorForAsin(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryByAsin(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object v0

    const/4 v1, 0x0

    .line 151
    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getBoundDictionary(Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    .line 154
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getFallbackDictionaryAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 156
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryByAsin(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object p1

    .line 158
    invoke-interface {p1, v1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getBoundDictionary(Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 159
    invoke-interface {p1, v1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getBoundDictionary(Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    :cond_1
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->hasCDEError(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return-object p1

    :cond_3
    return-object v0
.end method

.method public getFallbackDictionaryLocator(Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;
    .locals 0

    .line 170
    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getAsin()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getFallbackDictionaryAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryByAsin(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    .line 256
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->cachedDictionaryLocators:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAsinFromCache(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->cachedDictionaryLocators:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setPreferedDictionaryForLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 273
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setPreferredDictionaryForLanguage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
