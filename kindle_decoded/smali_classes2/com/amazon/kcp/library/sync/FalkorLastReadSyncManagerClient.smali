.class public final Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;
.super Ljava/lang/Object;
.source "FalkorLastReadSyncManagerClient.kt"

# interfaces
.implements Lcom/amazon/kcp/sync/FalkorSyncManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$FalkorLastReadEpisodeRecord;,
        Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$FalkorSyncUpdateHandler;
    }
.end annotation


# instance fields
.field private final FALKOR_DATASET:Ljava/lang/String;

.field private final FALKOR_NAMESPACE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;Lcom/amazon/kindle/services/authentication/IAccountProvider;)V
    .locals 2

    const-class v0, Lcom/amazon/device/sync/SyncInit;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "authManager"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "extensionManager"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "accountProvider"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 39
    const-class p2, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    invoke-static {p2}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Log.getTag(FalkorLastRea\u2026anagerClient::class.java)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->TAG:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->TAG:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    invoke-interface {p2}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    const-string v1, "ThreadPoolManager.getIns\u2026Name(TAG).buildExecutor()"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->executorService:Ljava/util/concurrent/ExecutorService;

    const-string p2, "Falkor"

    .line 41
    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->FALKOR_NAMESPACE:Ljava/lang/String;

    const-string p2, "FalkorLastRead"

    .line 42
    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->FALKOR_DATASET:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 47
    monitor-enter p3

    .line 48
    :try_start_0
    invoke-interface {p3, v0}, Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;->lookupExtensionObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/device/sync/SyncInit;

    if-nez p2, :cond_0

    .line 50
    new-instance p2, Lcom/amazon/device/sync/SyncInit;

    invoke-direct {p2}, Lcom/amazon/device/sync/SyncInit;-><init>()V

    .line 51
    invoke-interface {p3, v0, p2}, Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;->registerExtensionObject(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 53
    :cond_0
    new-instance v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    new-instance v1, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$FalkorSyncUpdateHandler;

    invoke-direct {v1}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$FalkorSyncUpdateHandler;-><init>()V

    invoke-direct {v0, p1, v1, p4, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;-><init>(Landroid/app/Application;Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/device/sync/SyncInit;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    .line 54
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1
.end method

.method public static final synthetic access$getFALKOR_DATASET$p(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->FALKOR_DATASET:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFALKOR_NAMESPACE$p(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->FALKOR_NAMESPACE:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWhispersyncClient$p(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    return-object p0
.end method

.method private final handleUserLogout()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$handleUserLogout$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$handleUserLogout$1;-><init>(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->FALKOR_NAMESPACE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->connect([Ljava/lang/String;)Z

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    iget-object v1, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->FALKOR_NAMESPACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->FALKOR_DATASET:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->subscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getUpdateString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 4

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 94
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$FalkorLastReadEpisodeRecord;

    const-string v3, "episodeAsin"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "time"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1, v0}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$FalkorLastReadEpisodeRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate response string for Falkor LastReadEpisode update, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->handleUserLogout()V

    :cond_0
    return-void
.end method

.method public sync()V
    .locals 0

    return-void
.end method

.method public update(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 70
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;-><init>(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
