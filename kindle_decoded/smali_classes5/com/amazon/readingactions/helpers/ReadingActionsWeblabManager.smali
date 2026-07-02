.class public Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;
.super Ljava/lang/Object;
.source "ReadingActionsWeblabManager.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/mobileweblab/IWeblabConfiguration;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadingActionsWeblabManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadingActionsWeblabManager.kt\ncom/amazon/readingactions/helpers/ReadingActionsWeblabManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,48:1\n6872#2,2:49\n7464#2,4:51\n*E\n*S KotlinDebug\n*F\n+ 1 ReadingActionsWeblabManager.kt\ncom/amazon/readingactions/helpers/ReadingActionsWeblabManager\n*L\n26#1,2:49\n26#1,4:51\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isWeblabEnabled(Ljava/lang/String;Z)Z
    .locals 3

    .line 38
    const-class v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    if-eqz v0, :cond_2

    .line 39
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "weblab"

    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object p2

    .line 42
    :goto_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Weblab treatment: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "T1"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getKnownWeblabs()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/amazon/readingactions/helpers/WeblabName;->values()[Lcom/amazon/readingactions/helpers/WeblabName;

    move-result-object v0

    .line 49
    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 50
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 51
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 26
    new-instance v5, Lkotlin/Pair;

    invoke-virtual {v4}, Lcom/amazon/readingactions/helpers/WeblabName;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/amazon/readingactions/helpers/WeblabName;->getDefaultTreatment()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final isWeblabEnabled(Lcom/amazon/readingactions/helpers/WeblabName;Z)Z
    .locals 1

    const-string/jumbo v0, "weblabName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/amazon/readingactions/helpers/WeblabName;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;->isWeblabEnabled(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
