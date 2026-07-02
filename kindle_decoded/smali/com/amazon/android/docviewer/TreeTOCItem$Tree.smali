.class public Lcom/amazon/android/docviewer/TreeTOCItem$Tree;
.super Ljava/lang/Object;
.source "TreeTOCItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/TreeTOCItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tree"
.end annotation


# static fields
.field private static final MAX_TOC_DEPTH:I = 0x2

.field private static final TOP_LEVEL:I


# instance fields
.field protected final itemPositionLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/android/docviewer/TreeTOCItem;",
            ">;"
        }
    .end annotation
.end field

.field private final topLevel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/TreeTOCItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->topLevel:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->itemPositionLookup:Ljava/util/Map;

    return-void
.end method

.method private addSubChapters(Lcom/amazon/android/docviewer/TreeTOCItem;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;I)V
    .locals 4

    const/4 v0, 0x2

    if-le p3, v0, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTOCItem()Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;->getSubTOCItems(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/util/List;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/ITOCItem;

    .line 291
    new-instance v2, Lcom/amazon/android/docviewer/TreeTOCItem;

    invoke-direct {v2, v1, p3, p1}, Lcom/amazon/android/docviewer/TreeTOCItem;-><init>(Lcom/amazon/android/docviewer/ITOCItem;ILcom/amazon/android/docviewer/TreeTOCItem;)V

    .line 292
    iget-object v3, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->itemPositionLookup:Ljava/util/Map;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, p3, 0x1

    .line 293
    invoke-direct {p0, v2, p2, v1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->addSubChapters(Lcom/amazon/android/docviewer/TreeTOCItem;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;I)V

    .line 294
    invoke-virtual {p1, v2}, Lcom/amazon/android/docviewer/TreeTOCItem;->addChild(Lcom/amazon/android/docviewer/TreeTOCItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addTOCCover(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/TreeTOCItem;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 379
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 384
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    .line 385
    invoke-static {p1, v1}, Lcom/amazon/android/tableofcontents/TableOfContentsUtil;->hasNoCoverInTOC(Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/android/docviewer/IKindleTOC;)Z

    move-result v1

    .line 387
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->hasCoverPage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->DEFAULT:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne p1, v2, :cond_2

    if-eqz v1, :cond_2

    .line 390
    new-instance p1, Lcom/amazon/android/docviewer/TreeTOCItem;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v0}, Lcom/amazon/android/docviewer/TreeTOCItem;-><init>(Lcom/amazon/android/docviewer/ITOCItem;ILcom/amazon/android/docviewer/TreeTOCItem;)V

    .line 391
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$string;->goto_cover:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/TreeTOCItem;->setTitle(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->setTocPosition(I)V

    .line 394
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->addTopLevelItem(Lcom/amazon/android/docviewer/TreeTOCItem;)V

    return-object p1

    :cond_2
    return-object v0
.end method

.method public addTOCGoToBeginning(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/TreeTOCItem;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 406
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 411
    :cond_1
    new-instance p1, Lcom/amazon/android/docviewer/TreeTOCItem;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v0}, Lcom/amazon/android/docviewer/TreeTOCItem;-><init>(Lcom/amazon/android/docviewer/ITOCItem;ILcom/amazon/android/docviewer/TreeTOCItem;)V

    .line 412
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$string;->lib_context_beginning:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/TreeTOCItem;->setTitle(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->setTocPosition(I)V

    .line 416
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->addTopLevelItem(Lcom/amazon/android/docviewer/TreeTOCItem;)V

    return-object p1
.end method

.method public addTopLevelItem(Lcom/amazon/android/docviewer/TreeTOCItem;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->topLevel:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendTopLevelItems(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 5

    .line 268
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 276
    :cond_1
    check-cast p1, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    .line 277
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/ITOCItem;

    .line 278
    new-instance v2, Lcom/amazon/android/docviewer/TreeTOCItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/amazon/android/docviewer/TreeTOCItem;-><init>(Lcom/amazon/android/docviewer/ITOCItem;ILcom/amazon/android/docviewer/TreeTOCItem;)V

    .line 279
    iget-object v3, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->itemPositionLookup:Ljava/util/Map;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 280
    invoke-direct {p0, v2, p1, v1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->addSubChapters(Lcom/amazon/android/docviewer/TreeTOCItem;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;I)V

    .line 281
    invoke-virtual {p0, v2}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->addTopLevelItem(Lcom/amazon/android/docviewer/TreeTOCItem;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearTopLevelItemsAndPositionMap()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->topLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 239
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->itemPositionLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected getChapterTocPosition(I)I
    .locals 4

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    iget-object v1, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->itemPositionLookup:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 307
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    .line 308
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    if-nez v1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_0
    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 329
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getVisibleNodes()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/TreeTOCItem;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->topLevel:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/TreeTOCItem;

    .line 246
    invoke-virtual {p0, v2, v0}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->getVisibleNodes(Lcom/amazon/android/docviewer/TreeTOCItem;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getVisibleNodes(Lcom/amazon/android/docviewer/TreeTOCItem;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/TreeTOCItem;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/TreeTOCItem;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/TreeTOCItem;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/TreeTOCItem;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/TreeTOCItem;

    .line 262
    invoke-virtual {p0, v0, p2}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->getVisibleNodes(Lcom/amazon/android/docviewer/TreeTOCItem;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateCurrentReadChapter(I)Lcom/amazon/android/docviewer/TreeTOCItem;
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->itemPositionLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->getChapterTocPosition(I)I

    move-result p1

    .line 344
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->itemPositionLookup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/TreeTOCItem;

    move-object v0, p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 348
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem;->isChild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem;->getParent()Lcom/amazon/android/docviewer/TreeTOCItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 351
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 352
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->setExpanded(Z)V

    goto :goto_0

    :cond_2
    return-object p1
.end method
