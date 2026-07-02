.class public final Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;
.super Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;
.source "OneTapBookActionsMetricPayload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload$Companion;
    }
.end annotation


# instance fields
.field private final bookASIN:Ljava/lang/String;

.field private final endTime:J

.field private final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->bookASIN:Ljava/lang/String;

    iput-wide p2, p0, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->startTime:J

    iput-wide p4, p0, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->endTime:J

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;JJ)Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;
    .locals 7

    new-instance v6, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;

    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getBookASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getBookASIN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getStartTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getStartTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getEndTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getEndTime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public getBookASIN()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->bookASIN:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->endTime:J

    return-wide v0
.end method

.method public getMetricSource()Ljava/lang/String;
    .locals 1

    const-string v0, "OneTapBuyLatency"

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->startTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getBookASIN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getStartTime()J

    move-result-wide v1

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getEndTime()J

    move-result-wide v1

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneTapBuyLatencyPayload(bookASIN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getBookASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getStartTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getEndTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
