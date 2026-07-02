.class public Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;
.super Lcom/amazon/nwstd/upsell/UpsellFullPageView;
.source "ReplicaUpsellFullPageView.java"

# interfaces
.implements Lcom/amazon/nwstd/replica/IReplicaPage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;
    }
.end annotation


# static fields
.field private static final NEW_PAGE_REACHED_NOTIFICATION_DELAY:I = 0x1f4


# instance fields
.field private mIsNewPageReached:Z

.field private final mMagazinePageRatio:F

.field private final mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

.field private m_newNewPageReachedListener:Lcom/amazon/nwstd/replica/INewPageReachedListener;

.field private final m_notifyNewPageRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/amazon/nwstd/upsell/UpsellController;FZ)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/nwstd/upsell/UpsellFullPageView;-><init>(Landroid/content/Context;Lcom/amazon/nwstd/upsell/UpsellController;Z)V

    .line 88
    iput p3, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->mMagazinePageRatio:F

    .line 91
    new-instance p1, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$1;-><init>(Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;Lcom/amazon/nwstd/upsell/UpsellController;)V

    invoke-static {p1}, Lcom/amazon/nwstd/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    new-instance p1, Lcom/amazon/nwstd/utils/RunnableHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/nwstd/utils/RunnableHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    .line 98
    new-instance p1, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$2;

    invoke-direct {p1, p0}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$2;-><init>(Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;)V

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->m_notifyNewPageRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;)Lcom/amazon/nwstd/replica/INewPageReachedListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->m_newNewPageReachedListener:Lcom/amazon/nwstd/replica/INewPageReachedListener;

    return-object p0
.end method

.method private cancelNewPageReachedNotification()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->m_notifyNewPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/utils/RunnableHandler;->removeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static createBitmap(Landroid/content/Context;Lcom/amazon/nwstd/upsell/UpsellController;Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;IIF)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_0
    new-instance v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p5, v1}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;-><init>(Landroid/content/Context;Lcom/amazon/nwstd/upsell/UpsellController;FZ)V

    .line 131
    invoke-direct {v0, p2, p3, p4}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->renderViewAsBitmap(Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 132
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->destroy()V

    return-object p0
.end method

.method public static createInstance(Landroid/content/Context;Lcom/amazon/nwstd/upsell/UpsellController;IIF)Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p4, v1}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;-><init>(Landroid/content/Context;Lcom/amazon/nwstd/upsell/UpsellController;FZ)V

    .line 76
    invoke-direct {v0, p2, p3, p4}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->initialize(IIF)V

    return-object v0
.end method

.method private getLeftPageView()Landroid/view/View;
    .locals 2

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_fullpage_left_page_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getRightPageView()Landroid/view/View;
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_fullpage_right_page_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initialize(IIF)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    move v3, p2

    move p2, p1

    move p1, v3

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p2, v0, p3, v1}, Lcom/amazon/nwstd/replica/ReplicaPageUtils;->computeReplicaPageMargins(IIIFLandroid/content/res/Resources;)Landroid/graphics/RectF;

    move-result-object p1

    .line 153
    iget-object p2, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p2, :cond_1

    .line 155
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 157
    :cond_1
    iget p3, p1, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 158
    iget p3, p1, Landroid/graphics/RectF;->right:F

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 159
    iget p3, p1, Landroid/graphics/RectF;->top:F

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 160
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 161
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private notifyNewPageReached()V
    .locals 4

    .line 283
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->cancelNewPageReachedNotification()V

    .line 284
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->m_notifyNewPageRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/nwstd/utils/RunnableHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private renderViewAsBitmap(Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 201
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$3;->$SwitchMap$com$amazon$nwstd$upsell$ReplicaUpsellFullPageView$UpsellPageType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->getRightPageView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->getLeftPageView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    :goto_0
    if-nez v0, :cond_4

    return-object v1

    .line 219
    :cond_4
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->viewToBitmap(Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private viewToBitmap(Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 229
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 230
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 231
    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 232
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 233
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 235
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 236
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 237
    invoke-virtual {p2, p3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object p1
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
    .locals 3

    .line 272
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 273
    :cond_0
    iget v0, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->mMagazinePageRatio:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1, p2, v1, v0, v2}, Lcom/amazon/nwstd/replica/ReplicaPageUtils;->computeReplicaPageMargins(IIIFLandroid/content/res/Resources;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 0

    .line 245
    invoke-super {p0}, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->destroy()V

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

    .line 262
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
    .locals 1

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->mIsNewPageReached:Z

    .line 251
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->cancelNewPageReachedNotification()V

    return-void
.end method

.method public onShow()V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->notifyNewPageReached()V

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->mIsNewPageReached:Z

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

    .line 278
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->m_newNewPageReachedListener:Lcom/amazon/nwstd/replica/INewPageReachedListener;

    return-void
.end method

.method protected setUpsellPageClickListener(Lcom/amazon/nwstd/upsell/UpsellController;)V
    .locals 0

    return-void
.end method

.method public waitForInit()V
    .locals 0

    return-void
.end method
