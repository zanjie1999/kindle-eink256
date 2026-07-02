.class public Lcom/amazon/nwstd/replica/StaticPage;
.super Landroid/widget/FrameLayout;
.source "StaticPage.java"

# interfaces
.implements Lcom/amazon/nwstd/replica/IReplicaPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, -0x1000000

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public addLoadingFinishedListener(Lcom/amazon/nwstd/replica/IReplicaPage$LoadingListener;)V
    .locals 0

    return-void
.end method

.method public addPostDrawListener(Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;)V
    .locals 0

    return-void
.end method

.method public computeMargins(II)Landroid/graphics/RectF;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/amazon/nwstd/replica/StaticPage;->getViewPort()Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getBookmarkablePage()Lcom/amazon/nwstd/replica/IBookmarkablePage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMagnifiablePage()Lcom/amazon/nwstd/replica/IMagnifiablePage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewPort()Landroid/graphics/RectF;
    .locals 5

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFinishedLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onHide()V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public performDoubleTap(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public performSingleTap(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setNewPageReachedListener(Lcom/amazon/nwstd/replica/INewPageReachedListener;)V
    .locals 0

    return-void
.end method

.method public waitForInit()V
    .locals 0

    return-void
.end method
