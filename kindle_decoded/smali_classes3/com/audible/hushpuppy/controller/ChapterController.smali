.class public final Lcom/audible/hushpuppy/controller/ChapterController;
.super Lcom/audible/hushpuppy/controller/AbstractController;
.source "ChapterController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderTOCLoadedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/AbstractController<",
        "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
        ">;",
        "Lcom/amazon/kindle/krx/reader/IReaderTOCLoadedListener;"
    }
.end annotation


# static fields
.field private static final CHAPTER_START_GRACE_DURATION_IN_EBOOK_POSITION:I = 0x1f4

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MAX_TOC_DEPTH:I = 0x4


# instance fields
.field private final context:Landroid/content/Context;

.field private final isTOCLoadedForCurrentBook:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final metric:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

.field private final tocEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/metric/IMetricLogger;)V
    .locals 0

    .line 100
    invoke-direct {p0, p2, p3}, Lcom/audible/hushpuppy/controller/AbstractController;-><init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    .line 85
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/hushpuppy/controller/ChapterController;->tocEntries:Ljava/util/List;

    .line 102
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ChapterController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 103
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ChapterController;->context:Landroid/content/Context;

    .line 104
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/ChapterController;->metric:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 105
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ChapterController;->isTOCLoadedForCurrentBook:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    invoke-virtual {p3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/controller/ChapterController;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->tocEntries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/controller/ChapterController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->isTOCLoadedForCurrentBook:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/controller/ChapterController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$300()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 45
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/controller/ChapterController;Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/ITableOfContents;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/ChapterController;->loadEntry(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/ITableOfContents;I)V

    return-void
.end method

.method private getCurrentChapterEntry()Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 5

    .line 214
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ChapterController;->getCurrentPosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 216
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "getCurrentChapterEntry - current position is -1, do nothing"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v2

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ChapterController;->tocEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 221
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "No chapter entry!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v2

    .line 225
    :cond_1
    sget-object v1, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Current chapter, current position %d"

    invoke-interface {v1, v4, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ChapterController;->tocEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 227
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/ChapterController;->tocEntries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    .line 228
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    if-gt v4, v0, :cond_2

    .line 229
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Found current chapter %s at position %d"

    invoke-interface {v0, v4, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 235
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Can\'t find chapter entry. Returning null."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v2
.end method

.method private getCurrentEBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentPosition()I
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 446
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Cannot get current position, BookNavigator is NULL!!, returning -1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return v1

    .line 450
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-nez v0, :cond_1

    .line 452
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "getCurrentPosition - current position is null; return -1"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v1

    .line 456
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    return v0
.end method

.method private getFirstChapterPosition()I
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->tocEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->tocEntries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private getNextChapterEntry(Z)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 5

    .line 247
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ChapterController;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 249
    sget-object p1, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getNextChapterEntry - current position is -1, do nothing"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v1

    .line 254
    :cond_0
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ChapterController;->trimToFirstChapter(I)I

    move-result v0

    .line 256
    sget-object v2, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Next chapter, current position %d"

    invoke-interface {v2, v4, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/ChapterController;->tocEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    .line 258
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    if-le v4, v0, :cond_1

    .line 259
    sget-object p1, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 260
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Found next chapter %s at position %d"

    .line 259
    invoke-interface {p1, v2, v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_2
    if-eqz p1, :cond_3

    .line 266
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ChapterController;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->main_player_final_chapter_reached:I

    .line 267
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 266
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-object v1
.end method

.method private getPreviousChapterEntry(Z)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 5

    .line 380
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ChapterController;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 382
    sget-object p1, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getPreviousChapterEntry - current position is -1, do nothing"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v1

    .line 386
    :cond_0
    sget-object v2, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Previous chapter, current position %d"

    invoke-interface {v2, v4, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/ChapterController;->tocEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 389
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/ChapterController;->tocEntries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    .line 390
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    add-int/lit16 v4, v4, 0x1f4

    if-ge v4, v0, :cond_1

    .line 392
    sget-object p1, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 393
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Found previous chapter %s at position %d"

    .line 392
    invoke-interface {p1, v2, v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 399
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ChapterController;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->main_player_first_chapter_reached:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-object v1
.end method

.method private gotoChapter(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 420
    sget-object p1, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Cannot navigate to needed chapter, BookNavigator is NULL!!"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 424
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    :cond_1
    return-void
.end method

.method private loadEntry(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/ITableOfContents;I)V
    .locals 4

    const/4 v0, 0x4

    if-le p3, v0, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Adding entry %s at position %d"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->tocEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    const-string v3, "Ignored entry %s position %d not available"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    :goto_0
    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getChildren(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)[Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 340
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    add-int/lit8 v3, p3, 0x1

    .line 341
    invoke-direct {p0, v2, p2, v3}, Lcom/audible/hushpuppy/controller/ChapterController;->loadEntry(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/ITableOfContents;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private loadTOCEntries()V
    .locals 2

    .line 278
    new-instance v0, Lcom/audible/hushpuppy/controller/ChapterController$1;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/controller/ChapterController$1;-><init>(Lcom/audible/hushpuppy/controller/ChapterController;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 312
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private trimToFirstChapter(I)I
    .locals 1

    .line 356
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ChapterController;->getFirstChapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getCurrentChapterLabel()Ljava/lang/String;
    .locals 1

    .line 201
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ChapterController;->getCurrentChapterEntry()Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNextChapterStartTime()J
    .locals 5

    .line 152
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ChapterController;->getCurrentEBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->isTOCLoadedForCurrentBook:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ChapterController;->getNextChapterEntry(Z)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v1, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "next chapter start time %d"

    invoke-interface {v1, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 158
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Unable to find next chapter start time"

    invoke-interface {v0, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-wide v1

    .line 162
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Either Book is not open to go to next chapter OR TOC is not loaded set to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/ChapterController;->isTOCLoadedForCurrentBook:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-interface {v0, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-wide v1
.end method

.method public goToNextChapter()V
    .locals 3

    .line 115
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ChapterController;->getCurrentEBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->isTOCLoadedForCurrentBook:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ChapterController;->getNextChapterEntry(Z)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ChapterController;->gotoChapter(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)V

    .line 118
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->metric:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->ChapterForward:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    goto :goto_0

    .line 121
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either Book is not open to go to next chapter OR TOC is not loaded set to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/ChapterController;->isTOCLoadedForCurrentBook:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->metric:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->ChapterForward:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    :goto_0
    return-void
.end method

.method public goToPreviousChapter()V
    .locals 3

    .line 133
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ChapterController;->getCurrentEBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->isTOCLoadedForCurrentBook:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 134
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ChapterController;->getPreviousChapterEntry(Z)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ChapterController;->gotoChapter(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)V

    .line 136
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->metric:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->ChapterBack:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    goto :goto_0

    .line 139
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either Book is not open to go to next chapter OR TOC is not loaded set to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/ChapterController;->isTOCLoadedForCurrentBook:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->metric:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->ChapterBack:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/EBookChangedEvent;)V
    .locals 2

    .line 187
    sget-object p1, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received EBookChangedEvent... loading TOC entries for %s"

    .line 187
    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ChapterController;->isTOCLoadedForCurrentBook:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 190
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ChapterController;->loadTOCEntries()V

    .line 191
    sget-object p1, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "TOC entries cached on EBookOpenEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onTocLoaded()V
    .locals 3

    .line 174
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ChapterController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received onTocLoaded() callback... loading TOC entries for %s"

    .line 174
    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ChapterController;->isTOCLoadedForCurrentBook:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 177
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ChapterController;->loadTOCEntries()V

    .line 178
    sget-object v0, Lcom/audible/hushpuppy/controller/ChapterController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "TOC entries cached on onTOCLoaded() callback"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method
