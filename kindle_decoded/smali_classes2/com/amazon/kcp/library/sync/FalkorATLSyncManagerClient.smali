.class public final Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;
.super Ljava/lang/Object;
.source "FalkorATLSyncManagerClient.kt"

# interfaces
.implements Lcom/amazon/kcp/sync/FalkorSyncManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$FalkorStateSyncUpdateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorATLSyncManagerClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorATLSyncManagerClient.kt\ncom/amazon/kcp/library/sync/FalkorATLSyncManagerClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,305:1\n1176#2,2:306\n1206#2,4:308\n*E\n*S KotlinDebug\n*F\n+ 1 FalkorATLSyncManagerClient.kt\ncom/amazon/kcp/library/sync/FalkorATLSyncManagerClient\n*L\n195#1,2:306\n195#1,4:308\n*E\n"
.end annotation


# instance fields
.field private final FALKOR_DATASET:Ljava/lang/String;

.field private final FALKOR_NAMESPACE:Ljava/lang/String;

.field private final SERIES_ID_PREFIX:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private volatile falkorDataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final groupService:Lcom/amazon/kindle/content/IGroupService;

.field private final largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/integrator/LargeLibraryRepository<",
            "Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/integrator/LargeLibraryRepository;Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/amazon/kindle/content/IGroupService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/amazon/kcp/application/IAuthenticationManager;",
            "Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;",
            "Lcom/amazon/kindle/services/authentication/IAccountProvider;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kcp/integrator/LargeLibraryRepository<",
            "Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;",
            ">;",
            "Lcom/amazon/kindle/krx/library/ILibraryManager;",
            "Lcom/amazon/kindle/content/IGroupService;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/amazon/device/sync/SyncInit;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "authManager"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "extensionManager"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "accountProvider"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "libraryService"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "libraryManager"

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "groupService"

    invoke-static {p8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    iput-object p5, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iput-object p6, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    iput-object p7, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    iput-object p8, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->groupService:Lcom/amazon/kindle/content/IGroupService;

    .line 56
    const-class p2, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;

    invoke-static {p2}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "Log.getTag(FalkorATLSyncManagerClient::class.java)"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object p2

    iget-object p5, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    invoke-interface {p2, p5}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    invoke-interface {p2}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    const-string p5, "ThreadPoolManager.getIns\u2026Name(TAG).buildExecutor()"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->executorService:Ljava/util/concurrent/ExecutorService;

    const-string p2, "Falkor"

    .line 58
    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->FALKOR_NAMESPACE:Ljava/lang/String;

    const-string p2, "StoryData"

    .line 59
    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->FALKOR_DATASET:Ljava/lang/String;

    const-string/jumbo p2, "urn:collection:1:asin-"

    .line 60
    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->SERIES_ID_PREFIX:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 65
    monitor-enter p3

    .line 66
    :try_start_0
    invoke-interface {p3, v0}, Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;->lookupExtensionObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/device/sync/SyncInit;

    if-nez p2, :cond_0

    .line 68
    new-instance p2, Lcom/amazon/device/sync/SyncInit;

    invoke-direct {p2}, Lcom/amazon/device/sync/SyncInit;-><init>()V

    .line 69
    invoke-interface {p3, v0, p2}, Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;->registerExtensionObject(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 71
    :cond_0
    new-instance p5, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    new-instance p6, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$FalkorStateSyncUpdateHandler;

    invoke-direct {p6, p0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$FalkorStateSyncUpdateHandler;-><init>(Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;)V

    invoke-direct {p5, p1, p6, p4, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;-><init>(Landroid/app/Application;Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/device/sync/SyncInit;)V

    iput-object p5, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    .line 72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWhispersyncClient$p(Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    return-object p0
.end method

.method private final deserialize(Ljava/lang/String;)Z
    .locals 4

    .line 207
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "visibleInLibrary"

    .line 208
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 210
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException trying to deserialize ReadData from string - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final getIsHidden(Lcom/amazon/kindle/model/content/IBookID;Z)Z
    .locals 4

    if-eqz p2, :cond_2

    .line 217
    iget-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->falkorDataCache:Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 219
    new-instance v1, Lcom/amazon/kcp/store/SDPBook;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/amazon/kcp/store/SDPBook;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;Ljava/lang/String;Z)V

    .line 220
    iget-object p1, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupIdFromItem(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->groupService:Lcom/amazon/kindle/content/IGroupService;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/content/IGroupService;->getGroupMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getAsin()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 226
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->sync()V

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final handleUserLogout()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$handleUserLogout$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$handleUserLogout$1;-><init>(Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 4

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->FALKOR_NAMESPACE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->connect([Ljava/lang/String;)Z

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    iget-object v1, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->FALKOR_NAMESPACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->FALKOR_DATASET:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->subscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final convertToFalkorData(Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 306
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 307
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 308
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 309
    check-cast v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 195
    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "it.value"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->deserialize(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected final filterFalkorSyncData(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "convertedData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 133
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 136
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->getBookList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 138
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/content/BookGroupItem;

    .line 139
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/BookGroupItem;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    .line 140
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->isHidden()Z

    move-result v4

    if-eq v4, v1, :cond_1

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-eq v4, v5, :cond_1

    .line 141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getBookList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/BookGroupItem;",
            ">;"
        }
    .end annotation

    const-string v0, "storyAsin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->SERIES_ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupIdFromGroupAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupFromGroupId(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/BookGroup;->getGroupItems()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 163
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->handleUserLogout()V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onContentAdd(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_ADD"
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->sync()V

    return-void
.end method

.method public final onContentUpdate(Ljava/util/Collection;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "events"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 245
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TAGS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFreeFalkorContent()Z

    move-result v0

    const-string v2, "metadata.bookID"

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFreeFalkorContent()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->getIsHidden(Lcom/amazon/kindle/model/content/IBookID;Z)Z

    move-result v0

    .line 249
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsHidden()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->sync()V

    goto :goto_0

    .line 255
    :cond_1
    new-instance v0, Lcom/amazon/kcp/store/SDPBook;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/amazon/kcp/store/SDPBook;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;Ljava/lang/String;Z)V

    new-array v1, v3, [Lkotlin/Pair;

    const/4 v2, 0x0

    .line 256
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->updateLocalDb(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setFalkorDataCache(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->falkorDataCache:Ljava/util/Map;

    return-void
.end method

.method public sync()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$sync$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$sync$1;-><init>(Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "Falkor Whispersync not connected!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected final syncCloud()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "Falkor Cloud Sync Started!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->syncAll()V

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "Falkor Cloud Sync Completed!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final syncLocal()V
    .locals 4

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "Falkor Local Sync Started"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    iget-object v1, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->FALKOR_NAMESPACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->FALKOR_DATASET:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "data"

    .line 115
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->convertToFalkorData(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->falkorDataCache:Ljava/util/Map;

    .line 117
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->filterFalkorSyncData(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->updateLocalDb(Ljava/util/Map;)V

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    const-string v1, "Falkor Local Sync Finished"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/kindle/collections/sync/SyncException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->FALKOR_DATASET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dataset. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/sync/SyncException;->getCode()Lcom/amazon/kindle/collections/sync/SyncException$Code;

    move-result-object v0

    const-string v3, "e.code"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/sync/SyncException$Code;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public update(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final updateLocalDb(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "books"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updating local db"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 175
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 177
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/Map$Entry;

    .line 178
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->IS_HIDDEN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v4}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    .line 180
    iget-object v7, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->TAG:Ljava/lang/String;

    move-object v5, v0

    .line 179
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    .line 181
    new-instance v2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleFalkorDataSetChange(Ljava/util/Set;)V

    :cond_1
    return-void
.end method
