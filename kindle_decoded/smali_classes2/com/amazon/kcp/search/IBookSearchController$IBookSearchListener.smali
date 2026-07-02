.class public interface abstract Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;
.super Ljava/lang/Object;
.source "IBookSearchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/IBookSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBookSearchListener"
.end annotation


# virtual methods
.method public abstract onSearchResult(Lcom/amazon/kcp/search/IBookSearchController;Lcom/amazon/android/docviewer/BookSearchResult;)V
.end method

.method public abstract onSearchResultCount(Lcom/amazon/kcp/search/IBookSearchController;I)V
.end method

.method public abstract onSearchStarted(Lcom/amazon/kcp/search/IBookSearchController;Z)V
.end method

.method public abstract onSearchStopped(Lcom/amazon/kcp/search/IBookSearchController;Z)V
.end method

.method public abstract onTrackerReportCurrentProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V
.end method

.method public abstract onTrackerReportState(Lcom/amazon/kcp/search/IBookSearchController;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onTrackerReset(Lcom/amazon/kcp/search/IBookSearchController;)V
.end method

.method public abstract onTrackerSetMaxProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V
.end method
