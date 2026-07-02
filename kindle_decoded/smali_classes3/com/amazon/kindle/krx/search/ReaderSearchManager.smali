.class public Lcom/amazon/kindle/krx/search/ReaderSearchManager;
.super Ljava/lang/Object;
.source "ReaderSearchManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/IReaderSearchManager;


# instance fields
.field private final searchProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/SortableProviderRegistry<",
            "Lcom/amazon/kindle/krx/search/ISearchAdapter;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field

.field private final searchUtils:Lcom/amazon/kindle/krx/search/ISearchUtils;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/search/ISearchUtils;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/search/ReaderSearchManager;->searchProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    .line 19
    iput-object p1, p0, Lcom/amazon/kindle/krx/search/ReaderSearchManager;->searchUtils:Lcom/amazon/kindle/krx/search/ISearchUtils;

    return-void
.end method


# virtual methods
.method public createSimpleResultViewBuilder(Landroid/content/Context;Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 1

    .line 37
    new-instance v0, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/krx/search/SimpleSearchResultViewBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;)V

    return-object v0
.end method

.method public bridge synthetic getSearchProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/search/ReaderSearchManager;->getSearchProviderRegistry()Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getSearchProviderRegistry()Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/SortableProviderRegistry<",
            "Lcom/amazon/kindle/krx/search/ISearchAdapter;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/ReaderSearchManager;->searchProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    return-object v0
.end method

.method public getSearchUtils()Lcom/amazon/kindle/krx/search/ISearchUtils;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/ReaderSearchManager;->searchUtils:Lcom/amazon/kindle/krx/search/ISearchUtils;

    return-object v0
.end method

.method public registerSearchProvider(Lcom/amazon/kindle/krx/search/ISearchProvider;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/ReaderSearchManager;->searchProviderRegistry:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method
