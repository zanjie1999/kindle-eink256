.class public Lcom/amazon/kindle/rendering/KRIFPageElement;
.super Ljava/lang/Object;
.source "KRIFPageElement.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IPageElement;


# instance fields
.field private coveringRectangles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field private endPos:I

.field private startPos:I

.field private type:I


# direct methods
.method public constructor <init>(III[Landroid/graphics/RectF;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFPageElement;->startPos:I

    .line 23
    iput p2, p0, Lcom/amazon/kindle/rendering/KRIFPageElement;->endPos:I

    .line 24
    iput p3, p0, Lcom/amazon/kindle/rendering/KRIFPageElement;->type:I

    .line 25
    invoke-direct {p0, p4}, Lcom/amazon/kindle/rendering/KRIFPageElement;->generateCoveringRectangles([Landroid/graphics/RectF;)Ljava/util/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFPageElement;->coveringRectangles:Ljava/util/Vector;

    return-void
.end method

.method private generateCoveringRectangles([Landroid/graphics/RectF;)Ljava/util/Vector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 50
    array-length v0, p1

    .line 51
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 53
    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 54
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    aget-object v4, p1, v2

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    aget-object v5, p1, v2

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    aget-object v6, p1, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    aget-object v7, p1, v2

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageElement;->coveringRectangles:Ljava/util/Vector;

    return-object v0
.end method

.method public getEndId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFPageElement;->endPos:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFPageElement;->startPos:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFPageElement;->type:I

    return v0
.end method
