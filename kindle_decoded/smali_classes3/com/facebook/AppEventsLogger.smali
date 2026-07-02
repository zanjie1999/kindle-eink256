.class public Lcom/facebook/AppEventsLogger;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AppEventsLogger$PersistedEvents;,
        Lcom/facebook/AppEventsLogger$AppEvent;,
        Lcom/facebook/AppEventsLogger$SessionEventsState;,
        Lcom/facebook/AppEventsLogger$FlushStatistics;,
        Lcom/facebook/AppEventsLogger$FlushResult;,
        Lcom/facebook/AppEventsLogger$FlushReason;,
        Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;,
        Lcom/facebook/AppEventsLogger$FlushBehavior;
    }
.end annotation


# static fields
.field private static final APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS:I = 0x15180

.field private static final FLUSH_APP_SESSION_INFO_IN_SECONDS:I = 0x1e

.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0x3c

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT:Ljava/lang/String; = "_fbSourceApplicationHasBeenSet"

.field private static final TAG:Ljava/lang/String; = "com.facebook.AppEventsLogger"

.field private static applicationContext:Landroid/content/Context;

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

.field private static hashedDeviceAndAppId:Ljava/lang/String;

.field private static isOpenedByApplink:Z

.field private static requestInFlight:Z

.field private static sourceApplication:Ljava/lang/String;

.field private static stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;",
            "Lcom/facebook/AppEventsLogger$SessionEventsState;",
            ">;"
        }
    .end annotation
.end field

.field private static staticLock:Ljava/lang/Object;


