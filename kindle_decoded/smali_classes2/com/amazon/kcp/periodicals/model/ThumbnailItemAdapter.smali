.class public Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThumbnailItemAdapter.java"


# instance fields
.field private mActivateAsyncLoad:Z

.field private mActiveViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/widget/ThumbnailItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

.field private mContext:Landroid/content/Context;

.field private mFastDisplayMode:Z

.field private mOrientation:I

.field private mReplicaNavigator:Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

.field private mThumbnailDimension:Lcom/amazon/kindle/util/drawing/Dimension;

.field private toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mFastDisplayMode:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActiveViews:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;Lcom/amazon/nwstd/model/replica/BitmapProvider;Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mFastDisplayMode:Z

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActiveViews:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mReplicaNavigator:Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    .line 51
    iput-object p3, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 52
    iput-object p5, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    .line 53
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActivateAsyncLoad:Z

    .line 54
    invoke-direct {p0, p4}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->setThumbnailDimension(Lcom/amazon/kindle/util/drawing/Dimension;)V

    .line 56
    iput-object p3, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    return-void
.end method

.method private createThumbnailImageView(IZIZ)Lcom/amazon/android/widget/ThumbnailItem;
    .locals 14

    move-object v0, p0

    .line 66
    iget-object v1, v0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/newsstand/core/R$layout;->thumbnail_item_layout:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/widget/ThumbnailItem;

    .line 67
    iget-boolean v2, v0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mFastDisplayMode:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActivateAsyncLoad:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    :goto_0
    move-object v5, v3

    iget-object v6, v0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget-object v10, v0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mThumbnailDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    iget-boolean v11, v0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActivateAsyncLoad:Z

    .line 68
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->getSelectedPage()I

    move-result v12

    iget v13, v0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mOrientation:I

    move-object v4, v1

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 67
    invoke-virtual/range {v4 .. v13}, Lcom/amazon/android/widget/ThumbnailItem;->initialize(Lcom/amazon/nwstd/model/replica/BitmapProvider;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;IZILcom/amazon/kindle/util/drawing/Dimension;ZII)V

    .line 69
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-object v1
.end method

.method private setThumbnailDimension(Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 2

    .line 157
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mThumbnailDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getReferenceImageRatio()F

    move-result v0

    .line 161
    iget v1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    div-int/2addr v1, p1

    int-to-float p1, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mThumbnailDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mThumbnailDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    :goto_0
    return-void
.end method


# virtual methods
.method public activateAsyncLoad(Lcom/amazon/nwstd/model/replica/BitmapProvider;)V
    .locals 1

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActivateAsyncLoad:Z

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    return-void
.end method

.method public getClickedThumbnailIndex(Landroid/view/View;)I
    .locals 0

    .line 175
    check-cast p1, Lcom/amazon/android/widget/ThumbnailItem;

    invoke-virtual {p1}, Lcom/amazon/android/widget/ThumbnailItem;->consumeLastSelectedViewIndex()I

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->getItem(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getOrientation()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mOrientation:I

    return v0
.end method

.method public getSelectedPage()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mReplicaNavigator:Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p1, 0x2

    sub-int/2addr v1, v0

    move v7, v1

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->getSelectedPage()I

    move-result v10

    const/4 v1, 0x2

    if-ge v10, v1, :cond_1

    move v2, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v10, 0x1

    .line 109
    div-int/2addr v2, v1

    :goto_1
    if-eqz v7, :cond_3

    add-int/lit8 v3, v7, 0x1

    .line 111
    iget-object v4, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz p2, :cond_6

    .line 119
    instance-of v1, p2, Lcom/amazon/android/widget/ThumbnailItem;

    if-eqz v1, :cond_6

    .line 120
    check-cast p2, Lcom/amazon/android/widget/ThumbnailItem;

    .line 121
    iget-boolean p1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mFastDisplayMode:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActivateAsyncLoad:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    :goto_4
    move-object v3, p1

    iget-object v4, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    if-nez v7, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    iget-object v8, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mThumbnailDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    iget-boolean v9, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActivateAsyncLoad:Z

    iget v11, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mOrientation:I

    move-object v2, p2

    invoke-virtual/range {v2 .. v11}, Lcom/amazon/android/widget/ThumbnailItem;->initialize(Lcom/amazon/nwstd/model/replica/BitmapProvider;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;IZILcom/amazon/kindle/util/drawing/Dimension;ZII)V

    .line 123
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_7

    :cond_6
    if-nez v7, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :goto_6
    if-ne p1, v2, :cond_8

    const/4 p3, 0x1

    .line 126
    :cond_8
    invoke-direct {p0, v5, p2, v7, p3}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->createThumbnailImageView(IZIZ)Lcom/amazon/android/widget/ThumbnailItem;

    move-result-object p2

    .line 129
    :goto_7
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActiveViews:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public modifyThumbnailDimension(Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->setThumbnailDimension(Lcom/amazon/kindle/util/drawing/Dimension;)V

    .line 171
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public onRecycle(Lcom/amazon/android/widget/ThumbnailItem;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Lcom/amazon/android/widget/ThumbnailItem;->onRecycle()V

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActiveViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public refreshVisibleViews()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActiveViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/widget/ThumbnailItem;

    .line 190
    invoke-virtual {v1}, Lcom/amazon/android/widget/ThumbnailItem;->getImageLoader()Lcom/amazon/nwstd/model/replica/BitmapProvider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v1, v2}, Lcom/amazon/android/widget/ThumbnailItem;->setImageLoader(Lcom/amazon/nwstd/model/replica/BitmapProvider;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActiveViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/widget/ThumbnailItem;

    .line 201
    invoke-virtual {v1}, Lcom/amazon/android/widget/ThumbnailItem;->releaseBitmaps()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFastDisplayMode(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mFastDisplayMode:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 135
    iput p1, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mOrientation:I

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->mActiveViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/widget/ThumbnailItem;

    .line 137
    invoke-virtual {v1, p1}, Lcom/amazon/android/widget/ThumbnailItem;->setOrientation(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
