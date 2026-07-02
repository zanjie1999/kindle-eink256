.class public interface abstract Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;
.super Ljava/lang/Object;
.source "ISearchHistoryView.java"


# virtual methods
.method public abstract clearSearchHistoryListView()V
.end method

.method public abstract dismissSearchHistoryViewOnUserChanged()V
.end method

.method public abstract showViewForNoSearchHistory()V
.end method

.method public abstract showViewForSearchHistory(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
