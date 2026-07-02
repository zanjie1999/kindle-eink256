.class public interface abstract Lcom/amazon/kindle/krx/reader/IBookNavigator;
.super Ljava/lang/Object;
.source "IBookNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;,
        Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;,
        Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;
    }
.end annotation


# virtual methods
.method public abstract animateToNextPage()V
.end method

.method public abstract animateToPreviousPage()V
.end method

.method public abstract commitToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
.end method

.method public abstract getCurrentPage()Lcom/amazon/kindle/krx/reader/IPage;
.end method

.method public abstract getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getCurrentReaderNavigationMode()Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;
.end method

.method public abstract getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getMostRecentPageReadEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getNextPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getNextPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getPreviousPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getPreviousPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getStartReadingPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getTOC()Lcom/amazon/kindle/krx/reader/ITableOfContents;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getTOCForReadingMode(Lcom/amazon/kindle/krx/reader/BookReadingMode;)Lcom/amazon/kindle/krx/reader/ITableOfContents;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract goToLandmark(Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;)V
.end method

.method public abstract goToLocation(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract goToLocation(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract goToNextPage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract goToNextPage(Ljava/util/EnumSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract goToPositionNoWaypoint(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract goToPreviousPage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract hasNextPage()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract hasPreviousPage()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract hasTOC()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract isPositionOnCurrentPage(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract isPositionOnNextPage(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract isPositionOnPreviousPage(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract navigateDocument(Lcom/amazon/kindle/krx/reader/IPosition;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract navigateToPercent(DZZ)V
.end method

.method public abstract updateMostRecentPageReadPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
.end method
