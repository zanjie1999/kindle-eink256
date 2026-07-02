.class public Lcom/amazon/android/docviewer/KindleTOCLocator;
.super Ljava/lang/Object;
.source "KindleTOCLocator.java"

# interfaces
.implements Lcom/amazon/nwstd/docviewer/IContentInformationProvider;


# instance fields
.field mDoc:Lcom/amazon/android/docviewer/KindleDoc;

.field mPageNumberCalcEventProvider:Lcom/amazon/foundation/internal/ObjectEventProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/internal/ObjectEventProvider<",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation
.end field

.field mPageNumberToPositionMapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDoc;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mDoc:Lcom/amazon/android/docviewer/KindleDoc;

    .line 29
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mPageNumberToPositionMapCache:Ljava/util/Map;

    .line 30
    new-instance p1, Lcom/amazon/foundation/internal/ObjectEventProvider;

    invoke-direct {p1}, Lcom/amazon/foundation/internal/ObjectEventProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mPageNumberCalcEventProvider:Lcom/amazon/foundation/internal/ObjectEventProvider;

    return-void
.end method

.method private getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mDoc:Lcom/amazon/android/docviewer/KindleDoc;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    return-object v0
.end method

.method private getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mDoc:Lcom/amazon/android/docviewer/KindleDoc;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    return-object v0
.end method


# virtual methods
.method public clearPageCountCache()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mPageNumberToPositionMapCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public doesAnArticleStartOnGivenPage(Lcom/amazon/android/docviewer/IDocumentPage;)Z
    .locals 5

    .line 132
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v0

    .line 138
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 139
    invoke-interface {v2}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v4

    if-lt v4, v0, :cond_1

    return v3

    .line 147
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result p1

    .line 148
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object p1

    if-eq v2, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getArticleAtOffset(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;
    .locals 4

    if-gez p1, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getFirstArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getLastArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    .line 288
    :goto_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v1

    .line 293
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    add-int/2addr v0, p1

    if-ltz v0, :cond_3

    .line 294
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_2

    goto :goto_1

    .line 297
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/toc/IArticleTOCItem;

    return-object p1

    :cond_3
    :goto_1
    return-object v2
.end method

.method public getFirstArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragmentPositionForReplicaPage(Ljava/lang/Integer;)I
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/toc/IReplicaPageItem;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 127
    :cond_1
    invoke-interface {p1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getLastArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageNumberCalcEventProvider()Lcom/amazon/foundation/internal/ObjectEventProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/foundation/internal/ObjectEventProvider<",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mPageNumberCalcEventProvider:Lcom/amazon/foundation/internal/ObjectEventProvider;

    return-object v0
.end method

.method public getPageNumberForPosition(Lcom/amazon/android/docviewer/ITOCItem;I)I
    .locals 3

    if-eqz p1, :cond_5

    .line 255
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mPageNumberToPositionMapCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mPageNumberToPositionMapCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 261
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p2, v0, :cond_1

    goto :goto_1

    .line 264
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 265
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x1

    .line 267
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_4

    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method public getPageNumberMap(Lcom/amazon/android/docviewer/ITOCItem;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mPageNumberToPositionMapCache:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object p2, p0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mPageNumberToPositionMapCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    :cond_1
    if-nez p2, :cond_2

    return-object v1

    .line 204
    :cond_2
    new-instance p2, Lcom/amazon/android/docviewer/KindleTOCLocator$1;

    invoke-direct {p2, p0}, Lcom/amazon/android/docviewer/KindleTOCLocator$1;-><init>(Lcom/amazon/android/docviewer/KindleTOCLocator;)V

    .line 215
    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/ITOCItem;->computePageNumberToPositionMap(Lcom/amazon/foundation/internal/IObjectCallback;)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getReplicaPageAtPosition(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/toc/IReplicaPageItem;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReplicaPageForFragmentPosition(Ljava/lang/Integer;)Lcom/amazon/nwstd/toc/IReplicaPageItem;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0

    .line 93
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 97
    :cond_2
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    .line 102
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/amazon/nwstd/toc/IArticleTOCItem;->getRelatedReplicaPageId(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 104
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageById(Ljava/lang/String;)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public getSectionAtCurrentPosition()Lcom/amazon/nwstd/toc/ISectionTOCItem;
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getSectionAtPosition(I)Lcom/amazon/nwstd/toc/ISectionTOCItem;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFirstArticle()Z
    .locals 3

    .line 178
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getLastArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isLastArticle()Z
    .locals 4

    .line 162
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPeriodicalTOC()Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getLastArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
