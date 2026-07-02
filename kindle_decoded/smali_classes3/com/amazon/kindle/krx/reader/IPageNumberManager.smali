.class public interface abstract Lcom/amazon/kindle/krx/reader/IPageNumberManager;
.super Ljava/lang/Object;
.source "IPageNumberManager.java"


# virtual methods
.method public abstract getMaxPage()Lcom/amazon/kindle/krx/reader/IPage;
.end method

.method public abstract getPageForPageLabel(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPage;
.end method

.method public abstract getPageForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/IPage;
.end method

.method public abstract getPageRangeSummary()Ljava/lang/String;
.end method

.method public abstract getPagesBetweenPositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;
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
.end method

.method public abstract getTotalArabicPages()I
.end method

.method public abstract getTotalPages()I
.end method

.method public abstract getTotalRomanPages()I
.end method

.method public abstract isPageNumberingSupported()Z
.end method

.method public abstract isPaginationNumericOnly()Z
.end method
