.class public Lcom/amazon/krf/platform/Rect25D;
.super Ljava/lang/Object;
.source "Rect25D.java"


# instance fields
.field private height:I

.field private width:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/amazon/krf/platform/Rect25D;->x:I

    .line 12
    iput p2, p0, Lcom/amazon/krf/platform/Rect25D;->y:I

    .line 13
    iput p3, p0, Lcom/amazon/krf/platform/Rect25D;->z:I

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    .line 17
    iput p4, p0, Lcom/amazon/krf/platform/Rect25D;->width:I

    .line 18
    iput p5, p0, Lcom/amazon/krf/platform/Rect25D;->height:I

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and Width cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAndroidRect()Landroid/graphics/Rect;
    .locals 5

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/amazon/krf/platform/Rect25D;->x:I

    iget v2, p0, Lcom/amazon/krf/platform/Rect25D;->y:I

    iget v3, p0, Lcom/amazon/krf/platform/Rect25D;->width:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/amazon/krf/platform/Rect25D;->height:I

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/krf/platform/Rect25D;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/amazon/krf/platform/Rect25D;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/amazon/krf/platform/Rect25D;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/amazon/krf/platform/Rect25D;->y:I

    return v0
.end method

.method public getZ()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/amazon/krf/platform/Rect25D;->z:I

    return v0
.end method
