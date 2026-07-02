.class public interface abstract Lcom/amazon/kcp/search/IBookSearchController;
.super Ljava/lang/Object;
.source "IBookSearchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;,
        Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;
    }
.end annotation


# virtual methods
.method public abstract addBookSearchListener(Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getCachedSearchResults(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentProgress()J
.end method

.method public abstract getCurrentQuery()Ljava/lang/String;
.end method

.method public abstract getMaxProgress()J
.end method

.method public abstract isIndexAvailable()Z
.end method

.method public abstract isSearching()Z
.end method

.method public abstract removeBookSearchListener(Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;)V
.end method

.method public abstract startSearch(Ljava/lang/String;)V
.end method

.method public abstract stopSearch()V
.end method

.method public abstract wasCanceled()Z
.end method
