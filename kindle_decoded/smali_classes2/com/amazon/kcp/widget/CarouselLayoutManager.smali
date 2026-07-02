.class public Lcom/amazon/kcp/widget/CarouselLayoutManager;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;
    }
.end annotation


# instance fields
.field private curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

.field private frustrum:Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

.field private final layoutList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kcp/widget/GalleryLayoutItem;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/amazon/kcp/widget/GalleryLayoutItem;",
            ">;"
        }
    .end annotation
.end field

.field private parentView:Landroid/view/View;

.field private placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;Landroid/view/View;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    .line 63
    new-instance v0, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3, p2}, Lcom/amazon/kcp/widget/GalleryLayoutItem;-><init>(Landroid/view/View;Landroid/view/View;Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)V

    iput-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    .line 64
    invoke-virtual {p2}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->getDensity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->setLogicalWidth(F)V

    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->frustrum:Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

    .line 66
    iput-object p2, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    .line 67
    iput-object p3, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->parentView:Landroid/view/View;

    return-void
.end method

.method private isInFrustrum(Lcom/amazon/kcp/widget/GalleryLayoutItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->frustrum:Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

    if-nez v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getRightExtent()F

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->frustrum:Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

    iget v2, v2, Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;->left:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getLeftExtent()F

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->frustrum:Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

    iget v2, v2, Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 263
    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->layout()Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    move-result-object v1

    iget v1, v1, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;->z:F

    iget-object v2, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->frustrum:Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

    iget v2, v2, Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;->front:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->layout()Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    move-result-object p1

    iget p1, p1, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;->z:F

    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->frustrum:Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

    iget v1, v1, Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;->back:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public append(Landroid/view/View;)V
    .locals 3

    .line 120
    new-instance v0, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->parentView:Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/widget/GalleryLayoutItem;-><init>(Landroid/view/View;Landroid/view/View;Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)V

    .line 121
    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->placeAfter(Lcom/amazon/kcp/widget/GalleryLayoutItem;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public extrapolateLayout(I)Lcom/amazon/kcp/widget/GalleryLayoutItem;
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->reset()V

    if-ltz p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getLogicalPosition()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->setLogicalPosition(F)V

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getLogicalWidth()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->setLogicalWidth(F)V

    .line 280
    iget-object p1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    return-object p1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    .line 286
    invoke-virtual {v2}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getLogicalWidth()F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_0

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 289
    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->setLogicalWidth(F)V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    if-gez p1, :cond_3

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->placeBefore(Lcom/amazon/kcp/widget/GalleryLayoutItem;)V

    goto :goto_1

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->placeAfter(Lcom/amazon/kcp/widget/GalleryLayoutItem;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, p1, 0x1

    :goto_2
    if-gez v0, :cond_5

    .line 301
    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {v1, v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->placeBefore(Lcom/amazon/kcp/widget/GalleryLayoutItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 304
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le p1, v0, :cond_6

    .line 305
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {v0, v0}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->placeAfter(Lcom/amazon/kcp/widget/GalleryLayoutItem;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 308
    :cond_6
    iget-object p1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    return-object p1
.end method

.method public getLogicalPosition(Landroid/view/View;)F
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getLogicalPosition()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLogicalWidth(Landroid/view/View;)F
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->getLogicalWidth()F

    move-result p1

    return p1
.end method

.method public isInFrustrum(I)Z
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->extrapolateLayout(I)Lcom/amazon/kcp/widget/GalleryLayoutItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->isInFrustrum(Lcom/amazon/kcp/widget/GalleryLayoutItem;)Z

    move-result p1

    return p1
.end method

.method public isInFrustrum(Landroid/view/View;)Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->isInFrustrum(Lcom/amazon/kcp/widget/GalleryLayoutItem;)Z

    move-result p1

    return p1
.end method

.method public layout(Landroid/view/View;)Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 199
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->layout()Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    move-result-object p1

    return-object p1
.end method

.method public layoutFromLogicalPosition(F)Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->reset()V

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->setLogicalPosition(F)V

    .line 224
    iget-object p1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->layout()Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    move-result-object p1

    return-object p1
.end method

.method public prepend(Landroid/view/View;)V
    .locals 3

    .line 105
    new-instance v0, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->parentView:Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/widget/GalleryLayoutItem;-><init>(Landroid/view/View;Landroid/view/View;Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)V

    .line 106
    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->placeBefore(Lcom/amazon/kcp/widget/GalleryLayoutItem;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAllItems()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setCurveConfig(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)V
    .locals 3

    .line 81
    iput-object p1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    .line 82
    new-instance v0, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    iget-object v1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->parentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;-><init>(Landroid/view/View;Landroid/view/View;Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)V

    iput-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->placeholderLayoutItem:Lcom/amazon/kcp/widget/GalleryLayoutItem;

    .line 83
    iget-object p1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    invoke-virtual {p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->getDensity()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->setLogicalWidth(F)V

    return-void
.end method

.method public setFrustrum(Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->frustrum:Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

    return-void
.end method

.method public shiftAllItems(I)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/widget/GalleryLayoutItem;

    .line 94
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/widget/GalleryLayoutItem;->shift(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
