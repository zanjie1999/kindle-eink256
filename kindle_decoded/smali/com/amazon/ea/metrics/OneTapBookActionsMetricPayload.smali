.class public abstract Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;
.super Ljava/lang/Object;
.source "OneTapBookActionsMetricPayload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOneTapBookActionsMetricPayload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneTapBookActionsMetricPayload.kt\ncom/amazon/ea/metrics/OneTapBookActionsMetricPayload\n*L\n1#1,96:1\n*E\n"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributesMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    .line 27
    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getBookASIN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Unknown"

    :goto_0
    const-string v2, "book_asin"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBookASIN()Ljava/lang/String;
.end method

.method public getCountersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public abstract getEndTime()J
.end method

.method public getFreeText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public abstract getMetricSource()Ljava/lang/String;
.end method

.method public abstract getStartTime()J
.end method

.method public getTimersMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    .line 37
    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "action_start"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getEndTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "action_complete"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 39
    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getEndTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "action_latency"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 36
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 5

    .line 24
    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getEndTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getStartTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
