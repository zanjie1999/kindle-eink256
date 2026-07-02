.class public Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;
.super Ljava/lang/Object;
.source "ThumbnailGridViewCommon.java"

# interfaces
.implements Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;


# static fields
.field private static FLING_VELOCITY_SCALE:F = 0.75f


# instance fields
.field private mAdditionaltopMargin:I

.field private mContext:Landroid/content/Context;

.field private mGridView:Landroid/widget/GridView;

.field private mInsets:Landroid/graphics/Rect;

.field private mScrollListener:Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;

.field private m_currentSelectedIndex:I

.field private m_lastselectedPageNumber:I

.field private m_selectedPageNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/GridView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mAdditionaltopMargin:I

    const/4 p2, 0x0

    .line 45
    iput-object p2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mInsets:Landroid/graphics/Rect;

    .line 48
    iput-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    .line 51
    invoke-virtual {p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->updateLayoutSpacing()V

    .line 52
    iget-object p2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/amazon/kindle/newsstand/core/R$color;->replica_page_background_color:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 55
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_0

    .line 56
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    sget p2, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->FLING_VELOCITY_SCALE:F

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setVelocityScale(F)V

    .line 59
    :cond_0
    new-instance p1, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon$1;

    invoke-direct {p1, p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon$1;-><init>(Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;)V

    .line 71
    iget-object p2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 73
    new-instance p1, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;

    iget-object p2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    invoke-direct {p1, p2}, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;-><init>(Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;)V

    iput-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mScrollListener:Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;

    .line 74
    iget-object p2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;)Landroid/widget/GridView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method private getGridViewNumColumns()I
    .locals 2

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 106
    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    :cond_1
    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    return v1
.end method


# virtual methods
.method public computeThumbnailGridViewImageDimension(FF)Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 5

    .line 264
    invoke-virtual {p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->getThumbnailGridViewNumberOfColumns()I

    move-result v0

    .line 267
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 270
    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->thumbnail_grid_view_borders_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    .line 274
    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->thumbnail_grid_view_horizontal_spacing:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 277
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 279
    invoke-virtual {v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDebuggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isThumbnailGridViewCustomized()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    invoke-virtual {v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getThumbnailGridViewHorizontalSpacing()I

    move-result v3

    if-ltz v3, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v3, v0, -0x1

    mul-int v3, v3, v1

    sub-int/2addr p2, v3

    .line 288
    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 289
    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->softkey_bar_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr p2, v1

    .line 293
    :cond_1
    div-int/2addr p2, v0

    div-int/2addr p2, v2

    .line 296
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 297
    new-instance v0, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {v0, p2, p1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    return-object v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)V
    .locals 2

    .line 342
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mInsets:Landroid/graphics/Rect;

    .line 343
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 344
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mInsets:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/amazon/android/util/UIUtils;->getActionBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->updateLayoutSpacing()V

    .line 350
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public getCoordinateOfPage(I)Landroid/graphics/Point;
    .locals 5

    .line 144
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v1, 0x0

    .line 145
    :goto_0
    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 146
    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/amazon/android/widget/ThumbnailItem;

    if-eqz v2, :cond_3

    .line 147
    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/widget/ThumbnailItem;

    .line 148
    invoke-virtual {v2}, Lcom/amazon/android/widget/ThumbnailItem;->getStartIndex()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->getOrientation()I

    move-result p1

    if-ne p1, v4, :cond_0

    .line 152
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result p1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 154
    :cond_0
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result p1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    :goto_1
    return-object v0

    :cond_1
    if-eqz v3, :cond_3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p1, :cond_3

    .line 159
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->getOrientation()I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 160
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result p1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    .line 162
    :cond_2
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result p1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    :goto_2
    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method public getThumbnailGridViewNumberOfColumns()I
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$integer;->thumbnail_grid_view_number_of_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 247
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDebuggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isThumbnailGridViewCustomized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getThumbnailGridViewNumberOfColumns()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setThumbnailGridViewNumberOfColumns(I)V

    :cond_1
    :goto_0
    return v0
.end method

.method public getVisibility()I
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public highlight(I)V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 116
    div-int/2addr v3, v2

    .line 117
    :goto_0
    iget v4, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->m_lastselectedPageNumber:I

    if-ge v4, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    div-int/2addr v4, v2

    :goto_1
    if-eq v4, v3, :cond_2

    if-lt v4, v0, :cond_2

    if-gt v4, v1, :cond_2

    .line 120
    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/widget/ThumbnailItem;

    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {v2, p1}, Lcom/amazon/android/widget/ThumbnailItem;->deselect(I)V

    :cond_2
    if-lt v3, v0, :cond_3

    if-gt v3, v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/widget/ThumbnailItem;

    if-eqz v0, :cond_3

    .line 133
    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/widget/ThumbnailItem;->highlight(II)V

    .line 136
    :cond_3
    iput p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->m_lastselectedPageNumber:I

    return-void
.end method

.method public initSystemWindowsInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->fitSystemWindows(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(IFF)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    .line 176
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->getOrientation()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 177
    invoke-virtual {p0, p2, p3}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->computeThumbnailGridViewImageDimension(FF)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p2

    .line 178
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->modifyThumbnailDimension(Lcom/amazon/kindle/util/drawing/Dimension;)V

    .line 179
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->setOrientation(I)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->updateLayout()V

    .line 186
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    const/4 p2, 0x0

    .line 187
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->setFastDisplayMode(Z)V

    .line 188
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 191
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    iget p2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->m_currentSelectedIndex:I

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setSelection(I)V

    return-void
.end method

.method public setAdapter(Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 79
    div-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->m_currentSelectedIndex:I

    .line 81
    invoke-direct {p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->getGridViewNumColumns()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->m_currentSelectedIndex:I

    invoke-direct {p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->getGridViewNumColumns()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 82
    iget v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->m_currentSelectedIndex:I

    invoke-direct {p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->getGridViewNumColumns()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->m_currentSelectedIndex:I

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->m_currentSelectedIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 87
    iput p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->m_selectedPageNumber:I

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->highlight(I)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setTopMargin(I)V
    .locals 0

    .line 329
    iput p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mAdditionaltopMargin:I

    .line 330
    invoke-virtual {p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->updateLayoutSpacing()V

    .line 331
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->requestLayout()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setVisibility(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->getThumbnailGridViewNumberOfColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 304
    invoke-virtual {p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->updateLayoutSpacing()V

    return-void
.end method

.method public updateLayoutSpacing()V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->thumbnail_grid_view_borders_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mInsets:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 200
    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 202
    :cond_0
    iget v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mAdditionaltopMargin:I

    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->status_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 205
    :goto_0
    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 206
    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->softkey_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    .line 209
    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v3

    .line 210
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 212
    :cond_3
    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->softkey_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v0

    move v4, v2

    const/4 v2, 0x0

    .line 216
    :goto_1
    iget-object v3, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 218
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->thumbnail_grid_view_horizontal_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->thumbnail_grid_view_vertical_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 222
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 225
    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDebuggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isThumbnailGridViewCustomized()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 226
    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getThumbnailGridViewHorizontalSpacing()I

    move-result v3

    .line 227
    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getThumbnailGridViewVerticalSpacing()I

    move-result v2

    if-ltz v3, :cond_4

    move v0, v3

    :cond_4
    if-ltz v2, :cond_6

    move v1, v2

    goto :goto_2

    .line 233
    :cond_5
    invoke-virtual {v2, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setThumbnailGridViewHorizontalSpacing(I)V

    .line 234
    invoke-virtual {v2, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setThumbnailGridViewVerticalSpacing(I)V

    .line 238
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 239
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    return-void
.end method
