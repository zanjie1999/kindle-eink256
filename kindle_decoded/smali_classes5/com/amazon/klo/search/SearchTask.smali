.class public Lcom/amazon/klo/search/SearchTask;
.super Ljava/lang/Object;
.source "SearchTask.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchTask;


# static fields
.field private static final numberOfExpandedViews:I = 0x1


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final query:Ljava/lang/String;

.field private final sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/klo/sidecar/SidecarHandler;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/klo/search/SearchTask;->query:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/amazon/klo/search/SearchTask;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    .line 54
    iput-object p3, p0, Lcom/amazon/klo/search/SearchTask;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 55
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/klo/search/SearchTask;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private buildSearchResultSnippet(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Set;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/krx/search/SearchResultSnippet;"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;-><init>(Ljava/lang/CharSequence;)V

    .line 188
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 189
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 191
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 193
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/krx/Range;

    .line 195
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->addContextualHighlight(Lcom/amazon/kindle/krx/Range;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private intersection(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 62
    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/amazon/klo/search/SearchTask;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public performSearch(Lcom/amazon/kindle/krx/search/IOnSearchListener;)V
    .locals 9

    .line 92
    iget-object v0, p0, Lcom/amazon/klo/search/SearchTask;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    iget-object v1, p0, Lcom/amazon/klo/search/SearchTask;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->init(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 94
    iget-object v0, p0, Lcom/amazon/klo/search/SearchTask;->query:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/klo/search/PorterStemmer;->getStemmedWords(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v3, p0, Lcom/amazon/klo/search/SearchTask;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v3}, Lcom/amazon/klo/sidecar/SidecarHandler;->getBookTerms()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/klo/list/TermListItem;

    .line 101
    invoke-virtual {p0}, Lcom/amazon/klo/search/SearchTask;->wasCanceled()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/klo/search/PorterStemmer;->getStemmedWords(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/amazon/klo/search/SearchTask;->intersection(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 109
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 111
    new-instance v7, Lcom/amazon/klo/search/SearchResult;

    invoke-direct {v7, v4}, Lcom/amazon/klo/search/SearchResult;-><init>(Lcom/amazon/klo/list/TermListItem;)V

    .line 112
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v5, v6}, Lcom/amazon/klo/search/SearchTask;->buildSearchResultSnippet(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Set;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/amazon/klo/search/SearchResult;->setTitle(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)V

    .line 114
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v8

    if-ne v4, v8, :cond_2

    .line 115
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 117
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->getSearchUtils()Lcom/amazon/kindle/krx/search/ISearchUtils;

    move-result-object v4

    .line 122
    invoke-interface {v4, v6}, Lcom/amazon/kindle/krx/search/ISearchUtils;->removeStopWords(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 123
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/amazon/kindle/krx/search/ISearchUtils;->removeStopWords(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 124
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v6, v4, :cond_0

    .line 125
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 135
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 137
    sget-object v0, Lcom/amazon/klo/search/SearchResult$MatchType;->BULLS_EYE:Lcom/amazon/klo/search/SearchResult$MatchType;

    goto :goto_2

    .line 142
    :cond_4
    sget-object v0, Lcom/amazon/klo/search/SearchResult$MatchType;->FULL:Lcom/amazon/klo/search/SearchResult$MatchType;

    move-object v1, v2

    .line 146
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_5

    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/klo/search/SearchResult;

    .line 150
    sget-object v4, Lcom/amazon/klo/search/SearchResult$Style;->EXPANDED:Lcom/amazon/klo/search/SearchResult$Style;

    invoke-virtual {v3, v4}, Lcom/amazon/klo/search/SearchResult;->setStyle(Lcom/amazon/klo/search/SearchResult$Style;)V

    goto :goto_3

    .line 154
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/klo/search/SearchResult;

    .line 156
    invoke-virtual {v2, v0}, Lcom/amazon/klo/search/SearchResult;->setMatchType(Lcom/amazon/klo/search/SearchResult$MatchType;)V

    .line 157
    invoke-virtual {p0}, Lcom/amazon/klo/search/SearchTask;->wasCanceled()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    .line 162
    :cond_6
    invoke-interface {p1, v2}, Lcom/amazon/kindle/krx/search/IOnSearchListener;->onSearchResult(Lcom/amazon/kindle/krx/search/ISearchResult;)V

    goto :goto_4

    .line 165
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/amazon/klo/search/SearchTask;->wasCanceled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/search/IOnSearchListener;->onSearchFinished(Z)V

    return-void
.end method

.method public wasCanceled()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/klo/search/SearchTask;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
