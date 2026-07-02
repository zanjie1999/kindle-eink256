.class public Lcom/amazon/android/docviewer/pdf/Rectangle;
.super Ljava/lang/Object;


# instance fields
.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->x:I

    iput p2, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->y:I

    iput p3, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->width:I

    iput p4, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->height:I

    return-void
.end method


# virtual methods
.method public coalesce(Lcom/amazon/android/docviewer/pdf/Rectangle;)Lcom/amazon/android/docviewer/pdf/Rectangle;
    .locals 8

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->width:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->height:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->x:I

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->y:I

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v5

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v6

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v7

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result p1

    add-int/2addr v7, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->x:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->y:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->x:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->width:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->y:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->height:I

    return-object p0

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/Rectangle;->y:I

    return v0
.end method
