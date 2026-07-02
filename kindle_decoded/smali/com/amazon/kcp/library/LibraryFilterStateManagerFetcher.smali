.class public final Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;
.super Ljava/lang/Object;
.source "LibraryFilterStateManagerFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;
    }
.end annotation


# static fields
.field private static final LIBRARY_PREFS:Ljava/lang/String; = "LibrarySettings"

.field private static final cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;",
            "Lcom/amazon/kcp/library/LibraryFilterStateManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;->cacheMap:Ljava/util/Map;

    return-void
.end method

.method private static createLibraryFilterStateManager(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kcp/library/LibraryFilterStateManager;
    .locals 4

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "LibrarySettings"

    const/4 v3, 0x0

    .line 57
    invoke-interface {v0, v2, v3, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 60
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->getPersistKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;-><init>(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized getLibraryFilterStateManager(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kcp/library/LibraryFilterStateManager;
    .locals 2

    const-class v0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object p0, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;->cacheMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 49
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;->createLibraryFilterStateManager(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p0

    .line 50
    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
