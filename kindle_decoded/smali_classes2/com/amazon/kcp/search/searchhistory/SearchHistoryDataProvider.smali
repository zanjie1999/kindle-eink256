.class public Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;
.super Ljava/lang/Object;
.source "SearchHistoryDataProvider.java"


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "eink_search_history"

.field private static final TAG:Ljava/lang/String;

.field private static gson:Lcom/google/gson/Gson;

.field private static volatile instance:Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;


# instance fields
.field private authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

.field private searchHistoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/search/searchhistory/SearchHistoryModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 42
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->search_history_item_num:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    .line 44
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "eink_search_history"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    .line 42
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;ILcom/amazon/kindle/persistence/AndroidSharedPreferences;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;ILcom/amazon/kindle/persistence/AndroidSharedPreferences;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 49
    iput-object p3, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    .line 50
    new-instance p1, Landroid/util/LruCache;

    invoke-direct {p1, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->searchHistoryCache:Landroid/util/LruCache;

    .line 51
    invoke-direct {p0}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->initialSearchHistoryDataProvider()V

    .line 52
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private buildJSONStringFromHistoryCache()Ljava/lang/String;
    .locals 4

    .line 166
    invoke-direct {p0}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->transQueryListFromHistoryCache()Ljava/util/List;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    iget-object v3, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->searchHistoryCache:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_1
    sget-object v0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;
    .locals 2

    .line 56
    sget-object v0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->instance:Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->instance:Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    invoke-direct {v1}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;-><init>()V

    sput-object v1, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->instance:Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    .line 61
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 63
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->instance:Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    return-object v0
.end method

.method private initialSearchHistoryDataProvider()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->loadSearchHistoryFromStorageToCache(Ljava/lang/String;)V

    return-void
.end method

.method private loadSearchHistoryFromStorageToCache(Ljava/lang/String;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->searchHistoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 96
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider$1;-><init>(Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;)V

    .line 98
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 97
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryModel;

    .line 101
    iget-object v1, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->searchHistoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryModel;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transQueryListFromHistoryCache()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->searchHistoryCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->searchHistoryCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 185
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 187
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateUserSearchHistoryInStorage(Ljava/lang/String;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->searchHistoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->buildJSONStringFromHistoryCache()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putStringAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearSearchHistoryByUserId(Ljava/lang/String;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->searchHistoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->prefs:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->remove(Ljava/lang/String;)Z

    return-void
.end method

.method public getSearchHistoryByUserId()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->transQueryListFromHistoryCache()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onKRTAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->initialSearchHistoryDataProvider()V

    return-void
.end method

.method public updateSearchHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 123
    new-instance v0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryModel;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->searchHistoryCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->updateUserSearchHistoryInStorage(Ljava/lang/String;)V

    return-void
.end method
