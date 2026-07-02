.class public interface abstract Lcom/amazon/kindle/krx/search/IReaderSearchManager;
.super Ljava/lang/Object;
.source "IReaderSearchManager.java"


# virtual methods
.method public abstract createSimpleResultViewBuilder(Landroid/content/Context;Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
.end method

.method public abstract getSearchProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/search/ISearchAdapter;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/search/ISearchAdapter;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSearchUtils()Lcom/amazon/kindle/krx/search/ISearchUtils;
.end method

.method public abstract registerSearchProvider(Lcom/amazon/kindle/krx/search/ISearchProvider;)V
.end method
