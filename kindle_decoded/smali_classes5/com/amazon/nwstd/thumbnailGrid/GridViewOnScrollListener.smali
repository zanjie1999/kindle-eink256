.class public Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;
.super Ljava/lang/Object;
.source "GridViewOnScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final SLOW_SCROLL:F = 20.0f


# instance fields
.field private mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

.field private mLastFirstVisibleItem:I

.field private mScrollSpeed:F

.field private mScrollStateChangeFirstVisibleItem:I

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mLastFirstVisibleItem:I

    .line 16
    iput v0, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mScrollStateChangeFirstVisibleItem:I

    .line 21
    iput-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mTimeStamp:J

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .line 39
    iget p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mLastFirstVisibleItem:I

    const/4 p4, -0x1

    if-ne p1, p4, :cond_0

    .line 40
    iput p2, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mLastFirstVisibleItem:I

    .line 41
    iput p2, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mScrollStateChangeFirstVisibleItem:I

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mTimeStamp:J

    .line 46
    :cond_0
    iget p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mLastFirstVisibleItem:I

    if-ne p2, p1, :cond_1

    return-void

    .line 51
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    iget-wide v2, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mTimeStamp:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mScrollSpeed:F

    goto :goto_0

    .line 56
    :cond_2
    iget p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mLastFirstVisibleItem:I

    sub-int p1, p2, p1

    int-to-float p1, p1

    sub-long v2, v0, v2

    long-to-float p4, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p4, v2

    div-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mScrollSpeed:F

    .line 57
    iput-wide v0, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mTimeStamp:J

    .line 58
    iput p2, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mLastFirstVisibleItem:I

    .line 61
    :goto_0
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    if-eqz p1, :cond_5

    .line 62
    iget p4, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mScrollSpeed:F

    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v1, 0x0

    cmpg-float p4, p4, v0

    if-gez p4, :cond_3

    .line 63
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->setFastDisplayMode(Z)V

    .line 64
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->refreshVisibleViews()V

    goto :goto_1

    .line 66
    :cond_3
    iget p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mScrollStateChangeFirstVisibleItem:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p3, p3, 0x2

    if-le p1, p3, :cond_4

    .line 67
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->setFastDisplayMode(Z)V

    goto :goto_1

    .line 70
    :cond_4
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->setFastDisplayMode(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 30
    iput p2, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mLastFirstVisibleItem:I

    .line 31
    iput p2, p0, Lcom/amazon/nwstd/thumbnailGrid/GridViewOnScrollListener;->mScrollStateChangeFirstVisibleItem:I

    .line 32
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->refreshVisibleViews()V

    :cond_0
    return-void
.end method
