.class public final Lcom/amazon/android/docviewer/pdf/PdfBookTOC;
.super Ljava/lang/Object;
.source "PdfBookTOC.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IBookHierarchicalTOC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile m_pdfBookmarksByPosition:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile m_topLevelTOCItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/IChapterTOCItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_topLevelTOCItemsTreeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/android/docviewer/IChapterTOCItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_topLevelTOCItems:Ljava/util/List;

    .line 64
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_pdfBookmarksByPosition:Ljava/util/NavigableMap;

    .line 65
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_topLevelTOCItemsTreeMap:Ljava/util/TreeMap;

    return-void
.end method

.method public static createPdfBookTOC(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/pdf/PdfBookmark;)Lcom/amazon/android/docviewer/pdf/PdfBookTOC;
    .locals 9

    if-eqz p1, :cond_8

    .line 80
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 81
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getChildren()[Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 83
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 87
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getChildren()[Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-object v6, p1, v4

    if-nez v6, :cond_1

    .line 91
    sget-object v5, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "null top level bookmark, continuing"

    invoke-static {v5, v6}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_1
    new-instance v7, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;

    invoke-direct {v7, v6, v5}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;-><init>(Lcom/amazon/android/docviewer/pdf/PdfBookmark;I)V

    invoke-interface {v1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v5, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;

    invoke-direct {v5, p0, v6}, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/pdf/PdfBookmark;)V

    .line 98
    iget-object v7, v0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_topLevelTOCItems:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v7, v0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_topLevelTOCItemsTreeMap:Ljava/util/TreeMap;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    .line 109
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Bookmark "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at depth "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->getDepth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->getPageIndex()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPositionFromPageIndex(I)I

    move-result p1

    .line 114
    iget-object v2, v0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_pdfBookmarksByPosition:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_pdfBookmarksByPosition:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, p1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_4
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->getPdfBookmark()Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getChildren()[Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 122
    array-length v2, p1

    if-nez v2, :cond_5

    goto :goto_2

    .line 126
    :cond_5
    array-length v2, p1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_3

    aget-object v6, p1, v4

    if-eqz v6, :cond_6

    .line 128
    new-instance v7, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->getDepth()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {v7, v6, v8}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;-><init>(Lcom/amazon/android/docviewer/pdf/PdfBookmark;I)V

    invoke-interface {v1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-object v0

    .line 77
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rootBookmark cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDeepestBookmarkBeforePos(I)Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;
    .locals 5

    const/4 v0, 0x0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_pdfBookmarksByPosition:Ljava/util/NavigableMap;

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v1, -0x1

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;

    .line 233
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->getDepth()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v4, v1, :cond_0

    move-object v2, v3

    move v1, v4

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 240
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->TAG:Ljava/lang/String;

    const-string v2, "Exception in getDeepestBookmarkBeforePos: "

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private getTOCItemForPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;
    .locals 2

    .line 257
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->getDeepestBookmarkBeforePos(I)Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;

    move-result-object p1

    if-nez p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_pdfBookmarksByPosition:Ljava/util/NavigableMap;

    invoke-interface {p1}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;

    .line 261
    :cond_0
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->getPdfBookmark()Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/pdf/PdfBookmark;)V

    return-object v0
.end method


# virtual methods
.method public getChapterAtPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->getTOCItemForPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;

    move-result-object p1

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

    .line 144
    invoke-static {p1, p2, p0}, Lcom/amazon/android/docviewer/HierarchicalTOCHelper;->getHierarchyForPositionFromToc(IILcom/amazon/android/docviewer/IBookHierarchicalTOC;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLowestLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNextChapterPosition(I)I
    .locals 1

    .line 266
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->getChapterAtPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;

    move-result-object p1

    .line 268
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->getTOCChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 270
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->getTOCChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->getTOCChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/IChapterTOCItem;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getPreviousChapterPosition(I)I
    .locals 1

    .line 279
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->getChapterAtPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->getTOCChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->getTOCChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/IChapterTOCItem;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getSubTOCItems(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/util/List;
    .locals 6
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

    if-nez p1, :cond_0

    .line 189
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "tocItem is null"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 193
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_pdfBookmarksByPosition:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 196
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "in our map of bookmarks for title: \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x0

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;

    .line 202
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    :cond_3
    if-nez v2, :cond_4

    .line 208
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find bookmark in our map of bookmarks, title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", position: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 213
    :cond_4
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC$Bookmark;->getPdfBookmark()Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfBookmark;->getChildren()[Lcom/amazon/android/docviewer/pdf/PdfBookmark;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 214
    array-length v0, p1

    if-nez v0, :cond_5

    goto :goto_1

    .line 218
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, p1, v2

    .line 220
    new-instance v4, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;

    iget-object v5, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {v4, v5, v3}, Lcom/amazon/android/docviewer/pdf/PdfChapterTOCItem;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/pdf/PdfBookmark;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0

    .line 215
    :cond_7
    :goto_1
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

    .line 178
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_topLevelTOCItems:Ljava/util/List;

    return-object v0
.end method

.method public getTocRange(I)Lcom/amazon/android/docviewer/IKindleTOC$TocRange;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTopLevelTOCItemAtPageIndex(I)Lcom/amazon/android/docviewer/ITOCItem;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_topLevelTOCItemsTreeMap:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 162
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/ITOCItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTopLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;
    .locals 0

    .line 152
    invoke-static {p1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->getTopLevelTOCItemAtPageIndex(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    return-object p1
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

    .line 138
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBookTOC;->m_topLevelTOCItems:Ljava/util/List;

    return-object v0
.end method
