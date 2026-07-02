.class public Lcom/amazon/xray/metrics/Metric;
.super Ljava/lang/Object;
.source "Metric.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/xray/metrics/Metric;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected counters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected flags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected isClosed:Z

.field private final operation:Ljava/lang/String;

.field protected transient startTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected state:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected times:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/xray/metrics/Metric$1;

    invoke-direct {v0}, Lcom/amazon/xray/metrics/Metric$1;-><init>()V

    sput-object v0, Lcom/amazon/xray/metrics/Metric;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    const-class v0, Lcom/amazon/xray/metrics/Metric;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/metrics/Metric;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/xray/metrics/Metric;->EMPTY_STRING_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/amazon/xray/metrics/Metric;->isClosed:Z

    .line 86
    iput-object p1, p0, Lcom/amazon/xray/metrics/Metric;->operation:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/amazon/xray/metrics/Metric;->isClosed:Z

    .line 112
    iput-object p1, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    .line 113
    iput-object p2, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    .line 114
    iput-object p3, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    .line 115
    iput-object p4, p0, Lcom/amazon/xray/metrics/Metric;->attributes:Ljava/util/Map;

    .line 116
    iput-object p5, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    .line 117
    iput-object p6, p0, Lcom/amazon/xray/metrics/Metric;->state:Ljava/util/Map;

    .line 118
    iput-object p7, p0, Lcom/amazon/xray/metrics/Metric;->operation:Ljava/lang/String;

    .line 119
    iput-boolean p8, p0, Lcom/amazon/xray/metrics/Metric;->isClosed:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 7

    monitor-enter p0

    .line 390
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/xray/metrics/Metric;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 391
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 394
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/xray/metrics/Metric;->stopAllStartedTimers(Z)V

    const/4 v1, 0x0

    .line 398
    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v1

    goto :goto_3

    .line 399
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    .line 400
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :cond_4
    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 402
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 403
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 410
    :goto_3
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 411
    sget-object v0, Lcom/amazon/xray/metrics/Metric;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submitting metrics for operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->operation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".  CountersAndFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". With attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->attributes:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_6
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->operation:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    iget-object v5, p0, Lcom/amazon/xray/metrics/Metric;->attributes:Ljava/util/Map;

    const-string v6, ""

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcom/amazon/xray/metrics/Metric;->isClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getStartedTimers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Lcom/amazon/xray/metrics/Metric;->EMPTY_STRING_SET:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 349
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->state:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 362
    monitor-exit p0

    return-object p1

    .line 364
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->state:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized incrementCount(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 211
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized incrementCount(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized incrementTime(Ljava/lang/String;J)V
    .locals 3

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 270
    :goto_0
    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 271
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initCount(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initFlag(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/metrics/Metric;->attributes:Ljava/util/Map;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCount(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlag(Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setState(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->state:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/metrics/Metric;->state:Ljava/util/Map;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->state:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTime(Ljava/lang/String;J)V
    .locals 1

    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startTimer(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopAllStartedTimers(Z)V
    .locals 2

    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/amazon/xray/metrics/Metric;->getStartedTimers()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 336
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 337
    invoke-virtual {p0, v1, p1}, Lcom/amazon/xray/metrics/Metric;->stopTimer(Ljava/lang/String;Z)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 340
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopTimer(Ljava/lang/String;Z)J
    .locals 4

    monitor-enter p0

    .line 306
    :try_start_0
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/amazon/xray/metrics/Metric;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping timer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 310
    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 312
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 313
    sget-object p1, Lcom/amazon/xray/metrics/Metric;->TAG:Ljava/lang/String;

    const-string p2, "Attempted to stop metric timer without first starting it; nothing will be recorded"

    invoke-static {p1, p2}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const-wide/16 p1, -0x1

    .line 315
    monitor-exit p0

    return-wide p1

    .line 317
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 318
    invoke-virtual {p0, p1, v2, v3}, Lcom/amazon/xray/metrics/Metric;->incrementTime(Ljava/lang/String;J)V

    if-eqz p2, :cond_4

    .line 320
    iget-object p2, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :cond_4
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 426
    monitor-enter p0

    .line 427
    :try_start_0
    iget-object p2, p0, Lcom/amazon/xray/metrics/Metric;->counters:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 428
    iget-object p2, p0, Lcom/amazon/xray/metrics/Metric;->flags:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 429
    iget-object p2, p0, Lcom/amazon/xray/metrics/Metric;->times:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 430
    iget-object p2, p0, Lcom/amazon/xray/metrics/Metric;->attributes:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 431
    iget-object p2, p0, Lcom/amazon/xray/metrics/Metric;->startTimes:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 432
    iget-object p2, p0, Lcom/amazon/xray/metrics/Metric;->state:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 433
    iget-object p2, p0, Lcom/amazon/xray/metrics/Metric;->operation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    iget-boolean p2, p0, Lcom/amazon/xray/metrics/Metric;->isClosed:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 435
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
