.class public Lcom/amazon/kindle/rendering/KRIFToc;
.super Lcom/amazon/android/docviewer/mobi/BaseBookTOC;
.source "KRIFToc.java"


# static fields
.field private static final KRIF_MAX_DEPTH:I = 0x4


# instance fields
.field private final navigable:Lcom/amazon/krf/platform/Navigable;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/NavigationControl;Lcom/amazon/krf/platform/Navigable;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_topLevelChapters:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_chaptersPositionMap:Ljava/util/SortedMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    .line 33
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFToc;->navigable:Lcom/amazon/krf/platform/Navigable;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    const-string v0, "NavigationControl.createTocIterator"

    .line 36
    invoke-static {v0, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 37
    sget-object p2, Lcom/amazon/krf/platform/Position;->invalidPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {p1, p2, p3}, Lcom/amazon/krf/platform/NavigationControl;->createTocIteratorFromPosition(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/TreeIterator;

    move-result-object p1

    const/4 p2, 0x0

    .line 38
    invoke-static {v0, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFToc;->traverseToc(Lcom/amazon/krf/platform/TreeIterator;)V

    :cond_0
    return-void
.end method

.method private traverseTocNodeAndChildren(Lcom/amazon/krf/platform/TreeIterator;ILcom/amazon/kindle/rendering/KRIFTocItem;)V
    .locals 5

    const/4 v0, 0x4

    if-le p2, v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-interface {p1}, Lcom/amazon/krf/platform/TreeIterator;->getItem()Lcom/amazon/krf/platform/NavigationControlNode;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFTocItem;

    invoke-direct {v1, v0, p3}, Lcom/amazon/kindle/rendering/KRIFTocItem;-><init>(Lcom/amazon/krf/platform/NavigationControlNode;Lcom/amazon/kindle/rendering/KRIFTocItem;)V

    .line 101
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_chaptersPositionMap:Ljava/util/SortedMap;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p2, v4, :cond_1

    .line 105
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_topLevelChapters:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p3, 0x0

    .line 116
    :goto_1
    invoke-interface {p1}, Lcom/amazon/krf/platform/TreeIterator;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 117
    invoke-interface {p1, p3}, Lcom/amazon/krf/platform/TreeIterator;->moveToChild(I)Z

    add-int/lit8 v0, p2, 0x1

    .line 118
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/rendering/KRIFToc;->traverseTocNodeAndChildren(Lcom/amazon/krf/platform/TreeIterator;ILcom/amazon/kindle/rendering/KRIFTocItem;)V

    .line 119
    invoke-interface {p1}, Lcom/amazon/krf/platform/TreeIterator;->moveToParent()Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getHierarchyForPosition(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p1, p0}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->getHierarchyForPositionFromToc(ILcom/amazon/android/docviewer/IBookHierarchicalTOC;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->getHierarchyForPosition(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public traverseToc(Lcom/amazon/krf/platform/TreeIterator;)V
    .locals 5

    const-string v0, "KRIFToc.traverseToc"

    const/4 v1, 0x1

    .line 52
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 53
    invoke-interface {p1}, Lcom/amazon/krf/platform/TreeIterator;->moveToRoot()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 54
    :goto_0
    invoke-interface {p1}, Lcom/amazon/krf/platform/TreeIterator;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 55
    invoke-interface {p1, v2}, Lcom/amazon/krf/platform/TreeIterator;->moveToChild(I)Z

    const/4 v4, 0x0

    .line 56
    invoke-direct {p0, p1, v1, v4}, Lcom/amazon/kindle/rendering/KRIFToc;->traverseTocNodeAndChildren(Lcom/amazon/krf/platform/TreeIterator;ILcom/amazon/kindle/rendering/KRIFTocItem;)V

    .line 57
    invoke-interface {p1}, Lcom/amazon/krf/platform/TreeIterator;->moveToParent()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
