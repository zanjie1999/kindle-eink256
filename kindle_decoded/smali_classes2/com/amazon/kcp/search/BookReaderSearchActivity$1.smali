.class Lcom/amazon/kcp/search/BookReaderSearchActivity$1;
.super Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;
.source "BookReaderSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/BookReaderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-direct {p0}, Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchResult(Lcom/amazon/kcp/search/IBookSearchController;Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object p1, p1, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->prepareHighlightedResultText(Lcom/amazon/android/docviewer/BookSearchResult;)V

    .line 147
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    new-instance v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity$1;Lcom/amazon/android/docviewer/BookSearchResult;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearchStarted(Lcom/amazon/kcp/search/IBookSearchController;Z)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    new-instance v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$1;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity$1;Z)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearchStopped(Lcom/amazon/kcp/search/IBookSearchController;Z)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    new-instance p2, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$2;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTrackerReportCurrentProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    new-instance v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$6;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity$1;J)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTrackerReset(Lcom/amazon/kcp/search/IBookSearchController;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 205
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->onTrackerSetMaxProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V

    .line 206
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->onTrackerReportCurrentProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V

    return-void
.end method

.method public onTrackerSetMaxProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    new-instance v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$5;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity$1;J)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
