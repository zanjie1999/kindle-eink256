.class public Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;
.super Ljava/lang/Object;
.source "NotebookSearchResult.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$HighlightsWithSearchHitsComparator;,
        Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$AnnotationPositionComparator;
    }
.end annotation


# instance fields
.field private begin:Lcom/amazon/kindle/krx/reader/IPosition;

.field private end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private highlightsWithSearchHits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private highlightsWithoutSearchHits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private notesWithSearchHits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private notesWithoutSearchHits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultSnippetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Lcom/amazon/kindle/krx/search/SearchResultSnippet;",
            ">;"
        }
    .end annotation
.end field

.field private totalHighlights:I

.field private totalNotes:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Z)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->totalNotes:I

    .line 52
    iput v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->totalHighlights:I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->searchResultSnippetMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->highlightsWithSearchHits:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->highlightsWithoutSearchHits:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->notesWithSearchHits:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->notesWithoutSearchHits:Ljava/util/List;

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 60
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->addAnnotationToResult(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Z)V

    return-void
.end method

.method private positionsOverlap(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    .line 139
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    return v2

    .line 142
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 143
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    if-gt p1, p2, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private updatePositionRanges(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    .line 101
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 102
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 103
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 107
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 108
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    :cond_1
    return-void
.end method


# virtual methods
.method public addAnnotationToResult(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Z)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->searchResultSnippetMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    .line 89
    iget-object p2, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->highlightsWithSearchHits:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->highlightsWithoutSearchHits:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->updatePositionRanges(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 81
    iget-object p2, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->notesWithSearchHits:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_3
    iget-object p2, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->notesWithoutSearchHits:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->updatePositionRanges(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :goto_2
    return-void
.end method

.method public annotationOverlapsSearchResult(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 1

    .line 122
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->positionsOverlap(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    return p1
.end method

.method public getAnnotationsWithSearchHits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->highlightsWithSearchHits:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 230
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->notesWithSearchHits:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAnnotationsWithoutSearchHits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->highlightsWithoutSearchHits:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 242
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->notesWithoutSearchHits:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getBegin()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->begin:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getPrioritizedHighlights()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->highlightsWithSearchHits:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$HighlightsWithSearchHitsComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$HighlightsWithSearchHitsComparator;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->highlightsWithoutSearchHits:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$AnnotationPositionComparator;

    invoke-direct {v2, p0, v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$AnnotationPositionComparator;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->highlightsWithSearchHits:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->highlightsWithoutSearchHits:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getPrioritizedNotes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->notesWithSearchHits:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$AnnotationPositionComparator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$AnnotationPositionComparator;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 181
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->notesWithoutSearchHits:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$AnnotationPositionComparator;

    invoke-direct {v2, p0, v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$AnnotationPositionComparator;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->notesWithSearchHits:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->notesWithoutSearchHits:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getSearchResultSnippetForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->searchResultSnippetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    return-object p1
.end method

.method public getTotalHighlights()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->totalHighlights:I

    return v0
.end method

.method public getTotalNotes()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->totalNotes:I

    return v0
.end method

.method public mergeSearchResult(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;)V
    .locals 4

    .line 254
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getAnnotationsWithSearchHits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 256
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getSearchResultSnippetForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object v2

    const/4 v3, 0x1

    .line 255
    invoke-virtual {p0, v1, v2, v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->addAnnotationToResult(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Z)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getAnnotationsWithoutSearchHits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 260
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getSearchResultSnippetForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object v2

    const/4 v3, 0x0

    .line 259
    invoke-virtual {p0, v1, v2, v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->addAnnotationToResult(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public noteHasSearchHit()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->notesWithSearchHits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public searchResultsShouldMerge(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;)Z
    .locals 1

    .line 134
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->positionsOverlap(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    return p1
.end method

.method public setTotalHighlights(I)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->totalHighlights:I

    return-void
.end method

.method public setTotalNotes(I)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->totalNotes:I

    return-void
.end method
