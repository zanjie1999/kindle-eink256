.class public Lcom/amazon/kindle/speedreading/toc/TOCUtil;
.super Ljava/lang/Object;
.source "TOCUtil.java"


# static fields
.field private static instance:Lcom/amazon/kindle/speedreading/toc/TOCUtil;


# instance fields
.field sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/kindle/speedreading/toc/TOCUtil;

    invoke-direct {v0}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;-><init>()V

    sput-object v0, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->instance:Lcom/amazon/kindle/speedreading/toc/TOCUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addChildren(Lcom/amazon/kindle/krx/reader/ITableOfContents;Ljava/util/List;Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/ITableOfContents;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            "Z)V"
        }
    .end annotation

    .line 195
    invoke-interface {p1, p3}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getChildren(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)[Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 204
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_1
    array-length p3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    aget-object v2, v0, v1

    .line 208
    invoke-direct {p0, p1, p2, v2, p4}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->addChildren(Lcom/amazon/kindle/krx/reader/ITableOfContents;Ljava/util/List;Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private getChapterItemsForTOCEntry(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/speedreading/toc/ChapterItem;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 261
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    .line 264
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 268
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    add-int/lit8 v4, v4, 0x1

    .line 269
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    .line 270
    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 271
    invoke-interface {v2, v6}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    .line 273
    new-instance v7, Lcom/amazon/kindle/speedreading/toc/ChapterItem;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v8

    invoke-direct {v7, v5, v8, v6}, Lcom/amazon/kindle/speedreading/toc/ChapterItem;-><init>(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 274
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    .line 278
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 279
    new-instance v2, Lcom/amazon/kindle/speedreading/toc/ChapterItem;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-direct {v2, p1, v3, v1}, Lcom/amazon/kindle/speedreading/toc/ChapterItem;-><init>(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 280
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private getChaptersAtLowestLevel(Lcom/amazon/kindle/krx/reader/ITableOfContents;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/ITableOfContents;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    .line 184
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->addChildren(Lcom/amazon/kindle/krx/reader/ITableOfContents;Ljava/util/List;Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Z)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kindle/speedreading/toc/TOCUtil;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->instance:Lcom/amazon/kindle/speedreading/toc/TOCUtil;

    return-object v0
.end method


# virtual methods
.method public getAllChapters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/speedreading/toc/ChapterItem;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->getTOC()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object v0

    if-nez v0, :cond_0

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 246
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->getChaptersAtLowestLevel(Lcom/amazon/kindle/krx/reader/ITableOfContents;Z)Ljava/util/List;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->getChapterItemsForTOCEntry(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTOC()Lcom/amazon/kindle/krx/reader/ITableOfContents;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getTOC()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object v0

    return-object v0
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

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->getTOC()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 89
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasTOC()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->hasTOC()Z

    move-result v0

    return v0
.end method

.method public setReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method
