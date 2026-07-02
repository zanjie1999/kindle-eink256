.class public Lcom/amazon/krf/platform/KRIFThumbnailManager;
.super Ljava/lang/Object;
.source "KRIFThumbnailManager.java"

# interfaces
.implements Lcom/amazon/kindle/nln/IThumbnailManager;


# static fields
.field private static final ATTRIBUTE_VIEW:Ljava/lang/String; = "View"

.field private static DEBUG_INDEXING:Z = false

.field private static final DEBUG_INDEXING_CHUNK_SIZE:I = 0xf

.field private static final DEBUG_INDEXING_DELAY:I = 0x2710

.field private static final DEBUG_INDEXING_MAX_CHUNKS:I = 0xf

.field private static final METRIC_UNEXPECTED_VIEW_TYPE:Ljava/lang/String; = "UnexpectedViewType"

.field private static final SCREENFULS_TO_CACHE:I = 0x3

.field private static final SECTION_INVALIDATION_DELAY:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private awaitingListenerUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private cachedBasePage:Lcom/amazon/krf/platform/PageModel;

.field private cachedBasePos:Lcom/amazon/kindle/krx/reader/IPosition;

.field private cachedIndexedRange:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentKRFIndexingPosition:Lcom/amazon/krf/platform/Position;

.field private debugChunks:I

.field private debugIndexHandler:Landroid/os/Handler;

.field private debugUpdateIndexTask:Ljava/lang/Runnable;

.field private docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

.field private hasAllIndexedPages:Z

.field private hintPage:Lcom/amazon/kindle/nln/IThumbnailPage;

.field private indexedPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;"
        }
    .end annotation
.end field

.field private indexingHint:Lcom/amazon/kindle/krx/reader/IPosition;

.field private volatile isDisposed:Z

.field private krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private offsetPageMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;"
        }
    .end annotation
.end field

.field private pageComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;"
        }
    .end annotation
.end field

.field private recentPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;"
        }
    .end annotation
.end field

.field private renderRect:Landroid/graphics/Rect;

.field private task:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnailScale:F

.field private unmanagedPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;"
        }
    .end annotation
.end field

.field private visiblePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;"
        }
    .end annotation
.end field

