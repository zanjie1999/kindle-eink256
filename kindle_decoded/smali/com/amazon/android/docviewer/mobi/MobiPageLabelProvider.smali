.class public Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;
.super Ljava/lang/Object;
.source "MobiPageLabelProvider.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IPageLabelProvider;


# instance fields
.field private final pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    return-void
.end method


# virtual methods
.method public getFirstNonEmptyPageLabel()Ljava/lang/String;
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;->getPageLabelPairInSpan(II)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 98
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getLastBodyPageLabel()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->getLastPageLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastPageLabel()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;->getMaxPageLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageBreakPositionsInSpan(II)[I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;->getPageBreakPositionsInSpan(II)[I

    move-result-object p1

    return-object p1
.end method

.method public getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 0

    .line 107
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getPageLabelForPageIndex(I)Ljava/lang/String;
    .locals 0

    .line 112
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getPageLabelForPosition(I)Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    if-nez v0, :cond_0

    .line 34
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    return-object p1

    .line 36
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;->getPageLabelForFirstPosition(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageRangeSummary()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;->getPageRangeSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageStartPositionForPageIndex(I)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 117
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getPositionForPageLabel(Ljava/lang/String;)I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;->getPositionForPageLabel(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTotalArabicPages()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;->getTotalArabicPages()I

    move-result v0

    return v0
.end method

.method public getTotalPages()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;->getTotalPages()I

    move-result v0

    return v0
.end method

.method public getTotalRomanPages()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;->getTotalRomanPages()I

    move-result v0

    return v0
.end method

.method public hasOnlyNumericPageLabels()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;->isPaginationNumericOnly()Z

    move-result v0

    return v0
.end method

.method public hasPageNumbers()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->pageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 23
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;->isPageNumberingSupported()Z

    move-result v0

    return v0
.end method
