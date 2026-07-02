.class public interface abstract Lcom/amazon/kindle/krx/search/ISearchAdapter;
.super Ljava/lang/Object;
.source "ISearchAdapter.java"


# virtual methods
.method public abstract allowExtraResultToReplaceExpander()Z
.end method

.method public abstract areSearchResultsDynamic()Z
.end method

.method public abstract createSearchTask(Ljava/lang/String;)Lcom/amazon/kindle/krx/search/ISearchTask;
.end method

.method public abstract getAdapterSpecificMetricsMetadata(Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/ISearchResult;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getMaximumSearchResultsBeforeExpander()I
.end method

.method public abstract getTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getViewTypeForResult(Lcom/amazon/kindle/krx/search/ISearchResult;)I
.end method

.method public abstract onResultClicked(Lcom/amazon/kindle/krx/search/ISearchResult;)Z
.end method

.method public abstract prepareForSearch()V
.end method

.method public abstract viewForSearchResult(Lcom/amazon/kindle/krx/search/ISearchResult;Landroid/view/View;Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
.end method
