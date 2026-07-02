.class public Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;
.super Ljava/lang/Object;
.source "NotebookSearchTask.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchTask;


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private cancelSearch:Z

.field private final query:Ljava/lang/String;

.field private searchUtils:Lcom/amazon/kindle/krx/search/ISearchUtils;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->query:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->book:Lcom/amazon/kindle/krx/content/IBook;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->cancelSearch:Z

    .line 59
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->getSearchUtils()Lcom/amazon/kindle/krx/search/ISearchUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->searchUtils:Lcom/amazon/kindle/krx/search/ISearchUtils;

    return-void
.end method

.method private addAnnotationToSearchResults(Ljava/util/List;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;",
            ">;",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->createSearchResultSnippet(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object v0

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;

    .line 170
    invoke-virtual {v2, p2}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->annotationOverlapsSearchResult(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, p2, v0, v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->addAnnotationToResult(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Z)V

    return-void

    .line 175
    :cond_2
    new-instance v1, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-direct {v1, p2, v0, v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Z)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createSearchResultSnippet(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/amazon/kindle/krx/search/SearchResultSnippet;"
        }
    .end annotation

    .line 245
    new-instance v0, Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->getTextFromAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;-><init>(Ljava/lang/CharSequence;)V

    .line 247
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 250
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->getContextualText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 251
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 253
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/Range;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 258
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v4, v7, :cond_4

    if-eqz v2, :cond_4

    .line 259
    invoke-direct {p0, p1, v4}, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->isStripped(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 262
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    if-ne v4, v7, :cond_1

    move v6, v4

    .line 266
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    if-ne v4, v7, :cond_3

    .line 268
    new-instance v7, Lcom/amazon/kindle/krx/Range;

    .line 269
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/amazon/kindle/krx/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 268
    invoke-virtual {v0, v7}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->addContextualHighlight(Lcom/amazon/kindle/krx/Range;)V

    .line 271
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 272
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/Range;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static findOccurrences(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    .line 221
    new-instance v2, Lcom/amazon/kindle/krx/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/krx/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getTextFromAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;
    .locals 3

    .line 188
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object v2

    .line 192
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2

    .line 190
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method private isStripped(Ljava/lang/CharSequence;I)Z
    .locals 3

    .line 297
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->searchUtils:Lcom/amazon/kindle/krx/search/ISearchUtils;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/search/ISearchUtils;->isPunctuation(C)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 302
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez p2, :cond_2

    sub-int/2addr p2, v2

    :goto_0
    if-ltz p2, :cond_2

    .line 304
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->searchUtils:Lcom/amazon/kindle/krx/search/ISearchUtils;

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/search/ISearchUtils;->isPunctuation(C)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private mergeSearchResults(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;

    const/4 v2, 0x0

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;

    .line 153
    invoke-virtual {v4, v1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->searchResultsShouldMerge(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    invoke-virtual {v4, v1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->mergeSearchResult(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;)V

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_0

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->searchUtils:Lcom/amazon/kindle/krx/search/ISearchUtils;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/search/ISearchUtils;->stripPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->searchUtils:Lcom/amazon/kindle/krx/search/ISearchUtils;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/search/ISearchUtils;->stripWhitespaceAndConsecutiveSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancelSearch()V
    .locals 1

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->cancelSearch:Z

    return-void
.end method

.method public performSearch(Lcom/amazon/kindle/krx/search/IOnSearchListener;)V
    .locals 12

    .line 72
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 74
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 76
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->query:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_a

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v9, v0, v6

    .line 87
    invoke-interface {v9}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 89
    :cond_0
    invoke-interface {v9}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    add-int/lit8 v8, v8, 0x1

    .line 93
    :cond_1
    :goto_1
    iget-boolean v10, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->cancelSearch:Z

    if-eqz v10, :cond_2

    goto :goto_3

    .line 96
    :cond_2
    invoke-direct {p0, v9}, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->getTextFromAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 97
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 99
    invoke-static {v1, v10}, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->findOccurrences(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 98
    invoke-direct {p0, v2, v9, v10}, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->addAnnotationToSearchResults(Ljava/util/List;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)V

    goto :goto_2

    .line 101
    :cond_3
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 109
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 110
    iget-boolean v3, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->cancelSearch:Z

    if-eqz v3, :cond_6

    goto :goto_5

    .line 113
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;

    .line 114
    invoke-virtual {v4, v1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->annotationOverlapsSearchResult(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->createSearchResultSnippet(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object v3

    .line 118
    invoke-virtual {v4, v1, v3, v5}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->addAnnotationToResult(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Z)V

    goto :goto_4

    .line 127
    :cond_8
    :goto_5
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->mergeSearchResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;

    .line 134
    iget-boolean v2, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->cancelSearch:Z

    if-eqz v2, :cond_9

    goto :goto_7

    .line 137
    :cond_9
    invoke-virtual {v1, v7}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->setTotalHighlights(I)V

    .line 138
    invoke-virtual {v1, v8}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->setTotalNotes(I)V

    .line 139
    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/search/IOnSearchListener;->onSearchResult(Lcom/amazon/kindle/krx/search/ISearchResult;)V

    goto :goto_6

    .line 144
    :cond_a
    :goto_7
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;->cancelSearch:Z

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/search/IOnSearchListener;->onSearchFinished(Z)V

    return-void
.end method