# instance fields
.field private final accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 147
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    .line 150
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/AppEventsLogger$FlushBehavior;

    sput-object v0, Lcom/facebook/AppEventsLogger;->flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V
    .locals 1

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context"

    .line 603
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iput-object p1, p0, Lcom/facebook/AppEventsLogger;->context:Landroid/content/Context;

    if-nez p3, :cond_0

    .line 607
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object p3

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 611
    invoke-virtual {p3}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    :cond_1
    new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-direct {v0, p3}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/Session;)V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 618
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 620
    :cond_3
    new-instance p3, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p2}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .line 623
    :goto_0
    sget-object p3, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter p3

    .line 625
    :try_start_0
    sget-object v0, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 626
    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    .line 629
    :cond_4
    sget-object p2, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    if-nez p2, :cond_5

    .line 630
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    .line 632
    :cond_5
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    invoke-static {}, Lcom/facebook/AppEventsLogger;->initializeTimersIfNeeded()V

    return-void

    :catchall_0
    move-exception p1

    .line 632
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic access$1000()Landroid/content/Context;
    .locals 1

    .line 114
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 114
    sget-object v0, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->flushAndWait(Lcom/facebook/AppEventsLogger$FlushReason;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .line 114
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    .line 114
    sget-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;
    .locals 0

    .line 114
    invoke-static {p0, p1}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()V
    .locals 0

    .line 114
    invoke-static {}, Lcom/facebook/AppEventsLogger;->flushIfNecessary()V

    return-void
.end method

.method static synthetic access$900(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V
    .locals 0

    .line 114
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/AppEventsLogger;->handleResponse(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V

    return-void
.end method

.method private static accumulatePersistedEvents()I
    .locals 5

    .line 936
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger$PersistedEvents;->readAndClearStore(Landroid/content/Context;)Lcom/facebook/AppEventsLogger$PersistedEvents;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$PersistedEvents;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .line 940
    sget-object v4, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    move-result-object v4

    .line 942
    invoke-virtual {v0, v3}, Lcom/facebook/AppEventsLogger$PersistedEvents;->getEvents(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v3

    .line 943
    invoke-virtual {v4, v3}, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatePersistedEvents(Ljava/util/List;)V

    .line 944
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static buildAndExecuteRequests(Lcom/facebook/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/AppEventsLogger$FlushStatistics;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AppEventsLogger$FlushReason;",
            "Ljava/util/Set<",
            "Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;",
            ">;)",
            "Lcom/facebook/AppEventsLogger$FlushStatistics;"
        }
    .end annotation

    .line 801
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushStatistics;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/AppEventsLogger$FlushStatistics;-><init>(Lcom/facebook/AppEventsLogger$1;)V

    .line 803
    sget-object v2, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v2

    .line 805
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 806
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .line 807
    invoke-static {v4}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 812
    :cond_1
    invoke-static {v4, v5, v2, v0}, Lcom/facebook/AppEventsLogger;->buildRequestForSession(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;ZLcom/facebook/AppEventsLogger$FlushStatistics;)Lcom/facebook/Request;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 815
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 819
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 820
    sget-object p1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v1, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    const-string p0, "Flushing %d events due to %s."

    invoke-static {p1, v1, p0, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/Request;

    .line 827
    invoke-virtual {p1}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    return-object v1
.end method

.method private static buildRequestForSession(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;ZLcom/facebook/AppEventsLogger$FlushStatistics;)Lcom/facebook/Request;
    .locals 6

    .line 844
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 846
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "%s/activities"

    .line 848
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0, v1, v1}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    .line 856
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 858
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "access_token"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, v3}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 861
    invoke-virtual {v2}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v3

    invoke-virtual {v2}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsAttribution()Z

    move-result v2

    invoke-virtual {p1, v0, v3, v2, p2}, Lcom/facebook/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/Request;ZZZ)I

    move-result p2

    if-nez p2, :cond_1

    return-object v1

    .line 867
    :cond_1
    iget v1, p3, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    add-int/2addr v1, p2

    iput v1, p3, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    .line 869
    new-instance p2, Lcom/facebook/AppEventsLogger$7;

    invoke-direct {p2, p0, v0, p1, p3}, Lcom/facebook/AppEventsLogger$7;-><init>(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V

    invoke-virtual {v0, p2}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method private static flush(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .locals 2

    .line 760
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/AppEventsLogger$6;

    invoke-direct {v1, p0}, Lcom/facebook/AppEventsLogger$6;-><init>(Lcom/facebook/AppEventsLogger$FlushReason;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static flushAndWait(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .locals 3

    .line 771
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 772
    :try_start_0
    sget-boolean v1, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    if-eqz v1, :cond_0

    .line 773
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 775
    sput-boolean v1, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    .line 776
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 777
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 779
    invoke-static {}, Lcom/facebook/AppEventsLogger;->accumulatePersistedEvents()I

    const/4 v0, 0x0

    .line 783
    :try_start_1
    invoke-static {p0, v1}, Lcom/facebook/AppEventsLogger;->buildAndExecuteRequests(Lcom/facebook/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/AppEventsLogger$FlushStatistics;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught unexpected exception while flushing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    :goto_0
    sget-object p0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, 0x0

    .line 789
    :try_start_2
    sput-boolean v1, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    .line 790
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 793
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    iget v1, v0, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 795
    iget-object v0, v0, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    const-string v1, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 796
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 790
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    .line 777
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static flushIfNecessary()V
    .locals 3

    .line 709
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_0
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;

    move-result-object v1

    sget-object v2, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    if-eq v1, v2, :cond_0

    .line 711
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getAccumulatedEventCount()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 712
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->EVENT_THRESHOLD:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v1}, Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V

    .line 715
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getAccumulatedEventCount()I
    .locals 4

    .line 719
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 722
    :try_start_0
    sget-object v2, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/AppEventsLogger$SessionEventsState;

    .line 723
    invoke-virtual {v3}, Lcom/facebook/AppEventsLogger$SessionEventsState;->getAccumulatedEventCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 725
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 726
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;
    .locals 2

    .line 405
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_0
    sget-object v1, Lcom/facebook/AppEventsLogger;->flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 407
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;
    .locals 4

    .line 734
    sget-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AppEventsLogger$SessionEventsState;

    if-nez v0, :cond_0

    .line 738
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 741
    :goto_0
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 743
    :try_start_0
    sget-object v2, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/AppEventsLogger$SessionEventsState;

    if-nez v2, :cond_1

    .line 745
    new-instance v2, Lcom/facebook/AppEventsLogger$SessionEventsState;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    invoke-direct {v2, v0, p0, v3}, Lcom/facebook/AppEventsLogger$SessionEventsState;-><init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    sget-object p0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_1
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    .line 749
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getSessionEventsState(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;
    .locals 2

    .line 753
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_0
    sget-object v1, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/AppEventsLogger$SessionEventsState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 755
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static handleResponse(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V
    .locals 9

    .line 881
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 884
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 890
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    const-string p2, "Failed: No Connectivity"

    goto :goto_0

    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 892
    invoke-virtual {p2}, Lcom/facebook/Response;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "Failed:\n  Response: %s\n  Error %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 895
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->SERVER_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

    goto :goto_0

    :cond_1
    const-string p2, "Success"

    .line 899
    :goto_0
    sget-object v5, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v5}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 900
    invoke-virtual {p1}, Lcom/facebook/Request;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 904
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v5, "<Can\'t encode events for debug logging>"

    .line 910
    :goto_1
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v7, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/Request;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    aput-object p2, v8, v2

    aput-object v5, v8, v4

    const-string p1, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    invoke-static {v6, v7, p1, v8}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 917
    :goto_2
    invoke-virtual {p3, v2}, Lcom/facebook/AppEventsLogger$SessionEventsState;->clearInFlightAndStats(Z)V

    .line 919
    sget-object p1, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    if-ne v1, p1, :cond_4

    .line 924
    sget-object p1, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {p1, p0, p3}, Lcom/facebook/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;)V

    .line 927
    :cond_4
    sget-object p0, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    if-eq v1, p0, :cond_5

    .line 929
    iget-object p0, p4, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    sget-object p1, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    if-eq p0, p1, :cond_5

    .line 930
    iput-object v1, p4, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    :cond_5
    return-void
.end method

.method private static initializeTimersIfNeeded()V
    .locals 17

    .line 638
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 639
    :try_start_0
    sget-object v0, Lcom/facebook/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 640
    monitor-exit v1

    return-void

    .line 642
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 643
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    new-instance v4, Lcom/facebook/AppEventsLogger$3;

    invoke-direct {v4}, Lcom/facebook/AppEventsLogger$3;-><init>()V

    .line 654
    sget-object v3, Lcom/facebook/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3c

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 661
    new-instance v11, Lcom/facebook/AppEventsLogger$4;

    invoke-direct {v11}, Lcom/facebook/AppEventsLogger$4;-><init>()V

    .line 676
    sget-object v10, Lcom/facebook/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v12, 0x0

    const-wide/32 v14, 0x15180

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v10 .. v16}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception v0

    .line 643
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static logEvent(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AppEvent;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)V
    .locals 2

    .line 692
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/AppEventsLogger$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/AppEventsLogger$5;-><init>(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$AppEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .locals 7

    .line 685
    new-instance v6, Lcom/facebook/AppEventsLogger$AppEvent;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger;->context:Landroid/content/Context;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AppEventsLogger$AppEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 686
    iget-object p1, p0, Lcom/facebook/AppEventsLogger;->context:Landroid/content/Context;

    iget-object p2, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-static {p1, v6, p2}, Lcom/facebook/AppEventsLogger;->logEvent(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AppEvent;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)V

    return-void
.end method

.method public static newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;
    .locals 2

    .line 343
    new-instance v0, Lcom/facebook/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;
    .locals 2

    .line 356
    new-instance v0, Lcom/facebook/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;
    .locals 2

    .line 385
    new-instance v0, Lcom/facebook/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 470
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 564
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    return-void
.end method
