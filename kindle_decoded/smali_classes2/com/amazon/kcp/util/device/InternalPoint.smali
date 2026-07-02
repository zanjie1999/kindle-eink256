.class final Lcom/amazon/kcp/util/device/InternalPoint;
.super Ljava/lang/Object;
.source "NotchDetector.kt"


# instance fields
.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kcp/util/device/InternalPoint;->x:I

    iput p2, p0, Lcom/amazon/kcp/util/device/InternalPoint;->y:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/util/device/InternalPoint;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/util/device/InternalPoint;

    iget v0, p0, Lcom/amazon/kcp/util/device/InternalPoint;->x:I

    iget v1, p1, Lcom/amazon/kcp/util/device/InternalPoint;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/util/device/InternalPoint;->y:I

    iget p1, p1, Lcom/amazon/kcp/util/device/InternalPoint;->y:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getX()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/amazon/kcp/util/device/InternalPoint;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/amazon/kcp/util/device/InternalPoint;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/amazon/kcp/util/device/InternalPoint;->x:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/util/device/InternalPoint;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalPoint(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/util/device/InternalPoint;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/util/device/InternalPoint;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
