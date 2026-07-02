.class public Lcom/amazon/android/docviewer/mapper/SimpleViewPagerPositionToPageIndexMapper;
.super Ljava/lang/Object;
.source "SimpleViewPagerPositionToPageIndexMapper.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;


# instance fields
.field private mPageCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/amazon/android/docviewer/mapper/SimpleViewPagerPositionToPageIndexMapper;->mPageCount:I

    return-void
.end method


# virtual methods
.method public getContentPageIndexFromDisplayedPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 0

    .line 89
    new-instance p2, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {p2, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    return-object p2
.end method

.method public getContentPageIndexFromViewPagerPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    if-lez p1, :cond_0

    .line 39
    new-instance p2, Lcom/amazon/android/docviewer/mapper/PageIndex;

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p2, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    return-object p2

    .line 41
    :cond_0
    new-instance p2, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {p2, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    return-object p2
.end method

.method public getContentPageIndexOfNextPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 53
    new-instance v0, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    add-int/2addr p1, p2

    invoke-direct {v0, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    return-object v0
.end method

.method public getDisplayedPageCount(I)I
    .locals 0

    .line 46
    iget p1, p0, Lcom/amazon/android/docviewer/mapper/SimpleViewPagerPositionToPageIndexMapper;->mPageCount:I

    return p1
.end method

.method public getDisplayedPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;I)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 94
    :goto_0
    invoke-static {p2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 96
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    return p1
.end method

.method public getDisplayedPositionFromViewPagerPosition(II)I
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/mapper/SimpleViewPagerPositionToPageIndexMapper;->getContentPageIndexFromViewPagerPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    return p1
.end method

.method public getViewPagerPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 29
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    if-lez p1, :cond_1

    sub-int/2addr p1, v0

    .line 31
    div-int/2addr p1, v1

    add-int/2addr p1, v0

    :cond_1
    return p1
.end method

.method public getViewPagerScreensCount(I)I
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 72
    iget p1, p0, Lcom/amazon/android/docviewer/mapper/SimpleViewPagerPositionToPageIndexMapper;->mPageCount:I

    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 76
    div-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, -0x1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1

    .line 78
    :cond_0
    iget p1, p0, Lcom/amazon/android/docviewer/mapper/SimpleViewPagerPositionToPageIndexMapper;->mPageCount:I

    return p1
.end method

.method public isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z
    .locals 2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 67
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
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 60
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    iget v1, p0, Lcom/amazon/android/docviewer/mapper/SimpleViewPagerPositionToPageIndexMapper;->mPageCount:I

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method
