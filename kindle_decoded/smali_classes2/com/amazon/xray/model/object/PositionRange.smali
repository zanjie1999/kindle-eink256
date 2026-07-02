.class public Lcom/amazon/xray/model/object/PositionRange;
.super Ljava/lang/Object;
.source "PositionRange.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/xray/model/object/PositionRange;",
        ">;"
    }
.end annotation


# instance fields
.field private final length:I

.field private final location:I


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    .line 24
    invoke-static {v0}, Lcom/amazon/xray/util/Validate;->notNegative([I)V

    int-to-long v3, p1

    int-to-long v5, p2

    add-long/2addr v3, v5

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "end overflow integer"

    .line 25
    invoke-static {v1, v0}, Lcom/amazon/xray/util/Validate;->not(ZLjava/lang/String;)V

    .line 27
    iput p1, p0, Lcom/amazon/xray/model/object/PositionRange;->location:I

    .line 28
    iput p2, p0, Lcom/amazon/xray/model/object/PositionRange;->length:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/xray/model/object/PositionRange;)I
    .locals 1

    .line 88
    iget v0, p0, Lcom/amazon/xray/model/object/PositionRange;->location:I

    iget p1, p1, Lcom/amazon/xray/model/object/PositionRange;->location:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/xray/model/object/PositionRange;

    invoke-virtual {p0, p1}, Lcom/amazon/xray/model/object/PositionRange;->compareTo(Lcom/amazon/xray/model/object/PositionRange;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/xray/model/object/PositionRange;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    check-cast p1, Lcom/amazon/xray/model/object/PositionRange;

    .line 106
    iget v2, p0, Lcom/amazon/xray/model/object/PositionRange;->location:I

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/amazon/xray/model/object/PositionRange;->length:I

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/PositionRange;->getLength()I

    move-result p1

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getEnd()I
    .locals 2

    .line 49
    iget v0, p0, Lcom/amazon/xray/model/object/PositionRange;->location:I

    iget v1, p0, Lcom/amazon/xray/model/object/PositionRange;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/amazon/xray/model/object/PositionRange;->length:I

    return v0
.end method

.method public getLocation()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/amazon/xray/model/object/PositionRange;->location:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    iget v1, p0, Lcom/amazon/xray/model/object/PositionRange;->location:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/xray/model/object/PositionRange;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PositionRange{location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/xray/model/object/PositionRange;->location:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/xray/model/object/PositionRange;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
