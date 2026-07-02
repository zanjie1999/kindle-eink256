.class public Lcom/amazon/kcp/widget/GalleryLayoutItem;
.super Ljava/lang/Object;
.source "GalleryLayoutItem.java"

# interfaces
.implements Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;,
        Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;
    }
.end annotation


# instance fields
.field private final curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

.field private logicalPosition:F

.field private logicalWidth:F

.field private parentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->parentView:Landroid/view/View;

    .line 75
    iput-object p3, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->setView(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getX()F
    .locals 1

    .line 143
    iget v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    invoke-direct {p0, v0}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getX(F)F

    move-result v0

    return v0
.end method

.method private getX(F)F
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    invoke-static {v0}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->access$100(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    .line 161
    invoke-static {v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->access$200(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 162
    iget-object v1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    invoke-static {v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->access$100(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    invoke-static {v3}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->access$300(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F

    move-result v3

    float-to-double v3, v3

    iget-object v5, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    invoke-static {v5}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->access$000(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F

    move-result v5

    div-float/2addr p1, v5

    const/4 v5, 0x0

    sub-float/2addr v5, p1

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float p1, v1

    sub-float/2addr p1, v0

    return p1
.end method

.method private getY()F
    .locals 2

    .line 167
    invoke-direct {p0}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getZ()F

    move-result v0

    const/4 v1, 0x0

    sub-float/2addr v1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr v1, v0

    return v1
.end method

.method private getZ()F
    .locals 10

    .line 173
    iget v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    iget-object v1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    invoke-static {v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->access$000(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    invoke-static {v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->access$400(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)[F

    move-result-object v1

    const/4 v2, 0x4

    .line 175
    aget v2, v1, v2

    float-to-double v2, v2

    float-to-double v4, v0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v2, v2, v6

    const/4 v6, 0x3

    aget v6, v1, v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v2, v6

    const/4 v6, 0x2

    aget v6, v1, v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v6, v6, v4

    add-double/2addr v2, v6

    const/4 v4, 0x1

    aget v4, v1, v4

    mul-float v4, v4, v0

    float-to-double v4, v4

    add-double/2addr v2, v4

    const/4 v0, 0x0

    aget v0, v1, v0

    float-to-double v0, v0

    add-double/2addr v2, v0

    double-to-float v0, v2

    return v0
.end method


# virtual methods
.method public getLeftExtent()F
    .locals 3

    .line 135
    iget v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    iget v1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getX(F)F

    move-result v0

    return v0
.end method

.method public getLogicalPosition()F
    .locals 1

    .line 103
    iget v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    return v0
.end method

.method public getLogicalWidth()F
    .locals 1

    .line 115
    iget v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalWidth:F

    return v0
.end method

.method public getRightExtent()F
    .locals 3

    .line 139
    iget v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    iget v1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getX(F)F

    move-result v0

    return v0
.end method

.method public layout()Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;
    .locals 4

    .line 131
    new-instance v0, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    invoke-direct {p0}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getY()F

    move-result v2

    invoke-direct {p0}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getZ()F

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;-><init>(Lcom/amazon/kcp/widget/GalleryLayoutItem;FFF)V

    return-object v0
.end method

.method public onUpdate(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalWidth:F

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    invoke-static {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->access$000(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalWidth:F

    :goto_0
    return-void
.end method

.method public onUpdateWidth(I)V
    .locals 0

    return-void
.end method

.method public placeAfter(Lcom/amazon/kcp/widget/GalleryLayoutItem;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getLogicalPosition()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getLogicalWidth()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalWidth:F

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    return-void
.end method

.method public placeBefore(Lcom/amazon/kcp/widget/GalleryLayoutItem;)V
    .locals 2

    .line 123
    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getLogicalPosition()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getLogicalWidth()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalWidth:F

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    invoke-static {v0}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->access$000(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalWidth:F

    return-void
.end method

.method public setLogicalPosition(F)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    return-void
.end method

.method public setLogicalWidth(F)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalWidth:F

    return-void
.end method

.method setView(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 92
    iput-object p2, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->parentView:Landroid/view/View;

    const/4 p2, 0x0

    .line 93
    iput p2, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    .line 94
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->onUpdate(Landroid/view/View;)V

    .line 96
    instance-of p2, p1, Lcom/amazon/kcp/cover/BadgeableCover;

    if-eqz p2, :cond_0

    .line 98
    check-cast p1, Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/cover/BadgeableCover;->setListener(Lcom/amazon/kcp/cover/BadgeableCover$BadgeableCoverListener;)V

    :cond_0
    return-void
.end method

.method public shift(I)V
    .locals 1

    .line 127
    iget v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem;->logicalPosition:F

    return-void
.end method
