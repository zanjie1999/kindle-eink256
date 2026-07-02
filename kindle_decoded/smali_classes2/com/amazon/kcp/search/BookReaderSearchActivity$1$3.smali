.class Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;
.super Ljava/lang/Object;
.source "BookReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->onSearchResult(Lcom/amazon/kcp/search/IBookSearchController;Lcom/amazon/android/docviewer/BookSearchResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

.field final synthetic val$result:Lcom/amazon/android/docviewer/BookSearchResult;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity$1;Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iput-object p2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;->val$result:Lcom/amazon/android/docviewer/BookSearchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;->val$result:Lcom/amazon/android/docviewer/BookSearchResult;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->addSearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->getResultCount()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v1, v1, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/BookReaderSearchActivity;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 156
    invoke-static {}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping search after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v2, v2, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-static {v2}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/BookReaderSearchActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " results"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->stopSearch()V

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$3;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v1, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/BookReaderSearchActivity;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->appendTooManyResultsLabel(I)V

    :cond_0
    return-void
.end method
