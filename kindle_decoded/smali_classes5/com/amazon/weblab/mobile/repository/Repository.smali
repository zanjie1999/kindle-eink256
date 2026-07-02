.class Lcom/amazon/weblab/mobile/repository/Repository;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/repository/IRepository;


# static fields
.field private static final TAG:Ljava/lang/String; = "Repository"


# instance fields
.field private final TEN_MIN_IN_MILLIS:J

.field private final TREATMENTS_CACHE_DURATION_IN_DAYS:I

.field private mApplicationVersion:Ljava/lang/String;

.field private mFailsafeRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

.field private mLastSeenCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

.field private mPolicy:Lcom/amazon/weblab/mobile/cache/ICachePolicy;

.field mRestoreObject:Ljava/lang/Object;

.field private mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

.field private mStorage:Lcom/amazon/weblab/mobile/repository/IStorage;

.field private mTreatments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private mWeblabClientIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/weblab/mobile/cache/ICachePolicy;Lcom/amazon/weblab/mobile/repository/IStorage;Ljava/lang/String;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x927c0

    .line 22
    iput-wide v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->TEN_MIN_IN_MILLIS:J

    const/16 v0, 0x1e

    .line 23
    iput v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->TREATMENTS_CACHE_DURATION_IN_DAYS:I

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mRestoreObject:Ljava/lang/Object;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 49
    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mPolicy:Lcom/amazon/weblab/mobile/cache/ICachePolicy;

    .line 50
    iput-object p2, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mStorage:Lcom/amazon/weblab/mobile/repository/IStorage;

    .line 51
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    .line 52
    iput-object p3, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mWeblabClientIdentifier:Ljava/lang/String;

    .line 53
    new-instance p1, Lcom/amazon/weblab/mobile/model/CustomerInfo;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/amazon/weblab/mobile/model/CustomerInfo;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mLastSeenCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "storage can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "policy can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private filterAssignments(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 259
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 263
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.weblab.mobile.version.Default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 264
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getKeepInCacheDateInMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 265
    invoke-virtual {v1, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    .line 268
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private isAllocationChange(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getTreatment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getTreatment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private removeInconsistentAllocations(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 146
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 150
    iget-object v2, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 153
    invoke-direct {p0, v0, v1}, Lcom/amazon/weblab/mobile/repository/Repository;->isAllocationChange(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->setAllocationChanged(Z)V

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->isAllocationChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getDateModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getDateModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 160
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetAllocationChangedFlags()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v1, v2}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->setAllocationChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePlatformSpecificWeblabs(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-static {}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->values()[Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

    move-result-object v0

    .line 119
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 120
    invoke-virtual {v3}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->getWeblabName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    if-eqz v4, :cond_0

    .line 122
    invoke-static {v3, v4}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->setWeblabTreatment(Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mRestoreObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 62
    :try_start_0
    iput-object v1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mApplicationVersion:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    .line 64
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 65
    invoke-static {}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->clear()V

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsValidatedWeblab(Ljava/lang/String;)Z
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFailsafeRepository()Lcom/amazon/weblab/mobile/repository/IRepository;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mFailsafeRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    return-object v0
.end method

.method public getSessionInfo()Lcom/amazon/weblab/mobile/model/SessionInfo;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    return-object v0
.end method

.method public final getTreatmentAssignment(Ljava/lang/String;)Lcom/amazon/weblab/mobile/model/TreatmentAssignment;
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    if-eqz v0, :cond_0

    .line 322
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mPolicy:Lcom/amazon/weblab/mobile/cache/ICachePolicy;

    invoke-interface {p1, v0}, Lcom/amazon/weblab/mobile/cache/ICachePolicy;->applyPolicy(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)V

    return-object v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mWeblabClientIdentifier:Ljava/lang/String;

    const-string v1, "RepositoryTreatmentAssignmentNotFoundError"

    invoke-static {v1, p1, v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weblab "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasBackup()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mStorage:Lcom/amazon/weblab/mobile/repository/IStorage;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/repository/IStorage;->hasBackup()Z

    move-result v0

    return v0
.end method

.method public final pushAll(Ljava/util/Map;Lcom/amazon/weblab/mobile/model/CustomerInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/repository/Repository;->updatePlatformSpecificWeblabs(Ljava/util/Map;)V

    if-eqz p2, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mLastSeenCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-virtual {v0, p2}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mLastSeenCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->getDirectedId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->setDirectedId(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/repository/Repository;->resetAllocationChangedFlags()V

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/repository/Repository;->removeInconsistentAllocations(Ljava/util/Map;)V

    .line 97
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 100
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getKeepInCacheDateInMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->setKeepInCacheDateInMillis(J)V

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "map can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public restore()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 283
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 284
    iget-object v2, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mStorage:Lcom/amazon/weblab/mobile/repository/IStorage;

    invoke-interface {v2}, Lcom/amazon/weblab/mobile/repository/IStorage;->readBackup()Lcom/amazon/weblab/mobile/repository/StorageEntity;

    move-result-object v2

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    sub-double/2addr v3, v0

    .line 288
    invoke-virtual {v2}, Lcom/amazon/weblab/mobile/repository/StorageEntity;->getTreatments()Ljava/util/Map;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " assignments from the disk."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logDebugForAutomation(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, v0}, Lcom/amazon/weblab/mobile/repository/Repository;->updatePlatformSpecificWeblabs(Ljava/util/Map;)V

    .line 293
    invoke-virtual {v2}, Lcom/amazon/weblab/mobile/repository/StorageEntity;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mApplicationVersion:Ljava/lang/String;

    .line 294
    invoke-virtual {v2}, Lcom/amazon/weblab/mobile/repository/StorageEntity;->getSessionInfo()Lcom/amazon/weblab/mobile/model/SessionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    .line 295
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/amazon/weblab/mobile/repository/StorageEntity;->getTreatments()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v0, "RepositoryRestoreReadBackupSuccess"

    .line 297
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    const-string v0, "RepositoryRestoreReadBackupTime"

    .line 298
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v0, v3, v4, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mWeblabClientIdentifier:Ljava/lang/String;

    const-string v3, "RepositoryRestoreReadBackupParseError"

    invoke-static {v3, v1, v2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 306
    new-instance v1, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    const-string v2, "An error ocurred while parsing the data from the storage"

    invoke-direct {v1, v2, v0}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mWeblabClientIdentifier:Ljava/lang/String;

    const-string v3, "RepositoryRestoreReadBackupIOError"

    invoke-static {v3, v1, v2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 302
    new-instance v1, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    const-string v2, "An error ocurred while trying to read from"

    invoke-direct {v1, v2, v0}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public save()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mApplicationVersion:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 220
    new-instance v1, Lcom/amazon/weblab/mobile/repository/StorageEntity;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mApplicationVersion:Ljava/lang/String;

    new-instance v3, Lcom/amazon/weblab/mobile/model/SessionInfo;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    invoke-direct {v3, v4}, Lcom/amazon/weblab/mobile/model/SessionInfo;-><init>(Lcom/amazon/weblab/mobile/model/SessionInfo;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/amazon/weblab/mobile/repository/StorageEntity;-><init>(Ljava/lang/String;Lcom/amazon/weblab/mobile/model/SessionInfo;Ljava/util/Map;)V

    .line 223
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    .line 227
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/repository/StorageEntity;->getTreatments()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 228
    invoke-virtual {v4}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getKeepInCacheDateInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->setKeepInCacheDateInMillis(J)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/repository/StorageEntity;->getTreatments()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/weblab/mobile/repository/Repository;->filterAssignments(Ljava/util/Map;)Ljava/util/Map;

    .line 235
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mStorage:Lcom/amazon/weblab/mobile/repository/IStorage;

    invoke-interface {v0, v1}, Lcom/amazon/weblab/mobile/repository/IStorage;->writeBackup(Lcom/amazon/weblab/mobile/repository/StorageEntity;)V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    sub-double/2addr v0, v2

    const-string v2, "RepositorySaveWriteBackupTime"

    .line 238
    iget-object v3, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    const-string v0, "RepositorySaveWriteBackupSuccess"

    .line 239
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mWeblabClientIdentifier:Ljava/lang/String;

    const-string v3, "RepositorySaveWriteBackupParseError"

    invoke-static {v3, v1, v2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 247
    new-instance v1, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    const-string v2, "An error ocurred while parsing the data before writing to storage"

    invoke-direct {v1, v2, v0}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mWeblabClientIdentifier:Ljava/lang/String;

    const-string v3, "RepositorySaveWriteBackupIOError"

    invoke-static {v3, v1, v2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 243
    new-instance v1, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    const-string v2, "An error ocurred while trying to write to storage"

    invoke-direct {v1, v2, v0}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 218
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot save, empty collection of weblabs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot save, the session info has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot save, the application version has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setApplicationVersion(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mApplicationVersion:Ljava/lang/String;

    return-void

    .line 367
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "applicationVersion can\'t be null nor empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFailsafeRepository(Lcom/amazon/weblab/mobile/repository/IRepository;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mFailsafeRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    return-void
.end method

.method public setSessionInfo(Lcom/amazon/weblab/mobile/model/SessionInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 342
    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    return-void

    .line 340
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "info can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateKeepInCacheDateInMillis(Ljava/lang/String;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/Repository;->mTreatments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->setKeepInCacheDateInMillis(J)V

    return-void
.end method
