.class final Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;
.super Ljava/lang/Object;
.source "KRIFGestureMetricsHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GestureEventData"
.end annotation


# instance fields
.field private final gestureX:F

.field private final gestureY:F

.field private final timestamp:J

.field private final type:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;


# direct methods
.method public constructor <init>(FFLcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;J)V
    .locals 1

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureX:F

    iput p2, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureY:F

    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->type:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    iput-wide p4, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->timestamp:J

    return-void
.end method

.method public synthetic constructor <init>(FFLcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;-><init>(FFLcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureX:F

    iget v1, p1, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureX:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureY:F

    iget v1, p1, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureY:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->type:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    iget-object v1, p1, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->type:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->timestamp:J

    iget-wide v2, p1, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->timestamp:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getGestureX()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureX:F

    return v0
.end method

.method public final getGestureY()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureY:F

    return v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->timestamp:J

    return-wide v0
.end method

.method public final getType()Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->type:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureY:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->type:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->timestamp:J

    const/16 v3, 0x20

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

    const-string v1, "GestureEventData(gestureX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gestureY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->gestureY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->type:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
