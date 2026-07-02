.class public Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;
.super Ljava/lang/Object;
.source "TableOfContentsEntry.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;


# instance fields
.field private bookHierarchicalTOC:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

.field private chapterTOCItem:Lcom/amazon/android/docviewer/IChapterTOCItem;

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private level:I

.field private next:Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

.field private parent:Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

.field private position:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/IChapterTOCItem;ILcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p5, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->bookHierarchicalTOC:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    .line 47
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->chapterTOCItem:Lcom/amazon/android/docviewer/IChapterTOCItem;

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->label:Ljava/lang/String;

    .line 51
    new-instance p5, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    invoke-direct {p5, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object p5, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 54
    :cond_0
    iput p2, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->level:I

    .line 55
    iput-object p3, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->parent:Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    .line 56
    iput-object p4, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->next:Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    return-void
.end method

.method private buildChildren()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->bookHierarchicalTOC:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 97
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->chapterTOCItem:Lcom/amazon/android/docviewer/IChapterTOCItem;

    if-nez v2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->bookHierarchicalTOC:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->bookHierarchicalTOC:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    invoke-interface {v3, v2}, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;->getSubTOCItems(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/ITOCItem;

    .line 104
    check-cast v3, Lcom/amazon/android/docviewer/IChapterTOCItem;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    move-object v8, v1

    .line 114
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    new-instance v1, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/amazon/android/docviewer/IChapterTOCItem;

    iget v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->level:I

    add-int/lit8 v6, v0, 0x1

    iget-object v9, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->bookHierarchicalTOC:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    move-object v4, v1

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;-><init>(Lcom/amazon/android/docviewer/IChapterTOCItem;ILcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    .line 121
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v8}, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->getNextEntry()Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    goto :goto_3

    :cond_4
    return-object v3

    :cond_5
    return-object v1
.end method


# virtual methods
.method public declared-synchronized getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->buildChildren()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->children:Ljava/util/List;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->children:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getNextEntry()Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->next:Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    return-object v0
.end method

.method public getNodeLevel()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->level:I

    return v0
.end method

.method public getParentEntry()Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->parent:Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    return-object v0
.end method

.method public getPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method
