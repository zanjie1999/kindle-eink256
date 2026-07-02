.class public Lcom/amazon/weblab/mobile/service/RequestFilterCache;
.super Ljava/lang/Object;
.source "RequestFilterCache.java"


# static fields
.field private static final CACHE_MAX_SIZE:I = 0x1f4

.field private static final EXPIRATION_DATE:I = 0xea60


# instance fields
.field private requestsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private triggerExpirationDate:I

.field private weblabClientIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const v0, 0xea60

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/amazon/weblab/mobile/service/RequestFilterCache;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->requestsMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iput p2, p0, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->triggerExpirationDate:I

    .line 37
    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->weblabClientIdentifier:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->triggerExpirationDate:I

    .line 39
    new-instance p1, Lcom/amazon/weblab/mobile/service/LRUCache;

    const/16 p2, 0x1f4

    invoke-direct {p1, p2}, Lcom/amazon/weblab/mobile/service/LRUCache;-><init>(I)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->requestsMap:Ljava/util/Map;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "weblabClientIdentifier can\'t be null nor empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createKey(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->getDirectedId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p3}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p3}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getTreatment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hasExpired(Ljava/lang/Long;)Z
    .locals 4

    .line 62
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget p1, p0, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->triggerExpirationDate:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addTriggerRequest(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)V
    .locals 2

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->createKey(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object p2, p0, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->requestsMap:Ljava/util/Map;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isCacheHit(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->createKey(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object p2, p0, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->requestsMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->hasExpired(Ljava/lang/Long;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->requestsMap:Ljava/util/Map;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->requestsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 94
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "Empty map"

    .line 95
    monitor-exit v1

    return-object v0

    .line 97
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 100
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 100
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
