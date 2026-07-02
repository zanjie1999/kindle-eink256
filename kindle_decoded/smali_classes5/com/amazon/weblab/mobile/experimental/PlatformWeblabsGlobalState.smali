.class public Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;
.super Ljava/lang/Object;
.source "PlatformWeblabsGlobalState.java"


# static fields
.field private static final MIN_TRIGGER_INTERVAL_MILLIS:J = 0x927c0L

.field private static lastTriggeredTime:J

.field private static final mInternalWeblabs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation
.end field

.field static final mUpdatedOnlyOnStartupWeblabs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->mInternalWeblabs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->mUpdatedOnlyOnStartupWeblabs:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, 0x0

    .line 41
    sput-wide v0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->lastTriggeredTime:J

    return-void
.end method

.method private static canTrigger(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->canTrigger()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->isLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static clear()V
    .locals 1

    .line 106
    sget-object v0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->mInternalWeblabs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static getTreatmentsToTrigger()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 79
    sget-wide v2, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->lastTriggeredTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/32 v5, 0x927c0

    cmp-long v7, v2, v5

    if-gez v7, :cond_0

    return-object v4

    .line 84
    :cond_0
    sput-wide v0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->lastTriggeredTime:J

    .line 85
    sget-object v0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->mInternalWeblabs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 88
    invoke-static {v2}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->canTrigger(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v4

    :cond_3
    return-object v1
.end method

.method public static setWeblabTreatment(Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->isUpdateOnlyOnce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->mUpdatedOnlyOnStartupWeblabs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    sget-object v0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->mInternalWeblabs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