.field private windowRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->DEBUG_INDEXING:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/KRFView;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 3

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    iput v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->thumbnailScale:F

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexedPages:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->recentPages:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->unmanagedPages:Ljava/util/Set;

    .line 81
    new-instance v0, Lcom/amazon/krf/platform/KRIFThumbnailManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager$1;-><init>(Lcom/amazon/krf/platform/KRIFThumbnailManager;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->pageComparator:Ljava/util/Comparator;

    .line 126
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->offsetPageMap:Ljava/util/TreeMap;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugChunks:I

    .line 136
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    .line 148
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->awaitingListenerUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 162
    iput-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->currentKRFIndexingPosition:Lcom/amazon/krf/platform/Position;

    .line 166
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/amazon/krf/platform/ViewSettings;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/amazon/krf/platform/ViewSettings;->getHeight()I

    move-result p2

    invoke-direct {v1, v0, v0, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->windowRect:Landroid/graphics/Rect;

    .line 167
    iget p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->thumbnailScale:F

    invoke-direct {p0, p2, v1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getRenderRectForScale(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->renderRect:Landroid/graphics/Rect;

    .line 168
    iput-object p3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 170
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 172
    new-instance p2, Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFView;->getPageManager()Lcom/amazon/krf/platform/PageManager;

    move-result-object p1

    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getPageManagerOptions()Lcom/amazon/krf/platform/PageManagerOptions;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/amazon/krf/platform/KRIFPageManager;-><init>(Lcom/amazon/krf/platform/PageManager;Lcom/amazon/krf/platform/PageManagerOptions;)V

    iput-object p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    .line 174
    invoke-virtual {p3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 177
    iget-object p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 178
    iget-object p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/KRIFPageManager;->startIndexing(Lcom/amazon/krf/platform/Position;)V

    .line 179
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->currentKRFIndexingPosition:Lcom/amazon/krf/platform/Position;

    .line 180
    sget-boolean p1, Lcom/amazon/krf/platform/KRIFThumbnailManager;->DEBUG_INDEXING:Z

    if-eqz p1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->initDebugIndexing()V

    goto :goto_0

    :cond_0
    const/16 p1, 0xf

    .line 184
    iput p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugChunks:I

    .line 187
    :goto_0
    iget-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    new-instance p2, Lcom/amazon/krf/platform/KRIFThumbnailManager$2;

    invoke-direct {p2, p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager$2;-><init>(Lcom/amazon/krf/platform/KRIFThumbnailManager;)V

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/KRIFPageManager;->setKRFPageUpdateListener(Lcom/amazon/krf/platform/KRFPageUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/krf/platform/KRIFThumbnailManager;)Ljava/util/concurrent/FutureTask;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->task:Ljava/util/concurrent/FutureTask;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/krf/platform/KRIFThumbnailManager;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->task:Ljava/util/concurrent/FutureTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/krf/platform/KRIFThumbnailManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->awaitingListenerUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/krf/platform/KRIFThumbnailManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->onSectionInvalidated()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/krf/platform/KRIFThumbnailManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->onDocumentInvalidated()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/krf/platform/KRIFThumbnailManager;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugChunks:I

    return p0
.end method

.method static synthetic access$408(Lcom/amazon/krf/platform/KRIFThumbnailManager;)I
    .locals 2

    .line 50
    iget v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugChunks:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugChunks:I

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/krf/platform/KRIFThumbnailManager;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugUpdateIndexTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/krf/platform/KRIFThumbnailManager;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugIndexHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addToVisiblePages(Lcom/amazon/krf/platform/KRFPageView;Lcom/amazon/krf/platform/KRIFThumbnailPage;)Z
    .locals 6

    .line 884
    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFPageView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 885
    sget-object p1, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    const-string p2, "Position Range of KRFPageView is null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->pageComparator:Ljava/util/Comparator;

    invoke-static {v0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    const-string v2, ", "

    if-ltz v0, :cond_2

    .line 893
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 894
    sget-object v3, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List of views contains page with same start position, but not same view instance! new view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in list: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_1
    invoke-interface {p2}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    .line 897
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Getting page view already in our list! Could be dangerous if a page is bound to multiple views at once. ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1

    .line 901
    :cond_2
    invoke-interface {p2}, Lcom/amazon/krf/platform/KRIFThumbnailPage;->getOffsetFromBasePage()I

    move-result v1

    .line 902
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->offsetPageMap:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 903
    sget-object v3, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    const-string v4, "Getting a new view, but we already have a view for this offset!"

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_3
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->offsetPageMap:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    .line 908
    invoke-interface {p2}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p2

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Adding page ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") to visible pages at index "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 911
    iget-object p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 912
    iget-object p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->recentPages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    iget-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->offsetPageMap:Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->size()I

    move-result p2

    if-eq p1, p2, :cond_4

    .line 914
    sget-object p1, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    const-string p2, "Tried to add view, offsetPageMap and visiblePage list are now different sizes!"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method private clearIndexedPages()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexedPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 582
    check-cast v1, Lcom/amazon/krf/platform/KRIFThumbnailPage;

    invoke-interface {v1}, Lcom/amazon/krf/platform/KRIFThumbnailPage;->dispose()V

    goto :goto_0

    .line 584
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexedPages:Ljava/util/List;

    const/4 v0, 0x0

    .line 585
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->hasAllIndexedPages:Z

    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedBasePage:Lcom/amazon/krf/platform/PageModel;

    .line 587
    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedBasePos:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 588
    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedIndexedRange:Landroid/util/Pair;

    return-void
.end method

.method private getAdjustedDebugIndexRange(Landroid/util/Pair;Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndexedChunkOfPagesAroundPosition with debug indexing: real indexed chunk around "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Adjusting for debug chunks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1020
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugChunks:I

    mul-int/lit8 v2, v1, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xf

    if-le v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0xf

    const/4 v0, 0x0

    goto :goto_0

    .line 1024
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug indexing hit start of real book, setting before pages to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1025
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x1

    .line 1029
    :goto_0
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v6, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugChunks:I

    mul-int/lit8 v7, v6, 0xf

    if-le v2, v7, :cond_1

    mul-int/lit8 v6, v6, 0xf

    goto :goto_1

    .line 1033
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug indexing hit end of real book, setting after pages to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1034
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v3, v0, 0x1

    .line 1038
    :goto_1
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndexedChunkOfPagesAroundPosition with debug indexing: indexed chunk around "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is now "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "pages. Current chunks "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugChunks:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is done = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1042
    iput v5, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugChunks:I

    :cond_2
    return-object p1
.end method

.method private getContiguousSubsection()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;"
        }
    .end annotation

    .line 980
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->offsetPageMap:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 981
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 983
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isContiguous(Ljava/util/TreeMap;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->recentPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 984
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->recentPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 985
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 986
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->recentPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 987
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getIndexContainingPositionFromCache(Ljava/util/List;Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")I"
        }
    .end annotation

    .line 809
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 816
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 817
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 818
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 819
    invoke-interface {v2}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_0

    .line 825
    :cond_1
    invoke-static {p1, p2}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getIndexContainingPosition(Ljava/util/List;Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1

    .line 820
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetPage called for position outside our complete list of pages! ("

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getPageManagerOptions()Lcom/amazon/krf/platform/PageManagerOptions;
    .locals 4

    .line 237
    new-instance v0, Lcom/amazon/krf/platform/PageManagerOptions;

    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->renderRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->windowRect:Landroid/graphics/Rect;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/krf/platform/PageManagerOptions;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-object v0
.end method

.method private getRenderRectForScale(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 1050
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 1051
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 1052
    new-instance p2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private initDebugIndexing()V
    .locals 4

    .line 999
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugIndexHandler:Landroid/os/Handler;

    .line 1000
    new-instance v0, Lcom/amazon/krf/platform/KRIFThumbnailManager$3;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager$3;-><init>(Lcom/amazon/krf/platform/KRIFThumbnailManager;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugUpdateIndexTask:Ljava/lang/Runnable;

    .line 1012
    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugIndexHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isContiguous(Ljava/util/TreeMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;)Z"
        }
    .end annotation

    .line 960
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 966
    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 967
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private onDocumentInvalidated()V
    .locals 8

    .line 740
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "KRIFThumbnailManager.onDocumentInvalidated()#ReleaseThumbnails"

    const/4 v1, 0x1

    .line 750
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 751
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->releaseAllThumbnails()V

    const/4 v2, 0x0

    .line 752
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string v0, "KRIFThumbnailManager.onDocumentInvalidated()#ClearIndexedPages"

    .line 754
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 755
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->clearIndexedPages()V

    .line 756
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 759
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexingHint:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_1

    .line 760
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v3, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    goto :goto_0

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 765
    :goto_0
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->currentKRFIndexingPosition:Lcom/amazon/krf/platform/Position;

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 768
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 769
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {v3, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->startIndexing(Lcom/amazon/krf/platform/Position;)V

    .line 770
    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->currentKRFIndexingPosition:Lcom/amazon/krf/platform/Position;

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 773
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {v0, v3}, Lcom/amazon/krf/platform/KRIFPageManager;->startIndexing(Lcom/amazon/krf/platform/Position;)V

    .line 774
    iput-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->currentKRFIndexingPosition:Lcom/amazon/krf/platform/Position;

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 775
    invoke-interface {v3}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    .line 777
    :cond_4
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {v3, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->startIndexing(Lcom/amazon/krf/platform/Position;)V

    .line 778
    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->currentKRFIndexingPosition:Lcom/amazon/krf/platform/Position;

    :cond_5
    :goto_1
    const-string v0, "KRIFThumbnailManager.onDocumentUpdated()#updateListeners"

    .line 781
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 783
    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;

    .line 784
    invoke-interface {v3}, Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;->onThumbnailsUpdated()V

    goto :goto_2

    .line 786
    :cond_6
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private onSectionInvalidated()V
    .locals 4

    const-string v0, "KRIFThumbnailManager.onSectionInvalidated()#ReleaseThumbnails"

    const/4 v1, 0x1

    .line 722
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 723
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->releaseAllThumbnails()V

    const/4 v2, 0x0

    .line 724
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string v0, "KRIFThumbnailManager.onSectionInvalidated()#ClearIndexedPages"

    .line 726
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 727
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->clearIndexedPages()V

    .line 728
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string v0, "KRIFThumbnailManager.onSectionInvalidated()#updateListeners"

    .line 730
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 732
    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;

    .line 733
    invoke-interface {v3}, Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;->onThumbnailsUpdated()V

    goto :goto_0

    .line 735
    :cond_0
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private releaseManagedPages()V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/KRFPageView;

    .line 515
    invoke-virtual {v1}, Lcom/amazon/krf/platform/KRFPageView;->dispose()V

    goto :goto_0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->offsetPageMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/KRFPageView;

    .line 519
    invoke-virtual {v1}, Lcom/amazon/krf/platform/KRFPageView;->dispose()V

    goto :goto_1

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->recentPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/KRFPageView;

    .line 523
    invoke-virtual {v1}, Lcom/amazon/krf/platform/KRFPageView;->dispose()V

    goto :goto_2

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 527
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->offsetPageMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 528
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->recentPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private releaseUnmanagedPages()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->unmanagedPages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/KRFPageView;

    .line 540
    invoke-virtual {v1}, Lcom/amazon/krf/platform/KRFPageView;->dispose()V

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->unmanagedPages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private removeFromVisiblePages(Landroid/view/View;)Z
    .locals 4

    .line 923
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 924
    sget-object p1, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    const-string v0, "Attempting to remove a View placeholder which is not a valid KRFPageView. Returning from method."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 926
    :cond_0
    instance-of v0, p1, Lcom/amazon/krf/platform/KRFPageView;

    if-nez v0, :cond_1

    .line 927
    sget-object v0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We\'re trying to remove a visible page in the KRIFThumbnailManager that isn\'t a KRFPageView. Something\'s really borked. View was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 931
    const-class v1, Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const-string v1, "UnexpectedViewType"

    .line 932
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 933
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 934
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "View"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 935
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return v2

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 941
    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->recentPages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 942
    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->offsetPageMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 943
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 944
    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->offsetPageMap:Ljava/util/TreeMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    :cond_3
    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->offsetPageMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 950
    sget-object v1, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    const-string v2, "Tried to remove view, offsetPageMap and visiblePage list are now different sizes!"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_5

    .line 954
    sget-object v1, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to remove view not present in our list! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v0
.end method

.method private renderPageView(Lcom/amazon/krf/platform/KRFPageView;Landroid/graphics/Rect;Z)Lcom/amazon/krf/platform/KRFPageView;
    .locals 1

    if-eqz p3, :cond_0

    .line 669
    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/KRFPageView;->renderAsyncAtSize(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 671
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/KRFPageView;->renderAndBlock(Landroid/graphics/Rect;)Z

    .line 674
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    .line 675
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 677
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 679
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 680
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 682
    :cond_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 683
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 685
    :goto_1
    iget-object p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->unmanagedPages:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private updateLayoutParams(Lcom/amazon/krf/platform/KRFPageView;)V
    .locals 3

    .line 830
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 831
    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->renderRect:Landroid/graphics/Rect;

    .line 833
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 834
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v0, :cond_0

    .line 842
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 843
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 845
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 846
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void
.end method

.method private updateVisiblePages()V
    .locals 6

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnDisplayedPagesChanged: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 853
    :goto_0
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 854
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/krf/platform/KRFPageView;

    .line 855
    invoke-virtual {v3}, Lcom/amazon/krf/platform/KRFPageView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v3

    const-string v4, ", ( "

    .line 856
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {v3}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 858
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {v3}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    .line 860
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "]"

    .line 862
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    iget-object v2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->visiblePages:Ljava/util/ArrayList;

    .line 865
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->offsetPageMap:Ljava/util/TreeMap;

    invoke-direct {p0, v3}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isContiguous(Ljava/util/TreeMap;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, " Not contiguous! Finding contiguous subsection"

    .line 867
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 869
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getContiguousSubsection()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    .line 871
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 875
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "KrifThumbnailManager onDisplayedPagesChanged"

    const/4 v3, 0x1

    .line 876
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 877
    iget-object v3, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {v3, v2}, Lcom/amazon/krf/platform/KRIFPageManager;->onDisplayedPagesChanged(Ljava/util/ArrayList;)V

    .line 878
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addThumbnailUpdateListener(Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;)V
    .locals 1

    .line 477
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 560
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->releaseAllThumbnails()V

    .line 565
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 566
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->clearIndexedPages()V

    .line 567
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRIFPageManager;->setKRFPageUpdateListener(Lcom/amazon/krf/platform/KRFPageUpdateListener;)V

    .line 568
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRIFPageManager;->dispose()V

    .line 569
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;

    .line 570
    invoke-interface {v1}, Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;->onThumbnailManagerDestroyed()V

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 573
    sget-boolean v0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->DEBUG_INDEXING:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugUpdateIndexTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugIndexHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 574
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    return-void
.end method

.method public disposeUnmanagedView(Landroid/view/View;)V
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 551
    :cond_0
    instance-of v0, p1, Lcom/amazon/krf/platform/KRFPageView;

    if-eqz v0, :cond_1

    .line 552
    check-cast p1, Lcom/amazon/krf/platform/KRFPageView;

    .line 553
    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFPageView;->dispose()V

    .line 554
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->unmanagedPages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getHintPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexingHint:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getIndexedChunkOfPagesAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;"
        }
    .end annotation

    .line 328
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexedPages:Ljava/util/List;

    return-object p1

    :cond_0
    const-string v0, "KrifThumbnailManager getIndexedChunkOfPagesAroundPosition"

    const/4 v1, 0x1

    .line 332
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 333
    iget-boolean v2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->hasAllIndexedPages:Z

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 337
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isPageIndexingComplete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    iput-boolean v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->hasAllIndexedPages:Z

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object v2

    .line 342
    iget-object v4, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->currentKRFIndexingPosition:Lcom/amazon/krf/platform/Position;

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 344
    invoke-interface {v4}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v4

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    .line 345
    :cond_2
    iget-object v4, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {v4, v2}, Lcom/amazon/krf/platform/KRIFPageManager;->startIndexing(Lcom/amazon/krf/platform/Position;)V

    .line 346
    iput-object v2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->currentKRFIndexingPosition:Lcom/amazon/krf/platform/Position;

    .line 351
    :cond_3
    iget-object v4, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedBasePos:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v4, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    const-string v4, "KrifThumbnailManager get base page model"

    .line 358
    invoke-static {v4, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 359
    iget-object v6, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {v6, v2}, Lcom/amazon/krf/platform/KRIFPageManager;->getPageModel(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/PageModel;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedBasePage:Lcom/amazon/krf/platform/PageModel;

    .line 360
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedBasePos:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 361
    iput-object v5, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedIndexedRange:Landroid/util/Pair;

    .line 362
    invoke-static {v4, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 366
    :cond_5
    iget-object v2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedBasePage:Lcom/amazon/krf/platform/PageModel;

    if-eqz v2, :cond_6

    const-string v4, "KrifThumbnailManager get size of indexed chunk"

    .line 374
    invoke-static {v4, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 376
    iget-object v5, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {v5, v2}, Lcom/amazon/krf/platform/KRIFPageManager;->getIndexedOffsetPairAdjacentToPageModel(Lcom/amazon/krf/platform/PageModel;)Landroid/util/Pair;

    move-result-object v5

    .line 377
    invoke-static {v4, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    goto :goto_0

    .line 379
    :cond_6
    sget-object v4, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to get indexed chunk of pages, but krf returned null base page! Position was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v5, :cond_d

    .line 383
    sget-boolean v4, Lcom/amazon/krf/platform/KRIFThumbnailManager;->DEBUG_INDEXING:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugChunks:I

    const/16 v6, 0xf

    if-ge v4, v6, :cond_7

    .line 385
    invoke-direct {p0, v5, p1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getAdjustedDebugIndexRange(Landroid/util/Pair;Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/util/Pair;

    move-result-object v5

    :cond_7
    const-string p1, "KrifThumbnailManager page models for pages around base"

    .line 388
    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 389
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    iget-object v6, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedIndexedRange:Landroid/util/Pair;

    if-nez v6, :cond_8

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_1

    .line 400
    :cond_8
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit8 v6, v6, -0x1

    .line 401
    iget-object v7, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedIndexedRange:Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 405
    :goto_1
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    :goto_2
    if-ge v8, v6, :cond_9

    .line 406
    new-instance v9, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;

    iget-object v10, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-direct {v9, v10, v2, v8}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageModel;I)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 410
    :cond_9
    iget-object v6, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedIndexedRange:Landroid/util/Pair;

    if-nez v6, :cond_a

    .line 411
    new-instance v6, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;

    invoke-direct {v6, v2}, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;-><init>(Lcom/amazon/krf/platform/PageModel;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 413
    :cond_a
    iget-object v6, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexedPages:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    add-int/2addr v7, v1

    .line 417
    :goto_4
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v7, v6, :cond_b

    .line 418
    new-instance v6, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;

    iget-object v8, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-direct {v6, v8, v2, v7}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageModel;I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 420
    :cond_b
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 421
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fetched pages from KRF! Base page: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/krf/platform/PageModel;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v7

    iget-object v7, v7, Lcom/amazon/krf/platform/PositionRange;->start:Lcom/amazon/krf/platform/Position;

    invoke-interface {v7}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v2}, Lcom/amazon/krf/platform/PageModel;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/krf/platform/PositionRange;->end:Lcom/amazon/krf/platform/Position;

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " first page: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-interface {v2}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-interface {v2}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " offset "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/krf/platform/KRIFThumbnailPage;

    invoke-interface {v8}, Lcom/amazon/krf/platform/KRIFThumbnailPage;->getOffsetFromBasePage()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " last page: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-interface {v8}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-interface {v7}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/KRIFThumbnailPage;

    invoke-interface {v1}, Lcom/amazon/krf/platform/KRIFThumbnailPage;->getOffsetFromBasePage()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    :cond_c
    iput-object v5, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->cachedIndexedRange:Landroid/util/Pair;

    .line 431
    invoke-static {p1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 432
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexedPages:Ljava/util/List;

    goto :goto_5

    .line 434
    :cond_d
    sget-object p1, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to get indexed chunk of pages, but krf returned null Pair! Page was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_e
    :goto_5
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 438
    iget-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexedPages:Ljava/util/List;

    return-object p1
.end method

.method getPage(I)Lcom/amazon/kindle/nln/IThumbnailPage;
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isPageIndexingComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    .line 317
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexedPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexedPages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/nln/IThumbnailPage;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getPage(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/nln/IThumbnailPage;
    .locals 1

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, p1, v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getPage(Lcom/amazon/kindle/krx/reader/IPosition;Z)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    return-object p1
.end method

.method public getPage(Lcom/amazon/kindle/krx/reader/IPosition;Z)Lcom/amazon/kindle/nln/IThumbnailPage;
    .locals 6

    .line 264
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexedPages:Ljava/util/List;

    .line 271
    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getIndexContainingPositionFromCache(Ljava/util/List;Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 273
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/nln/IThumbnailPage;

    :cond_1
    if-eqz v1, :cond_2

    return-object v1

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 287
    iget-object p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/KRIFPageManager;->startIndexing(Lcom/amazon/krf/platform/Position;)V

    .line 288
    iget-object p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->getPageModel(Lcom/amazon/krf/platform/Position;Z)Lcom/amazon/krf/platform/PageModel;

    move-result-object p2

    .line 290
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->currentKRFIndexingPosition:Lcom/amazon/krf/platform/Position;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 292
    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    .line 293
    iget-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->startIndexing(Lcom/amazon/krf/platform/Position;)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object p2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->getPageModel(Lcom/amazon/krf/platform/Position;Z)Lcom/amazon/krf/platform/PageModel;

    move-result-object p2

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 300
    new-instance v1, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;

    invoke-direct {v1, p2}, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;-><init>(Lcom/amazon/krf/platform/PageModel;)V

    :cond_5
    return-object v1
.end method

.method public getThumbnailScale()F
    .locals 1

    .line 625
    iget v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->thumbnailScale:F

    return v0
.end method

.method public getUnmanagedViewForPage(Lcom/amazon/kindle/nln/IThumbnailPage;Landroid/graphics/Rect;Z)Landroid/view/View;
    .locals 3

    .line 631
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 635
    :cond_0
    instance-of v0, p1, Lcom/amazon/krf/platform/KRIFThumbnailPage;

    if-eqz v0, :cond_2

    .line 636
    check-cast p1, Lcom/amazon/krf/platform/KRIFThumbnailPage;

    .line 637
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRIFThumbnailPage;->getKRFPageModel()Lcom/amazon/krf/platform/PageModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 638
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/amazon/krf/platform/KRIFPageManager;->getPageView(Lcom/amazon/krf/platform/PageModel;Z)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 640
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->renderPageView(Lcom/amazon/krf/platform/KRFPageView;Landroid/graphics/Rect;Z)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getUnmanagedViewForPosition(Lcom/amazon/kindle/krx/reader/IPosition;Landroid/graphics/Rect;)Landroid/view/View;
    .locals 2

    .line 649
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 653
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRIFPageManager;->getPageViewContainingPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 655
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->renderPageView(Lcom/amazon/krf/platform/KRFPageView;Landroid/graphics/Rect;Z)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getViewForPage(Lcom/amazon/kindle/nln/IThumbnailPage;)Landroid/view/View;
    .locals 5

    .line 444
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 448
    :cond_0
    instance-of v0, p1, Lcom/amazon/krf/platform/KRIFThumbnailPage;

    if-eqz v0, :cond_3

    .line 449
    check-cast p1, Lcom/amazon/krf/platform/KRIFThumbnailPage;

    .line 450
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRIFThumbnailPage;->getKRFPageModel()Lcom/amazon/krf/platform/PageModel;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "KrifThumbnailManager getPageView"

    .line 452
    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 454
    :try_start_0
    iget-object v4, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->awaitingListenerUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    .line 455
    invoke-virtual {v4, v0, v2}, Lcom/amazon/krf/platform/KRIFPageManager;->getPageView(Lcom/amazon/krf/platform/PageModel;Z)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 459
    :catch_0
    sget-object v0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->TAG:Ljava/lang/String;

    const-string v4, "Attempted to get a page view, but KRF finds the page model invalid"

    invoke-static {v0, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_1
    :goto_0
    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    if-eqz v1, :cond_3

    .line 463
    invoke-direct {p0, v1, p1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->addToVisiblePages(Lcom/amazon/krf/platform/KRFPageView;Lcom/amazon/krf/platform/KRIFThumbnailPage;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 464
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->updateVisiblePages()V

    .line 466
    :cond_2
    invoke-direct {p0, v1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->updateLayoutParams(Lcom/amazon/krf/platform/KRFPageView;)V

    :cond_3
    return-object v1
.end method

.method public isDisposed()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    return v0
.end method

.method public isHintPageEqualsFocusPage(Lcom/amazon/kindle/nln/IThumbnailPage;)Z
    .locals 4

    .line 1069
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->hintPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    if-nez v0, :cond_1

    return v1

    .line 1077
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    .line 1078
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    .line 1080
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1081
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isPageIndexingComplete()Z
    .locals 3

    .line 242
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 247
    :cond_0
    sget-boolean v0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->DEBUG_INDEXING:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->debugChunks:I

    const/16 v2, 0xf

    if-ge v0, v2, :cond_1

    return v1

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRIFPageManager;->isPageIndexingComplete()Z

    move-result v0

    return v0
.end method

.method public onColorModeChangeEvent(Lcom/amazon/kindle/event/ColorModeChangeEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 805
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->onDocumentInvalidated()V

    return-void
.end method

.method public onNlnModeChange(Lcom/amazon/kindle/nln/NlnModeChangeEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 791
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getType()Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;->START:Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 792
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->releaseManagedPages()V

    :cond_0
    return-void
.end method

.method public pageHasAnnotation(Lcom/amazon/kindle/nln/IThumbnailPage;I)Z
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    .line 599
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    .line 600
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {v0, p2, v1, p1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;

    move-result-object p1

    .line 601
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public releaseAllThumbnails()V
    .locals 1

    .line 503
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->releaseManagedPages()V

    .line 507
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->releaseUnmanagedPages()V

    return-void
.end method

.method public removeThumbnailUpdateListener(Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;)V
    .locals 1

    .line 485
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFocusPositionHint(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->indexingHint:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method public setThumbnailScale(F)V
    .locals 1

    .line 606
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_2

    .line 614
    iget v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->thumbnailScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 615
    iput p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->thumbnailScale:F

    .line 616
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->windowRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getRenderRectForScale(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->renderRect:Landroid/graphics/Rect;

    .line 618
    iget-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getPageManagerOptions()Lcom/amazon/krf/platform/PageManagerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->reloadPagesWithOptions(Lcom/amazon/krf/platform/PageManagerOptions;)V

    :cond_1
    return-void

    .line 611
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t have a non-positive scale!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public thumbnailViewNoLongerNeeded(Landroid/view/View;)V
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 496
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->removeFromVisiblePages(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 497
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->updateVisiblePages()V

    :cond_1
    return-void
.end method

.method public updateHintPage(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 1086
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 1090
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getPage(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1092
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->hintPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    :cond_1
    return-void
.end method

.method public updateSettings(Lcom/amazon/krf/platform/ViewSettings;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "KRIFThumbnailManager.updateSettings()"

    .line 701
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 703
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->getHeight()I

    move-result p1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->windowRect:Landroid/graphics/Rect;

    .line 704
    iget p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->thumbnailScale:F

    invoke-direct {p0, p1, v2}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getRenderRectForScale(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->renderRect:Landroid/graphics/Rect;

    const-string p1, "KRIFThumbnailManager.updateSettings()#reloadPagesWithOptions"

    .line 707
    invoke-static {p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 708
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager;->krifPageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getPageManagerOptions()Lcom/amazon/krf/platform/PageManagerOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/krf/platform/KRIFPageManager;->reloadPagesWithOptions(Lcom/amazon/krf/platform/PageManagerOptions;)V

    .line 709
    invoke-static {p1, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 711
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->onDocumentInvalidated()V

    .line 713
    invoke-static {v1, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
