.class public final Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
.super Ljava/lang/Object;
.source "ContentOpenMetricsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentOpenMetricsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentOpenMetricsManager.kt\ncom/amazon/kindle/metrics/ContentOpenMetricsManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,263:1\n13506#2,2:264\n13506#2,2:268\n13506#2,2:270\n13506#2,2:272\n13506#2,2:274\n13506#2,2:278\n13506#2,2:280\n13506#2,2:282\n8639#2,2:284\n9321#2,4:286\n181#3,2:266\n1819#4,2:276\n*E\n*S KotlinDebug\n*F\n+ 1 ContentOpenMetricsManager.kt\ncom/amazon/kindle/metrics/ContentOpenMetricsManager\n*L\n44#1,2:264\n89#1,2:268\n113#1,2:270\n135#1,2:272\n156#1,2:274\n213#1,2:278\n235#1,2:280\n257#1,2:282\n23#1,2:284\n23#1,4:286\n66#1,2:266\n191#1,2:276\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

.field private static final DOWNLOAD_CONTENT_OPEN_METRIC_TYPES:[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;


# instance fields
.field private final dcmMetricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

.field private final metricsMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsType;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final util:Lcom/amazon/kindle/metrics/ContentOpenMetricsUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 15
    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 16
    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 17
    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 14
    sput-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->DOWNLOAD_CONTENT_OPEN_METRIC_TYPES:[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)V
    .locals 5

    const-string v0, "dcmMetricsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->dcmMetricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    .line 21
    new-instance p1, Lcom/amazon/kindle/metrics/ContentOpenMetricsUtil;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/metrics/ContentOpenMetricsUtil;-><init>(Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;)V

    iput-object p1, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->util:Lcom/amazon/kindle/metrics/ContentOpenMetricsUtil;

    .line 23
    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->values()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object p1

    .line 284
    array-length v0, p1

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 285
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 286
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 24
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->metricsMaps:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES$cp()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->DOWNLOAD_CONTENT_OPEN_METRIC_TYPES:[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    return-object v0
.end method

.method private final checkAndSetConcurrentDownload(Lcom/amazon/kindle/metrics/ContentOpenMetricsType;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsType;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsData;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 62
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 64
    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 65
    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Increment concurrentDownload counter for all "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bookIDs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 67
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getCountingMetrics()Ljava/util/Map;

    move-result-object v1

    const-string v2, "concurrentDownload"

    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;->getCount()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int v1, v0, v1

    .line 68
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;

    invoke-virtual {p2, v2, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final varargs declared-synchronized addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "types"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto :goto_3

    .line 268
    :cond_0
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p4, v2

    .line 90
    iget-object v4, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->metricsMaps:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 91
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getAttributes()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 93
    invoke-virtual {v3, p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_5
    monitor-exit p0

    return-void

    .line 85
    :cond_6
    :goto_3
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to add attributes with key: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bookID: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs declared-synchronized addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "types"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;J[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs declared-synchronized addElapsedTimers(Ljava/util/List;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "[",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsType;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 276
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 192
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-object v1, p0

    move-object v3, p2

    move-wide v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;J[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getUtil()Lcom/amazon/kindle/metrics/ContentOpenMetricsUtil;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->util:Lcom/amazon/kindle/metrics/ContentOpenMetricsUtil;

    return-object v0
.end method

.method public final varargs declared-synchronized incrementCounters(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "types"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 272
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 136
    iget-object v3, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->metricsMaps:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_2
    monitor-exit p0

    return-void

    .line 131
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to increment counters for key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bookID: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs declared-synchronized removeMetrics(Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 253
    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;->access$getTAG$p()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 282
    :cond_0
    :try_start_1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 258
    iget-object v3, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->metricsMaps:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs retrieveAttribute(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "[",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsType;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "types"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    .line 112
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 270
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p3, v3

    .line 114
    iget-object v5, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->metricsMaps:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v5}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getAttributes()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v5, v0

    :goto_2
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    .line 108
    :cond_4
    :goto_3
    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to lookup for values with key: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bookID: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public final varargs declared-synchronized setCounters(Ljava/lang/String;ILcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "types"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto :goto_3

    .line 274
    :cond_0
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p4, v2

    .line 157
    iget-object v4, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->metricsMaps:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 158
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getCountingMetrics()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 160
    invoke-virtual {v3, p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_5
    monitor-exit p0

    return-void

    .line 152
    :cond_6
    :goto_3
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set counters for key: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bookID: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs declared-synchronized setElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;J[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "types"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 278
    :cond_0
    array-length v0, p5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p5, v2

    .line 214
    iget-object v4, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->metricsMaps:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v4, v3

    const/4 v3, 0x1

    if-eqz v4, :cond_3

    .line 215
    invoke-virtual {v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getTimingMetrics()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 217
    invoke-virtual {v4}, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;->getTapTimestamp()J

    move-result-wide v6

    move-object v5, p1

    move-wide v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addTimingMetric(Ljava/lang/String;JJ)Lcom/amazon/kindle/krx/metrics/MetricsData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_5
    monitor-exit p0

    return-void

    .line 209
    :cond_6
    :goto_3
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to add elapsed timers for key: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bookID: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs declared-synchronized startExperiences(Lcom/amazon/kindle/model/content/IBookID;ZLjava/lang/String;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    monitor-enter p0

    :try_start_0
    const-string v4, "types"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 37
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    if-nez v2, :cond_1

    goto :goto_2

    .line 43
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 264
    array-length v14, v3

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_3

    aget-object v10, v3, v15

    .line 45
    new-instance v11, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;

    iget-object v5, v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->dcmMetricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    invoke-virtual {v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getDefaultDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->getExperienceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    sget-object v8, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v5, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    move-object v5, v11

    move-object v8, v4

    move-object/from16 p2, v4

    move-object v3, v10

    move-object v4, v11

    move-wide v10, v12

    invoke-direct/range {v5 .. v11}, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    const-string v5, "entryPoint"

    .line 46
    invoke-virtual {v4, v5, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 47
    iget-object v5, v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->metricsMaps:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_2

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;

    .line 49
    :cond_2
    invoke-direct {v1, v3, v5}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->checkAndSetConcurrentDownload(Lcom/amazon/kindle/metrics/ContentOpenMetricsType;Ljava/util/concurrent/ConcurrentHashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, p2

    move-object/from16 v3, p4

    goto :goto_1

    .line 51
    :cond_3
    monitor-exit p0

    return-void

    .line 39
    :cond_4
    :goto_2
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start content open experience for BookID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", entryPoint: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs declared-synchronized submitMetrics(Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 231
    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;->access$getTAG$p()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 280
    :cond_0
    :try_start_1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    .line 236
    iget-object v3, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->metricsMaps:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsData;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 239
    iget-object v3, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->dcmMetricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
