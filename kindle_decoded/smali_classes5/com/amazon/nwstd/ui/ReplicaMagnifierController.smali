.class public Lcom/amazon/nwstd/ui/ReplicaMagnifierController;
.super Ljava/lang/Object;
.source "ReplicaMagnifierController.java"


# instance fields
.field private mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

.field public mReplicaMagnifyingGlass:Landroid/view/View;

.field public mReplicaMagnifyingView:Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    return-void
.end method

.method private inflateMagnifyingGlassIfNeeded()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_magnifying_glass_stub:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 44
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 46
    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_magnifying_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;

    iput-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingView:Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;

    :cond_0
    return-void
.end method

.method private setMagnifiedCenterPoint(FF)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingView:Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 137
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingView:Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->setMagnifiedCenterPoint(Landroid/graphics/PointF;)V

    .line 138
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private updateMagnifiedView()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingView:Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v1

    .line 118
    invoke-interface {v1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getMagnifiablePage()Lcom/amazon/nwstd/replica/IMagnifiablePage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v1}, Lcom/amazon/nwstd/replica/IMagnifiablePage;->getMagnifiableView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/nwstd/replica/IReplicaPage;->computeMargins(II)Landroid/graphics/RectF;

    move-result-object v0

    .line 126
    iget-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingView:Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;

    invoke-virtual {v2, v1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->setMagnifiedView(Lcom/amazon/android/docviewer/mobi/ReplicaView;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isMagnifierVisible()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public magnifyRegion(Landroid/view/MotionEvent;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->inflateMagnifyingGlassIfNeeded()V

    .line 55
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->updateMagnifiedView()V

    .line 58
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getMagnifiablePage()Lcom/amazon/nwstd/replica/IMagnifiablePage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IMagnifiablePage;->getMagnifiableView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v0

    .line 67
    sget-object v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Full:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    new-instance v3, Lcom/amazon/nwstd/ui/ReplicaMagnifierController$1;

    invoke-direct {v3, p0}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController$1;-><init>(Lcom/amazon/nwstd/ui/ReplicaMagnifierController;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->updateToQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;ZLcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->setMagnifiedCenterPoint(FF)V

    .line 80
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 82
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandReplicaView"

    const-string v1, "Magnify"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public moveMagnifier(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->updateMagnifiedView()V

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->setMagnifiedCenterPoint(FF)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onLayout(IIIILcom/amazon/android/docviewer/viewpager/ReplicaViewPager;)V
    .locals 7

    .line 144
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingView:Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->getMagnifiedCenterPoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 149
    invoke-virtual {p5}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object p5

    check-cast p5, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p5}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object p5

    .line 150
    invoke-interface {p5}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-interface {p5, v3, v4}, Lcom/amazon/nwstd/replica/IReplicaPage;->computeMargins(II)Landroid/graphics/RectF;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 158
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget v4, p5, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget v5, p5, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    .line 160
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget p5, p5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p5

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_0
    if-nez v2, :cond_1

    .line 166
    new-instance v2, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 169
    :cond_1
    iget p1, v0, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iget-object p2, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 170
    iget-object p2, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/newsstand/core/R$dimen;->periodical_magnifying_glass_vert_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 171
    iget p3, v0, Landroid/graphics/PointF;->y:F

    float-to-int p3, p3

    iget-object p4, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    int-to-float p4, p1

    .line 175
    iget p5, v2, Landroid/graphics/RectF;->left:F

    cmpg-float p4, p4, p5

    if-gez p4, :cond_2

    float-to-int p1, p5

    goto :goto_0

    .line 178
    :cond_2
    iget-object p4, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p4, p1

    int-to-float p4, p4

    iget p5, v2, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p4, p5

    if-lez p4, :cond_3

    float-to-int p1, p5

    .line 179
    iget-object p4, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p1, p4

    :cond_3
    :goto_0
    int-to-float p4, p3

    .line 182
    iget p5, v2, Landroid/graphics/RectF;->top:F

    cmpg-float p4, p4, p5

    if-gez p4, :cond_4

    float-to-int p3, p5

    goto :goto_1

    .line 185
    :cond_4
    iget-object p4, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p4, p3

    add-int/2addr p4, p2

    int-to-float p4, p4

    iget p5, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p4, p5

    if-lez p4, :cond_5

    float-to-int p3, p5

    .line 186
    iget-object p4, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    .line 189
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    add-int/2addr p5, p3

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_6
    return-void
.end method

.method public removeMagnification()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingGlass:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
