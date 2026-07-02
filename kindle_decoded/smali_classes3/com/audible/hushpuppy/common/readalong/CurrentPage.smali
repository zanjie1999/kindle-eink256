.class public final Lcom/audible/hushpuppy/common/readalong/CurrentPage;
.super Ljava/lang/Object;
.source "CurrentPage.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final bookElements:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/krx/content/IBookElement;",
            ">;"
        }
    .end annotation
.end field

.field private lastElementStartPos:I

.field private final lineStartPositionMap:Lcom/audible/hushpuppy/common/misc/SparseIntArray;

.field private final pageEndPos:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final pageStartPos:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBookContent;Lcom/amazon/kindle/krx/reader/IBookNavigator;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->bookElements:Ljava/util/TreeMap;

    .line 35
    new-instance v0, Lcom/audible/hushpuppy/common/misc/SparseIntArray;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/misc/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->lineStartPositionMap:Lcom/audible/hushpuppy/common/misc/SparseIntArray;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->lastElementStartPos:I

    .line 50
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->pageStartPos:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 51
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->pageEndPos:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 52
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->initializePageMap(Lcom/amazon/kindle/krx/content/IBookContent;)V

    return-void
.end method

.method private convertToBookElementInfo(Lcom/amazon/kindle/krx/content/IBookElement;)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;
    .locals 4

    .line 218
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBookElement;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 219
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBookElement;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 221
    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->toInt(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v0

    .line 222
    invoke-static {v1}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->toInt(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v1

    .line 223
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBookElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 225
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v3, v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/Rectangle;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 229
    :goto_0
    new-instance v3, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBookElement;->toDisplayableString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v2, v0, v1, p1}, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;-><init>(Lcom/amazon/kindle/krx/reader/Rectangle;IILjava/lang/String;)V

    return-object v3
.end method

.method private initializePageMap(Lcom/amazon/kindle/krx/content/IBookContent;)V
    .locals 10

    .line 158
    iget-object v0, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->pageStartPos:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->pageEndPos:Lcom/amazon/kindle/krx/reader/IPosition;

    sget-object v2, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->TEXT:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/krx/content/IBookContent;->getElements(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;)Ljava/util/List;

    move-result-object p1

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/content/IBookElement;

    .line 166
    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBookElement;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-static {v5}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->toInt(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v5

    .line 167
    iget-object v6, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->bookElements:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iput v5, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->lastElementStartPos:I

    .line 169
    invoke-virtual {p0, v5}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->getElement(I)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->getElementYIndex()I

    move-result v4

    .line 171
    invoke-virtual {p0, v5}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->getElement(I)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;

    move-result-object v6

    if-eq v1, v0, :cond_0

    int-to-float v7, v1

    int-to-float v8, v2

    int-to-float v9, v4

    .line 173
    invoke-direct {p0, v7, v8, v9}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->isNewLine(FFF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 175
    :cond_0
    invoke-virtual {v6}, Lcom/audible/hushpuppy/common/readalong/BookElementInfo;->getElementHeight()I

    move-result v2

    move v1, v4

    move v3, v5

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->lineStartPositionMap:Lcom/audible/hushpuppy/common/misc/SparseIntArray;

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isNewLine(FFF)Z
    .locals 1

    cmpl-float v0, p1, p3

    if-eqz v0, :cond_1

    add-float v0, p1, p2

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    sub-float/2addr p1, p2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getElement(I)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->bookElements:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/IBookElement;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->getNextAvailableBookElementInfoOnPage(I)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->convertToBookElementInfo(Lcom/amazon/kindle/krx/content/IBookElement;)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;

    move-result-object p1

    return-object p1
.end method

.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->pageEndPos:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getLineStartPosition(I)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->lineStartPositionMap:Lcom/audible/hushpuppy/common/misc/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public getNextAvailableBookElementInfoOnPage(I)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;
    .locals 3

    .line 97
    sget-object v0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextBookElementInfoOnPage Position NOT FOUND in the page map eBookPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->bookElements:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 100
    invoke-interface {p1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object p1, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Empty tail map, no next element on page."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 105
    :cond_0
    invoke-interface {p1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->getElement(I)Lcom/audible/hushpuppy/common/readalong/BookElementInfo;

    move-result-object p1

    return-object p1
.end method

.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->pageStartPos:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public isPositionOnPage(I)Z
    .locals 5

    .line 114
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->toInt(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->toInt(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v1

    .line 117
    sget-object v2, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPositionOnPage pageStartPos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " <= eBookPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " <= pageEndPos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    if-gt v0, p1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
