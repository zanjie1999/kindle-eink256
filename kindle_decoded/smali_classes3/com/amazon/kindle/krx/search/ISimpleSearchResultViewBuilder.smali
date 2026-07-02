.class public interface abstract Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
.super Ljava/lang/Object;
.source "ISimpleSearchResultViewBuilder.java"


# virtual methods
.method public abstract build()Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;
.end method

.method public abstract setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
.end method

.method public abstract setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;I)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
.end method

.method public abstract setBody(Ljava/lang/CharSequence;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
.end method

.method public abstract setBody(Ljava/lang/CharSequence;I)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
.end method

.method public abstract setChildResults(Ljava/util/List;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;",
            ">;)",
            "Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;"
        }
    .end annotation
.end method

.method public abstract setDecoratorColor(I)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
.end method

.method public abstract setFooters(Ljava/util/List;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;"
        }
    .end annotation
.end method

.method public abstract setTitle(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
.end method
