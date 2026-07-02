.class public Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;
.super Landroid/widget/GridView;
.source "ThumbnailGridView.java"

# interfaces
.implements Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;


# instance fields
.field private mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-direct {v0, p1, p2, p0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/GridView;)V

    iput-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    return-void
.end method


# virtual methods
.method public computeThumbnailGridViewImageDimension(FF)Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->computeThumbnailGridViewImageDimension(FF)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p1

    return-object p1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3

    .line 90
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 91
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    :cond_0
    invoke-static {}, Lcom/amazon/android/util/UIUtils;->getActionBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->setTopMargin(I)V

    .line 97
    invoke-super {p0, p1}, Landroid/widget/GridView;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getCoordinateOfPage(I)Landroid/graphics/Point;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->getCoordinateOfPage(I)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailGridViewNumberOfColumns()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-virtual {v0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->getThumbnailGridViewNumberOfColumns()I

    move-result v0

    return v0
.end method

.method public highlight(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->highlight(I)V

    return-void
.end method

.method public initSystemWindowsInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->initSystemWindowsInsets(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onOrientationChanged(IFF)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->onOrientationChanged(IFF)V

    return-void
.end method

.method public setAdapter(Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->setAdapter(Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;)V

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->setCurrentPage(I)V

    return-void
.end method

.method public setTopMargin(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->setTopMargin(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridView;->mThumbnailGridViewCommon:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-virtual {v0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->updateLayout()V

    return-void
.end method
