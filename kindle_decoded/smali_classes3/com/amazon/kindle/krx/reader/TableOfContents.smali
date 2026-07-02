.class public Lcom/amazon/kindle/krx/reader/TableOfContents;
.super Ljava/lang/Object;
.source "TableOfContents.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/ITableOfContents;


# static fields
.field private static final HEADER_DEPTH:I = -0x1


# instance fields
.field private bookHierarchicalTOC:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

.field private final tableOfContentsEntryHeader:Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/IKindleTOC;)V
    .locals 7

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    instance-of v0, p1, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    if-eqz v0, :cond_0

    .line 26
    move-object v6, p1

    check-cast v6, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    iput-object v6, p0, Lcom/amazon/kindle/krx/reader/TableOfContents;->bookHierarchicalTOC:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    .line 31
    new-instance p1, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;-><init>(Lcom/amazon/android/docviewer/IChapterTOCItem;ILcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/TableOfContents;->tableOfContentsEntryHeader:Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "IKindleTOC isn\'t an instance of IBookHierarchicalTOC!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getChildrenList(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 123
    instance-of v0, p1, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getChild(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/reader/TableOfContents;->getChildrenList(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildren(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)[Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/reader/TableOfContents;->getChildrenList(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLastChild(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/reader/TableOfContents;->getChildrenList(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNextEntry(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 1

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/amazon/kindle/krx/reader/TableOfContents;->tableOfContentsEntryHeader:Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/reader/TableOfContents;->getChild(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    instance-of v0, p1, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    if-eqz v0, :cond_1

    .line 42
    check-cast p1, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->getNextEntry()Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNodeChildCount(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)I
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/reader/TableOfContents;->getChildrenList(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getParent(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 1

    if-eqz p1, :cond_0

    .line 82
    instance-of v0, p1, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;->getParentEntry()Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTOCFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 6

    .line 92
    invoke-static {p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;->valueOf(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/model/Annotations/IntPosition;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContents;->bookHierarchicalTOC:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    .line 95
    invoke-virtual {p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;->getIntPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IBookTOC;->getChapterAtPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    .line 98
    new-instance p1, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/kindle/krx/reader/TableOfContents;->bookHierarchicalTOC:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;-><init>(Lcom/amazon/android/docviewer/IChapterTOCItem;ILcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V

    return-object p1
.end method

.method public getTopLevelTOCItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/TableOfContents;->tableOfContentsEntryHeader:Lcom/amazon/kindle/krx/reader/TableOfContentsEntry;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/TableOfContents;->getChildrenList(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
