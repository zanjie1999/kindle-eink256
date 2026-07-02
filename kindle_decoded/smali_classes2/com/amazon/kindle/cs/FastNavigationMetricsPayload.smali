.class public final Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;
.super Ljava/lang/Object;
.source "FastNavigationMetricsPayload.kt"

# interfaces
.implements Lcom/amazon/kindle/cs/AggregatedMetric;


# instance fields
.field private final actionType:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

.field private final bookLength:I

.field private final context:Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

.field private count:I

.field private final endPosition:I

.field private final navMode:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

.field private shouldAggregate:Z

.field private final startPosition:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;IIII)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->context:Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    .line 17
    iput-object p2, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->actionType:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    .line 18
    iput-object p3, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->navMode:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    .line 19
    iput p4, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->startPosition:I

    .line 20
    iput p5, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->endPosition:I

    .line 21
    iput p6, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->bookLength:I

    .line 22
    iput p7, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->count:I

    .line 24
    sget-object p1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_TURN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->setShouldAggregate(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 15
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;-><init>(Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;IIII)V

    return-void
.end method


# virtual methods
.method public aggregate(Lcom/amazon/kindle/cs/AggregatedMetric;)Lcom/amazon/kindle/cs/AggregatedMetric;
    .locals 11

    const-string v0, "otherMetric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p1, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getShouldAggregate()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->context:Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    iget-object v4, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->context:Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    if-ne v2, v4, :cond_2

    iget-object v2, v0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->actionType:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    iget-object v5, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->actionType:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-ne v2, v5, :cond_2

    iget-object v2, v0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->navMode:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    iget-object v6, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->navMode:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    if-ne v2, v6, :cond_2

    iget v0, v0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->bookLength:I

    iget v9, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->bookLength:I

    if-eq v0, v9, :cond_1

    goto :goto_1

    .line 37
    :cond_1
    new-instance v0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    .line 41
    iget v7, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->startPosition:I

    .line 42
    check-cast p1, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    iget v8, p1, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->endPosition:I

    .line 44
    iget p1, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->count:I

    add-int/lit8 v10, p1, 0x1

    move-object v3, v0

    .line 37
    invoke-direct/range {v3 .. v10}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;-><init>(Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;IIII)V

    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final getActionType()Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->actionType:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    return-object v0
.end method

.method public final getBookLength()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->bookLength:I

    return v0
.end method

.method public final getContext()Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->context:Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->count:I

    return v0
.end method

.method public final getEndPosition()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->endPosition:I

    return v0
.end method

.method public final getNavMode()Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->navMode:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    return-object v0
.end method

.method public getShouldAggregate()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->shouldAggregate:Z

    return v0
.end method

.method public final getStartPosition()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->startPosition:I

    return v0
.end method

.method public setShouldAggregate(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->shouldAggregate:Z

    return-void
.end method
