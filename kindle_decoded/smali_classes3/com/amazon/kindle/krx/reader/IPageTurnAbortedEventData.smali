.class public interface abstract Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;
.super Ljava/lang/Object;
.source "IPageTurnAbortedEventData.java"


# virtual methods
.method public abstract getContent()Lcom/amazon/kindle/krx/content/IBook;
.end method

.method public abstract getNavigationType()Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;
.end method

.method public abstract getPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract isNextPageAvailable()Z
.end method

.method public abstract isPrevPageAvailable()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
