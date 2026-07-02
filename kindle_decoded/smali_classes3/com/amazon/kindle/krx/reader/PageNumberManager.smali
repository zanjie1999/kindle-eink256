.class public Lcom/amazon/kindle/krx/reader/PageNumberManager;
.super Ljava/lang/Object;
.source "PageNumberManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IPageNumberManager;


# instance fields
.field pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/IPageLabelProvider;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    return-void
.end method


# virtual methods
.method public getMaxPage()Lcom/amazon/kindle/krx/reader/IPage;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getLastPageLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v2, v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPositionForPageLabel(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 44
    new-instance v2, Lcom/amazon/kindle/krx/reader/Page;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/krx/reader/Page;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageForPageLabel(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPage;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPositionForPageLabel(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 76
    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 77
    new-instance v0, Lcom/amazon/kindle/krx/reader/Page;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/krx/reader/Page;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/IPage;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/amazon/kindle/krx/reader/Page;

    invoke-direct {v1, v0, p1}, Lcom/amazon/kindle/krx/reader/Page;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageRangeSummary()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageRangeSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPagesBetweenPositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-static {p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;->valueOf(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/model/Annotations/IntPosition;

    move-result-object p1

    .line 53
    invoke-static {p2}, Lcom/amazon/kindle/model/Annotations/IntPosition;->valueOf(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/model/Annotations/IntPosition;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    .line 56
    invoke-virtual {p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/amazon/kindle/model/Annotations/IntPosition;->getIntPosition()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageBreakPositionsInSpan(II)[I

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 59
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 60
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 61
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 62
    iget-object v3, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v3, v2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    new-instance v4, Lcom/amazon/kindle/krx/reader/Page;

    new-instance v5, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v5, v2}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    invoke-direct {v4, v3, v5}, Lcom/amazon/kindle/krx/reader/Page;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 64
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method public getTotalArabicPages()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getTotalArabicPages()I

    move-result v0

    return v0
.end method

.method public getTotalPages()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getTotalPages()I

    move-result v0

    return v0
.end method

.method public getTotalRomanPages()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getTotalRomanPages()I

    move-result v0

    return v0
.end method

.method public isPageNumberingSupported()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->hasPageNumbers()Z

    move-result v0

    return v0
.end method

.method public isPaginationNumericOnly()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PageNumberManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->hasOnlyNumericPageLabels()Z

    move-result v0

    return v0
.end method
