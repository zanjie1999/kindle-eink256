.class public Lcom/audible/application/stats/StatsNetworking;
.super Ljava/lang/Object;
.source "StatsNetworking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;,
        Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;
    }
.end annotation


# static fields
.field private static final GET_AGGREGATES:Ljava/lang/String; = "/stats/aggregates"

.field private static final GET_BADGE_METADATA:Ljava/lang/String; = "/badges/metadata"

.field private static final GET_BADGE_PROGRESS:Ljava/lang/String; = "/badges/progress"

.field private static final PUT_STATS_EVENTS:Ljava/lang/String; = "/stats/events"


# instance fields
.field private mConnectivityManager:Lcom/audible/application/stats/util/IConnectivityManager;

.field private mEndpoint:Ljava/net/URI;

.field private final mEndpointLock:Ljava/lang/Object;

.field private mHttpClientManager:Lcom/audible/application/stats/util/IHttpClientManager;


# direct methods
.method public constructor <init>(Lcom/audible/application/stats/util/IHttpClientManager;Lcom/audible/application/stats/util/IConnectivityManager;Ljava/net/URI;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/audible/application/stats/StatsNetworking;->mEndpointLock:Ljava/lang/Object;

    .line 165
    iput-object p1, p0, Lcom/audible/application/stats/StatsNetworking;->mHttpClientManager:Lcom/audible/application/stats/util/IHttpClientManager;

    .line 166
    iput-object p2, p0, Lcom/audible/application/stats/StatsNetworking;->mConnectivityManager:Lcom/audible/application/stats/util/IConnectivityManager;

    .line 167
    iput-object p3, p0, Lcom/audible/application/stats/StatsNetworking;->mEndpoint:Ljava/net/URI;

    return-void
.end method

.method private constructGetParamRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    const-string v0, ""

    .line 205
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getEndpointAsString()Ljava/lang/String;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/audible/application/stats/StatsNetworking;->mEndpointLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/audible/application/stats/StatsNetworking;->mEndpoint:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected buildListeningStatsEventErrorList(Lcom/audible/application/stats/util/IHttpClientManager$Response;[Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;
    .locals 7

    .line 301
    new-instance v0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;

    invoke-direct {v0, p0}, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;-><init>(Lcom/audible/application/stats/StatsNetworking;)V

    const/4 v1, 0x1

    .line 302
    invoke-virtual {v0, v1}, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->setIsError(Z)V

    .line 303
    invoke-interface {p1}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v3, v2, :cond_0

    invoke-interface {p1}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 305
    invoke-virtual {v0, v1}, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->setIsClientError(Z)V

    :cond_0
    const-string v2, "Value \'(.*?)\' at \'payload\\.stats\\.(.*?)\\.member\\.(.*?)\'"

    .line 313
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 315
    invoke-interface {p1}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getResponseAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 316
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 318
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x3

    .line 319
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid poperty "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with value "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 321
    array-length v2, p2

    if-ge v3, v2, :cond_1

    if-ltz v3, :cond_1

    .line 322
    aget-object v2, p2, v3

    invoke-virtual {v0, v2}, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->addErrorStatsEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public dispatchCompletedEvents([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;
    .locals 5

    const-string v0, "StatsNetworking - entering dispatchCompletedEvents"

    .line 338
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;

    invoke-direct {v0, p0}, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;-><init>(Lcom/audible/application/stats/StatsNetworking;)V

    .line 343
    new-instance v1, Lcom/audible/mobile/stats/domain/StatsPayload$Builder;

    invoke-direct {v1}, Lcom/audible/mobile/stats/domain/StatsPayload$Builder;-><init>()V

    .line 344
    invoke-virtual {v1, p1}, Lcom/audible/mobile/stats/domain/StatsPayload$Builder;->withStats([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)Lcom/audible/mobile/stats/domain/StatsPayload$Builder;

    .line 346
    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/StatsPayload$Builder;->build()Lcom/audible/mobile/stats/domain/StatsPayload;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsNetworking;->isUserOnline()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 349
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StatsNetworking - Payload: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v1}, Lcom/audible/application/stats/StatsNetworking;->dispatchCompletedEvents(Ljava/lang/String;)Lcom/audible/application/stats/util/IHttpClientManager$Response;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "StatsNetworking - Failed to perform request dispatchCompletedEvents, "

    .line 352
    invoke-static {v4, v2}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    .line 354
    invoke-virtual {v0, v3}, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->setIsError(Z)V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    const-string p1, "StatsNetworking - Failed response from server during dispatchCompletedEvents, null"

    .line 358
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, v3}, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->setIsError(Z)V

    goto :goto_2

    :cond_0
    const/16 v3, 0x12c

    .line 361
    invoke-interface {v2}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getStatusCode()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-interface {v2}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_1

    .line 369
    invoke-interface {v2}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getResponseAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->setStatsNetworkingJSON(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 370
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 371
    aget-object v2, p1, v1

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StatsNetworking#dispatchCompletedEvents -- uploaded stats: asin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsNetworking - Error code response, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getStatusCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 381
    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0, v2, p1}, Lcom/audible/application/stats/StatsNetworking;->buildListeningStatsEventErrorList(Lcom/audible/application/stats/util/IHttpClientManager$Response;[Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;

    move-result-object v0

    goto :goto_2

    .line 386
    :cond_2
    invoke-virtual {v0, v3}, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->setIsError(Z)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method protected dispatchCompletedEvents(Ljava/lang/String;)Lcom/audible/application/stats/util/IHttpClientManager$Response;
    .locals 4

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/audible/application/stats/StatsNetworking;->getEndpointAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/stats/events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/audible/application/stats/StatsNetworking;->mHttpClientManager:Lcom/audible/application/stats/util/IHttpClientManager;

    sget-object v2, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->PUT:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/audible/application/stats/util/IHttpClientManager;->getEntityAsResponseViaSharedInstance(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;Z)Lcom/audible/application/stats/util/IHttpClientManager$Response;

    move-result-object p1

    return-object p1
.end method

.method public getAggregatedStats(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/audible/application/stats/integration/StoreType;)Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;
    .locals 2

    const-string v0, ""

    .line 487
    new-instance v1, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;

    invoke-direct {v1}, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 489
    invoke-virtual {v1, p1, p2}, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->withDailyListeningInterval(Ljava/util/Date;Ljava/util/Date;)Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 492
    invoke-virtual {v1, p3, p4}, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->withMonthlyListeningInterval(Ljava/util/Date;Ljava/util/Date;)Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;

    .line 494
    :cond_1
    invoke-virtual {v1, p5}, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->withGenerateTotalListeningStatFlag(Z)Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;

    .line 495
    invoke-virtual {v1, p6}, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->withStore(Lcom/audible/application/stats/integration/StoreType;)Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;

    .line 497
    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->build()Lcom/audible/mobile/stats/domain/AggregatedStatsPayload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload;->toRestfulString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string p4, "StatsNetworking#getAggregatedStats, request is: "

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    .line 498
    invoke-static {p2}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 502
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsNetworking;->isUserOnline()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 504
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "StatsNetworking - AggregatedStatsPayload: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0, p1}, Lcom/audible/application/stats/StatsNetworking;->getAggregates(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p4, "StatsNetworking - Failed to perform request getAggregatedStats, "

    .line 507
    invoke-static {p4, p3}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 508
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 509
    invoke-static {p3}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_2

    .line 511
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 513
    :try_start_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "StatsNetworking - AggregatedStatsResponse: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 514
    new-instance p4, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;

    invoke-direct {p4, p3}, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p2, p4

    goto :goto_1

    :catch_1
    move-exception p3

    const-string p4, "StatsNetworking - Failed to parse getAggregatedStats response, "

    .line 516
    invoke-static {p4, p3}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 518
    invoke-static {p3}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object p2
.end method

.method protected getAggregates(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/audible/application/stats/StatsNetworking;->getEndpointAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/stats/aggregates"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-direct {p0, v0, p1}, Lcom/audible/application/stats/StatsNetworking;->constructGetParamRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lcom/audible/application/stats/StatsNetworking;->mHttpClientManager:Lcom/audible/application/stats/util/IHttpClientManager;

    sget-object v1, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->GET:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/audible/application/stats/util/IHttpClientManager;->getEntityAsResponseViaSharedInstance(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;Z)Lcom/audible/application/stats/util/IHttpClientManager$Response;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatsNetworking - getAggregated Request.URL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatsNetworking - getAggregated Response.getStatusCode, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 255
    invoke-interface {v0}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getResponseAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBadgeIcon(Ljava/lang/String;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    .line 446
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsNetworking;->isUserOnline()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsNetworking - getBadgeIcon URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/audible/application/stats/StatsNetworking;->mHttpClientManager:Lcom/audible/application/stats/util/IHttpClientManager;

    sget-object v3, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->GET:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    invoke-interface {v2, v3, p1, v1, v0}, Lcom/audible/application/stats/util/IHttpClientManager;->getEntityAsBytesViaSharedInstance(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 455
    array-length v1, p1

    if-lez v1, :cond_1

    .line 456
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 457
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 458
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 459
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "StatsNetworking - Failed to perform request getBadgeIcon, "

    .line 464
    invoke-static {p2, p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public getBadgeMetadata(Lcom/audible/application/stats/integration/StoreType;)Lcom/audible/mobile/stats/domain/BadgeMetadataResponse;
    .locals 4

    const-string v0, ""

    const-string v1, "StatsNetworking - entering getBadgeMetadata"

    .line 399
    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 403
    :try_start_0
    new-instance v1, Lcom/audible/mobile/stats/domain/BadgeMetadataPayload;

    invoke-direct {v1, p1}, Lcom/audible/mobile/stats/domain/BadgeMetadataPayload;-><init>(Lcom/audible/application/stats/integration/StoreType;)V

    .line 404
    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/BadgeMetadataPayload;->toRestfulString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "StatsNetworking - Failed to build BadgeMetadataPayload, "

    .line 406
    invoke-static {v1, p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsNetworking;->isUserOnline()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsNetworking - BadgeMetadataPayload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, p1}, Lcom/audible/application/stats/StatsNetworking;->getBadgeMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "StatsNetworking - Failed to perform request getBadgeMetadata, "

    .line 417
    invoke-static {v3, v2}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 419
    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_0

    .line 421
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsNetworking - BadgeMetadataResponse: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 424
    new-instance v0, Lcom/audible/mobile/stats/domain/BadgeMetadataResponse;

    invoke-direct {v0, v2}, Lcom/audible/mobile/stats/domain/BadgeMetadataResponse;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "StatsNetworking - Failed to parse getBadgeMetadata response, "

    .line 426
    invoke-static {v2, v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 428
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return-object v1
.end method

.method protected getBadgeMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/audible/application/stats/StatsNetworking;->getEndpointAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/badges/metadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-direct {p0, v0, p1}, Lcom/audible/application/stats/StatsNetworking;->constructGetParamRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lcom/audible/application/stats/StatsNetworking;->mHttpClientManager:Lcom/audible/application/stats/util/IHttpClientManager;

    sget-object v1, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->GET:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/audible/application/stats/util/IHttpClientManager;->getEntityAsResponseViaSharedInstance(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;Z)Lcom/audible/application/stats/util/IHttpClientManager$Response;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatsNetworking - getBadgeMetadata Request.URL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatsNetworking - getBadgeMetadata Response.getStatusCode, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 238
    invoke-interface {v0}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getResponseAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getBadgeProgress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/audible/application/stats/StatsNetworking;->getEndpointAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/badges/progress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-direct {p0, v0, p1}, Lcom/audible/application/stats/StatsNetworking;->constructGetParamRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 269
    iget-object v0, p0, Lcom/audible/application/stats/StatsNetworking;->mHttpClientManager:Lcom/audible/application/stats/util/IHttpClientManager;

    sget-object v1, Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;->GET:Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/audible/application/stats/util/IHttpClientManager;->getEntityAsResponseViaSharedInstance(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;Z)Lcom/audible/application/stats/util/IHttpClientManager$Response;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatsNetworking - getBadgeProgress Request.URL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatsNetworking - getBadgeProgress Response.getStatusCode, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 272
    invoke-interface {v0}, Lcom/audible/application/stats/util/IHttpClientManager$Response;->getResponseAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCustomerBadgeProgress(Lcom/audible/application/stats/integration/StoreType;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;
    .locals 4

    const-string v0, ""

    const-string v1, "StatsNetworking - entering getCustomerBadgeProgress"

    .line 533
    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 537
    :try_start_0
    new-instance v1, Lcom/audible/mobile/stats/domain/CustomerBadgeProgressPayload;

    invoke-direct {v1, p1}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgressPayload;-><init>(Lcom/audible/application/stats/integration/StoreType;)V

    .line 538
    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;->toRestfulString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "StatsNetworking - Failed to build BadgeMetadataPayload, "

    .line 540
    invoke-static {v1, p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 541
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsNetworking;->isUserOnline()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsNetworking - CustomerBadgeProgressPayload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0, p1}, Lcom/audible/application/stats/StatsNetworking;->getBadgeProgress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "StatsNetworking - Failed to perform request getCustomerBadgeProgress, "

    .line 551
    invoke-static {v3, v2}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 553
    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_0

    .line 555
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsNetworking - CustomerBadgeProgressResponse: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 558
    new-instance v0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;

    invoke-direct {v0, v2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "StatsNetworking - Failed to parse CustomerBadgeProgressResponse response, "

    .line 560
    invoke-static {v2, v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->pii(Ljava/lang/String;)V

    .line 562
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return-object v1
.end method

.method protected isUserOnline()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/audible/application/stats/StatsNetworking;->mConnectivityManager:Lcom/audible/application/stats/util/IConnectivityManager;

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Lcom/audible/application/stats/util/IConnectivityManager;->hasNetworkConnection()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method updateStatsEndpoint(Ljava/net/URI;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/audible/application/stats/StatsNetworking;->mEndpointLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iput-object p1, p0, Lcom/audible/application/stats/StatsNetworking;->mEndpoint:Ljava/net/URI;

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
