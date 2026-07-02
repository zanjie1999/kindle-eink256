.class public Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem;
.super Lcom/amazon/kindle/search/KindleSearchItem;
.source "NewsstandSearchItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem$NewsstandBookSearchResult;
    }
.end annotation


# instance fields
.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/search/KindleSearchItem;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 51
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    return-void
.end method


# virtual methods
.method public adjustPreContextPosition(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    iget v2, v2, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->firstIntPosition:I

    invoke-interface {v0, v2}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v2

    .line 73
    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    iget p2, p2, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->firstIntPosition:I

    invoke-interface {v0, p2}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object p2

    .line 77
    :goto_0
    invoke-interface {p2}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v3

    invoke-interface {v2}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 82
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;

    iget v2, v2, Lcom/amazon/kindle/search/KindleSearchItem$MatchWord;->firstIntPosition:I

    invoke-interface {v0, v2}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createBookSearchResult(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;IIIII)Lcom/amazon/android/docviewer/BookSearchResult;
    .locals 8

    .line 62
    new-instance p1, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem$NewsstandBookSearchResult;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem$NewsstandBookSearchResult;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Ljava/lang/String;IIIII)V

    return-object p1
.end method

.method public createBookSearchResult(Ljava/lang/String;IIIII)Lcom/amazon/android/docviewer/BookSearchResult;
    .locals 9

    .line 56
    new-instance v8, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem$NewsstandBookSearchResult;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-object v0, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem$NewsstandBookSearchResult;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Ljava/lang/String;IIIII)V

    return-object v8
.end method
