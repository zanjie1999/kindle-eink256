.class public Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;
.super Ljava/lang/Object;
.source "UpsellViewPagerPositionToPageIndexMapper.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;


# instance fields
.field private mContentPageIndexToViewPagerPositionMapLandscape:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/mapper/PageIndex;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContentPageIndexToViewPagerPositionMapPortrait:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/mapper/PageIndex;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFullPageUpsellPositions:[D

.field private mLandscapeContentPageList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/android/docviewer/mapper/PageIndex;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

.field private mLastPagePortrait:Lcom/amazon/android/docviewer/mapper/PageIndex;

.field private mPageCount:I

.field private mViewPagerPositionToContentPageIndexMapLandscape:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/android/docviewer/mapper/PageIndex;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPagerPositionToContentPageIndexMapPortrait:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/android/docviewer/mapper/PageIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[D)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mPageCount:I

    .line 76
    iput-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mFullPageUpsellPositions:[D

    .line 77
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->preallocateMaps(I)V

    .line 78
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->initializeMaps()V

    return-void
.end method

.method private initializeMaps()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 101
    :goto_0
    iget v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mPageCount:I

    if-ge v1, v4, :cond_5

    .line 103
    new-instance v4, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {v4, v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    iput-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPagePortrait:Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 105
    iget-object v5, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapPortrait:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapPortrait:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    iget-object v6, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPagePortrait:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 108
    new-instance v4, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {v4, v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    iput-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

    if-eqz v1, :cond_1

    .line 110
    rem-int/lit8 v5, v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    iget-object v5, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapLandscape:Ljava/util/Map;

    iget-object v7, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapLandscape:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 111
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapLandscape:Ljava/util/Map;

    iget-object v5, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

    iget-object v6, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapLandscape:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapLandscape:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    iget-object v6, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 117
    :goto_2
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLandscapeContentPageList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    iget-object v6, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mFullPageUpsellPositions:[D

    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-wide v5, v4, v2

    iget v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mPageCount:I

    int-to-double v7, v4

    mul-double v5, v5, v7

    add-int/lit8 v4, v1, 0x1

    int-to-double v7, v4

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_2

    .line 120
    new-instance v4, Lcom/amazon/android/docviewer/mapper/PageIndex;

    sget-object v5, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->UPSELL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-direct {v4, v1, v5}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(ILcom/amazon/android/docviewer/mapper/PageIndex$PageType;)V

    iput-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPagePortrait:Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 121
    iget-object v5, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapPortrait:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapPortrait:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    iget-object v6, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPagePortrait:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    :goto_3
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mFullPageUpsellPositions:[D

    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-wide v5, v4, v2

    iget v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mPageCount:I

    int-to-double v9, v4

    mul-double v5, v5, v9

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 130
    :cond_2
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mFullPageUpsellPositions:[D

    array-length v5, v4

    if-ge v3, v5, :cond_4

    aget-wide v5, v4, v3

    iget v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mPageCount:I

    int-to-double v7, v4

    mul-double v5, v5, v7

    add-int/lit8 v4, v1, 0x1

    int-to-double v7, v4

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_4

    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_4

    .line 131
    new-instance v4, Lcom/amazon/android/docviewer/mapper/PageIndex;

    add-int/lit8 v5, v1, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    sget-object v6, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->UPSELL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-direct {v4, v5, v6}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(ILcom/amazon/android/docviewer/mapper/PageIndex$PageType;)V

    iput-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 132
    iget-object v5, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapPortrait:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 133
    new-instance v4, Lcom/amazon/android/docviewer/mapper/PageIndex;

    sget-object v5, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->UPSELL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-direct {v4, v1, v5}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(ILcom/amazon/android/docviewer/mapper/PageIndex$PageType;)V

    iput-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 135
    :cond_3
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapLandscape:Ljava/util/Map;

    iget-object v5, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

    iget-object v6, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapLandscape:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapLandscape:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    iget-object v6, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLandscapeContentPageList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    iget-object v6, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLandscapeContentPageList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    iget-object v6, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    :goto_4
    iget-object v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mFullPageUpsellPositions:[D

    array-length v5, v4

    if-ge v3, v5, :cond_4

    aget-wide v5, v4, v3

    iget v4, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mPageCount:I

    int-to-double v9, v4

    mul-double v5, v5, v9

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private preallocateMaps(I)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mFullPageUpsellPositions:[D

    array-length v0, v0

    .line 87
    new-instance v1, Ljava/util/HashMap;

    add-int v2, p1, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapLandscape:Ljava/util/Map;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapPortrait:Ljava/util/Map;

    .line 89
    new-instance v1, Landroid/util/SparseArray;

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLandscapeContentPageList:Landroid/util/SparseArray;

    .line 90
    new-instance v1, Landroid/util/SparseArray;

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v1, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapLandscape:Landroid/util/SparseArray;

    .line 91
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapPortrait:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getContentPageIndexFromDisplayedPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 230
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLandscapeContentPageList:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-object p1

    .line 232
    :cond_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapPortrait:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-object p1
.end method

.method public getContentPageIndexFromViewPagerPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 173
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapLandscape:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-object p1

    .line 175
    :cond_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapPortrait:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-object p1
.end method

.method public getContentPageIndexOfNextPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 189
    iget-object v0, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapPortrait:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 190
    iget-object v0, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapPortrait:Landroid/util/SparseArray;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-object p1
.end method

.method public getDisplayedPageCount(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 181
    iget-object p1, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLandscapeContentPageList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    return p1

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapPortrait:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    return p1
.end method

.method public getDisplayedPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;I)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->UPSELL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 240
    iget-object v2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapLandscape:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 241
    invoke-virtual {p0, v2, p2}, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->getDisplayedPositionFromViewPagerPosition(II)I

    move-result p2

    .line 244
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    rem-int/2addr v2, v1

    if-eq v2, v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    :cond_2
    :goto_1
    return p2

    .line 246
    :cond_3
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapPortrait:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getDisplayedPositionFromViewPagerPosition(II)I
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method

.method public getViewPagerPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;I)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 152
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapLandscape:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 153
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapLandscape:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 161
    :cond_2
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapPortrait:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 162
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mContentPageIndexToViewPagerPositionMapPortrait:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 166
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    return p1
.end method

.method public getViewPagerScreensCount(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 213
    iget-object p1, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapLandscape:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    return p1

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mViewPagerPositionToContentPageIndexMapPortrait:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    return p1
.end method

.method public isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z
    .locals 3

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 205
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 207
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    return p2
.end method

.method public isLastPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 195
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 198
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPageLandscape:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 200
    :cond_1
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;->mLastPagePortrait:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
