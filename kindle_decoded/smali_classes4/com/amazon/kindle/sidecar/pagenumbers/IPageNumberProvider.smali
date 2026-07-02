.class public interface abstract Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;
.super Ljava/lang/Object;
.source "IPageNumberProvider.java"


# virtual methods
.method public abstract getMaxPageLabel()Ljava/lang/String;
.end method

.method public abstract getPageBreakPositionsInSpan(II)[I
.end method

.method public abstract getPageLabelForFirstPosition(I)Ljava/lang/String;
.end method

.method public abstract getPageLabelPairInSpan(II)[Ljava/lang/String;
.end method

.method public abstract getPageRangeSummary()Ljava/lang/String;
.end method

.method public abstract getPositionForPageLabel(Ljava/lang/String;)I
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
