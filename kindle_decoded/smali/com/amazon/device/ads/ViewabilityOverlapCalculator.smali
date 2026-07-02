.class Lcom/amazon/device/ads/ViewabilityOverlapCalculator;
.super Ljava/lang/Object;
.source "ViewabilityOverlapCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;,
        Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ViewabilityOverlapCalculator"


# instance fields
.field private final adController:Lcom/amazon/device/ads/AdController;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private rootView:Landroid/view/View;

.field private visibleAdRectangle:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->adController:Lcom/amazon/device/ads/AdController;

    .line 42
    sget-object p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method private computeArea(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;",
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;",
            ">;)I"
        }
    .end annotation

    .line 232
    iget v0, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    iget p1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 233
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 235
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;

    .line 236
    iget v3, v2, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    iget v2, v2, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    sub-int/2addr v3, v2

    mul-int v3, v3, v0

    add-int/2addr v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private findOverlapppingViews(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;ILandroid/view/ViewGroup;Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;",
            "I",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;",
            ">;Z)V"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p3

    move-object v8, p4

    if-eqz v7, :cond_0

    if-eqz p5, :cond_0

    .line 100
    invoke-static {p3}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAdTransparent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    iget-object v1, v6, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->visibleAdRectangle:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;-><init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;Landroid/graphics/Rect;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move v9, p2

    .line 108
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v9, v0, :cond_6

    .line 110
    invoke-virtual {p3, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 113
    instance-of v3, v0, Landroid/widget/ListView;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 115
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    move-object v10, p1

    goto :goto_3

    :cond_2
    const/16 v4, 0xb

    .line 120
    invoke-static {v4}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    goto :goto_2

    .line 128
    :cond_3
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->getViewRectangle(Landroid/view/View;)Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    move-result-object v4

    move-object v10, p1

    .line 129
    invoke-virtual {v4, p1}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->intersect(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v3, :cond_4

    .line 131
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    .line 134
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->findOverlapppingViews(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;ILandroid/view/ViewGroup;Ljava/util/List;Z)V

    goto :goto_3

    .line 138
    :cond_4
    iget-object v3, v6, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Overlap found with View: %s"

    invoke-virtual {v3, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    move-object v10, p1

    if-nez p5, :cond_7

    return-void

    .line 149
    :cond_7
    iget-object v0, v6, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->rootView:Landroid/view/View;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 155
    :cond_8
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 163
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_9

    goto :goto_4

    .line 168
    :cond_9
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 170
    invoke-virtual {v3, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->findOverlapppingViews(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;ILandroid/view/ViewGroup;Ljava/util/List;Z)V

    :cond_a
    :goto_4
    return-void
.end method

.method private getViewRectangle(Landroid/view/View;)Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 179
    new-instance v7, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v2, 0x1

    aget v4, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    aget v1, v0, v1

    add-int/2addr v5, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    aget v0, v0, v2

    add-int v6, p1, v0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;-><init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;IIII)V

    return-object v7
.end method


# virtual methods
.method public calculateViewablePercentage(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 10

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    int-to-float v1, v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return v2

    .line 54
    :cond_0
    iput-object p2, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->visibleAdRectangle:Landroid/graphics/Rect;

    .line 55
    iget-object v3, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->rootView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->getRootView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->rootView:Landroid/view/View;

    .line 61
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/view/ViewGroup;

    if-nez v7, :cond_2

    .line 67
    iget-object p1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string p2, "AdContainer is null"

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return v2

    .line 71
    :cond_2
    invoke-virtual {v7, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 73
    new-instance v5, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    invoke-direct {v5, p0, p2}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;-><init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    add-int/lit8 v6, p1, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->findOverlapppingViews(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;ILandroid/view/ViewGroup;Ljava/util/List;Z)V

    .line 75
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->getTotalAreaOfSetOfRectangles(Ljava/util/List;)I

    move-result p1

    .line 76
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    mul-int v3, v3, p2

    sub-int/2addr v3, p1

    .line 78
    iget-object p1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "Visible area: %s , Total area: %s"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float p1, v3

    div-float/2addr p1, v1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    return p1
.end method

.method protected getTotalAreaOfSetOfRectangles(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;",
            ">;)I"
        }
    .end annotation

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 194
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 196
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    mul-int/lit8 v5, v3, 0x2

    .line 198
    invoke-virtual {v4}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getLeft()I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    .line 199
    invoke-virtual {v4}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getRight()I

    move-result v4

    aput v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 206
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_2

    .line 215
    aget v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 216
    aget v5, v1, v2

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    new-instance v6, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;

    invoke-direct {v6, p0, v4, v5}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;-><init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;II)V

    .line 222
    invoke-virtual {p0, v6, p1}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->getYRanges(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 223
    invoke-direct {p0, v6, v4}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->computeArea(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;Ljava/util/List;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    return v3
.end method

.method protected getYRanges(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;",
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 246
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 248
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    .line 249
    iget v4, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    invoke-virtual {v3}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getRight()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget v4, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    invoke-virtual {v3}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getLeft()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 252
    new-instance v4, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;

    invoke-virtual {v3}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getTop()I

    move-result v5

    invoke-virtual {v3}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getBottom()I

    move-result v3

    invoke-direct {v4, p0, v5, v3}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;-><init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;II)V

    if-nez v1, :cond_0

    .line 256
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    :cond_0
    invoke-virtual {v4, v1}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->isOverlap(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    invoke-virtual {v1, v4}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->mergeRange(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;)V

    goto :goto_2

    .line 267
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object v1, v4

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
