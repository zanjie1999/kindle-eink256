.class public interface abstract Lcom/amazon/kcp/search/ISearchResultListener;
.super Ljava/lang/Object;
.source "ISearchResultListener.java"


# virtual methods
.method public abstract onLibrarySearchComplete(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLoadingLibraryResults()V
.end method

.method public abstract onLoadingStoreResults()V
.end method

.method public abstract onQueryMoreStoreResultsComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSearchBarSuggestionComplete(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/SearchBarSuggestionMetadata;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSpellCorrectionRequestComplete(Ljava/lang/String;Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;)V
.end method

.method public abstract onStoreSearchComplete(Ljava/lang/String;Ljava/util/List;ILcom/amazon/kcp/search/store/model/SpellCorrectionInfo;Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;I",
            "Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;",
            "Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onStoreSuggestionComplete(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
