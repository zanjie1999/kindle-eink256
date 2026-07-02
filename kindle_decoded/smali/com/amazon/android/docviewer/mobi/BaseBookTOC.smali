.class public abstract Lcom/amazon/android/docviewer/mobi/BaseBookTOC;
.super Ljava/lang/Object;
.source "BaseBookTOC.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IBookHierarchicalTOC;


# instance fields
.field protected MAX_DEPTH:I

.field protected m_allNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/IChapterTOCItem;",
            ">;"
        }
    .end annotation
.end field

.field protected m_chaptersPositionMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected m_parentToSubchapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/IChapterTOCItem;",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/IChapterTOCItem;",
            ">;>;"
        }
    .end annotation
.end field

.field protected m_startReadingPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

.field protected m_topLevelChapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/IChapterTOCItem;",
            ">;"
        }
    .end annotation
.end field

.field protected m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 148
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->MAX_DEPTH:I

    return-void
.end method

.method private getChapterIndex(I)I
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_chaptersPositionMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_chaptersPositionMap:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_chaptersPositionMap:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_chaptersPositionMap:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public getChapterAtPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->getChapterIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/IChapterTOCItem;

    return-object p1
.end method

.method public getHierarchyForPosition(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {p1, p2, p0}, Lcom/amazon/android/docviewer/HierarchicalTOCHelper;->getHierarchyForPositionFromToc(IILcom/amazon/android/docviewer/IBookHierarchicalTOC;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLowestLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->getChapterAtPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;

    move-result-object p1

    return-object p1
.end method

.method public getNextChapterPosition(I)I
    .locals 2

    .line 152
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->getChapterIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 157
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/IChapterTOCItem;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public getPreviousChapterPosition(I)I
    .locals 2

    .line 165
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->getChapterIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 170
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/IChapterTOCItem;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public getSubTOCItems(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTOCChapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/IChapterTOCItem;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTocRange(I)Lcom/amazon/android/docviewer/IKindleTOC$TocRange;
    .locals 2

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->getChapterIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IChapterTOCItem;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 86
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    const p1, 0x7fffffff

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/IChapterTOCItem;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    .line 88
    :goto_0
    new-instance v1, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v1, v0, p1}, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;-><init>(II)V

    return-object v1
.end method

.method public getTopLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_topLevelChapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/ITOCItem;

    .line 58
    invoke-interface {v2}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v3

    if-gt v3, p1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getTopLevelTOCItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_topLevelChapters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
