.class public interface abstract Lcom/amazon/android/docviewer/KindleDoc;
.super Ljava/lang/Object;
.source "KindleDoc.java"


# virtual methods
.method public abstract getBeginningPosition()I
.end method

.method public abstract getBeginningPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getBookEndPosition()I
.end method

.method public abstract getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
.end method

.method public abstract getBookPositionBase()I
.end method

.method public abstract getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;
.end method

.method public abstract getGotoTextWatcher()Landroid/text/TextWatcher;
.end method

.method public abstract getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;
.end method

.method public abstract getNextPage()Lcom/amazon/android/docviewer/IDocumentPage;
.end method

.method public abstract getNumWordsBetweenPositions(III)I
.end method

.method public abstract getPageEndPosition()I
.end method

.method public abstract getPageEndPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
.end method

.method public abstract getPageStartPosition()I
.end method

.method public abstract getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getPageState(I)[B
.end method

.method public abstract getPreviousPage()Lcom/amazon/android/docviewer/IDocumentPage;
.end method

.method public abstract getReadingProgress()I
.end method

.method public abstract getSearcher()Lcom/amazon/android/docviewer/KindleDocSearcher;
.end method

.method public abstract getStartReadingPosition()I
.end method

.method public abstract getTOC()Lcom/amazon/android/docviewer/IKindleTOC;
.end method

.method public abstract getTOCForReadingMode(Lcom/amazon/kindle/krx/reader/BookReadingMode;)Lcom/amazon/android/docviewer/IKindleTOC;
.end method

.method public abstract getTOCForSearch()Lcom/amazon/android/docviewer/IKindleTOC;
.end method

.method public abstract getTextBetweenPositions(II)Ljava/lang/String;
.end method

.method public abstract getTextBetweenPositions(III)Ljava/lang/String;
.end method

.method public abstract hasCoverPage()Z
.end method

.method public abstract hasHierarchicalTOC()Z
.end method

.method public abstract hasTOC()Z
.end method

.method public abstract isBackAvailable()Z
.end method

.method public abstract isNextPageAvailable()Z
.end method

.method public abstract isPrevPageAvailable()Z
.end method

.method public abstract recordStatisticsOnPostNavigation()V
.end method

.method public abstract userLocationFromPosition(I)I
.end method
