.class public interface abstract Lcom/amazon/android/docviewer/IPageLabelProvider;
.super Ljava/lang/Object;
.source "IPageLabelProvider.java"


# virtual methods
.method public abstract getFirstNonEmptyPageLabel()Ljava/lang/String;
.end method

.method public abstract getLastBodyPageLabel()Ljava/lang/String;
.end method

.method public abstract getLastPageLabel()Ljava/lang/String;
.end method

.method public abstract getPageBreakPositionsInSpan(II)[I
.end method

.method public abstract getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I
.end method

.method public abstract getPageLabelForPageIndex(I)Ljava/lang/String;
.end method

.method public abstract getPageLabelForPosition(I)Ljava/lang/String;
.end method

.method public abstract getPageRangeSummary()Ljava/lang/String;
.end method

.method public abstract getPageStartPositionForPageIndex(I)Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getPositionForPageLabel(Ljava/lang/String;)I
.end method

.method public abstract getTotalArabicPages()I
.end method

.method public abstract getTotalPages()I
.end method

.method public abstract getTotalRomanPages()I
.end method

.method public abstract hasOnlyNumericPageLabels()Z
.end method

.method public abstract hasPageNumbers()Z
.end method
