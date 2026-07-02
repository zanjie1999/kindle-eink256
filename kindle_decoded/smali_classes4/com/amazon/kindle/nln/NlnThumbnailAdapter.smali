.class public Lcom/amazon/kindle/nln/NlnThumbnailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NlnThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailPlaceholderVisibilityEvent;,
        Lcom/amazon/kindle/nln/NlnThumbnailAdapter$TocItemData;,
        Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;,
        Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;,
        Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final METRIC_BIND_VIEW_HOLDER_AFTER_DISPOSAL:Ljava/lang/String; = "BindViewHolderAfterDisposal"

.field private static final METRIC_PAGE_INDEXING_INCOMPLETE:Ljava/lang/String; = "PageIndexingIncomplete"

.field private static final METRIC_PAGE_INDEX_UNAVAILABLE:Ljava/lang/String; = "PageIndexUnavailable"

.field private static final NO_HEADER_PLACEHOLDER_COUNT:I = 0x3

.field private static final PLACEHOLDER_TYPE:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field private static final WITH_HEADER_PLACEHOLDER_COUNT:I = 0x9


# instance fields
.field private adapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field private baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private basePageAdapterPosition:I

.field private boundViewHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private fetchMorePagesTask:Ljava/lang/Runnable;

.field private lastPageHeight:I

.field private lastPageWidth:I

.field private mainThreadHandle:Landroid/os/Handler;

.field private markedPositionManager:Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

.field private final markerLocation:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field private mrprAdapterPosition:I

.field private mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private pageBackgroundColor:I

.field private pageBackgroundId:I

.field private pageBackgroundSelectedId:I

.field private pageBackgroundWaypointId:I

.field private pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

.field private pageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;"
        }
    .end annotation
.end field

.field private pageLoadingEnabled:Z

.field private pageThumbnailClickedListener:Landroid/view/View$OnClickListener;

.field private parentSize:I

.field private recyclerViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private shouldPadEnds:Z

.field private volatile shouldRecenterOnPageInsert:Z

.field private volatile showPlaceholders:Z

.field private showTOCHeaders:Z

.field private shutdown:Z

.field private thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

.field private thumbnailManagerPollingDelay:Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;

.field private tocAdded:Z

.field private tocHelper:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;

.field private waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

.field private waypointKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/nln/IThumbnailManager;Lcom/amazon/android/docviewer/KindleDocViewer;ZLcom/amazon/android/docviewer/IPageLabelProvider;Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;Landroid/view/View$OnClickListener;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 5

    .line 334
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 257
    iput v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->basePageAdapterPosition:I

    const/4 v1, 0x0

    .line 277
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shouldPadEnds:Z

    const/4 v2, 0x1

    .line 279
    iput-boolean v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showPlaceholders:Z

    .line 280
    iput-boolean v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageLoadingEnabled:Z

    .line 281
    iput v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageHeight:I

    .line 282
    iput v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageWidth:I

    .line 283
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->boundViewHolders:Ljava/util/Set;

    .line 285
    iput-boolean v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shouldRecenterOnPageInsert:Z

    .line 286
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->recyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 287
    new-instance v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$1;-><init>(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 301
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocAdded:Z

    .line 312
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shutdown:Z

    .line 320
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v4, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-interface {v0, v4}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 335
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    const-string v0, "NlnThumbnailAdapter create"

    .line 336
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 337
    iput-object p2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    .line 338
    iput-object p3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 339
    iput-object p7, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageThumbnailClickedListener:Landroid/view/View$OnClickListener;

    .line 340
    iput-object p5, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    .line 341
    iput-object p6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->markedPositionManager:Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    .line 342
    iput-object p9, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->markerLocation:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    .line 343
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->context:Landroid/content/Context;

    .line 344
    iput-object p10, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 346
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->initPageBackgrounds(Landroid/content/Context;)V

    .line 348
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 349
    new-instance v3, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getFirstNonMRPRWaypoint()I

    move-result p1

    invoke-direct {v3, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    :cond_0
    iput-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 350
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 351
    iput-object p8, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 352
    new-instance p3, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    iget-object p5, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p3, p1, p5}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    iput-object p3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    .line 355
    iput-boolean p4, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showTOCHeaders:Z

    .line 356
    new-instance p1, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;

    iget-object p3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p1, p3}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocHelper:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;

    .line 357
    new-instance p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;

    invoke-direct {p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManagerPollingDelay:Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;

    if-eqz p2, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->updateAdapterItems()V

    .line 362
    :cond_1
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showPlaceholders:Z

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shouldRecenterOnPageInsert:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shutdown:Z

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)Lcom/amazon/kindle/nln/IThumbnailManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->insertAdditionalPages()V

    return-void
.end method

.method private clearAdapterItems()V
    .locals 2

    .line 1097
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1099
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 1100
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method private enqueueFetchPagesTask(I)V
    .locals 4

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueing task to get more pages in (polling delay) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    new-instance v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$2;-><init>(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->fetchMorePagesTask:Ljava/lang/Runnable;

    .line 627
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->fetchMorePagesTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getAdapterPositionForPageIndex(I)I
    .locals 5

    .line 1168
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showTOCHeaders:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, p1

    .line 1174
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1175
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;

    .line 1176
    iget v3, v2, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget v2, v2, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return p1
.end method

.method private getBackgroundResource(ZZ)I
    .locals 1

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    .line 1053
    iget p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageBackgroundId:I

    return p1

    .line 1059
    :cond_1
    iget p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageBackgroundWaypointId:I

    return p1

    .line 1057
    :cond_2
    iget p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageBackgroundSelectedId:I

    return p1
.end method

.method private getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .line 1360
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mainThreadHandle:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1361
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mainThreadHandle:Landroid/os/Handler;

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mainThreadHandle:Landroid/os/Handler;

    return-object v0
.end method

.method private getPaddingForView(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    .line 1064
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1065
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1064
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1066
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1067
    iget p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->parentSize:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getPageIndexForAdapterPosition(I)I
    .locals 4

    .line 1129
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;

    .line 1130
    iget v1, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1131
    sget-object v1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected item type for adapter position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Expected PAGE_TYPE(1) but was "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_0
    iget p1, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    return p1
.end method

.method private getPageIndexForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 1200
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->isKRFPositionWithinIndexedChunk(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1204
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getIndexContainingPosition(Ljava/util/List;Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private getTocIndexForAdapterPosition(I)I
    .locals 4

    .line 1120
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;

    .line 1121
    iget v1, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    if-eqz v1, :cond_0

    .line 1122
    sget-object v1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected item type for adapter position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Expected HEADER_TYPE(0) but was "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_0
    iget p1, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    return p1
.end method

.method private initPageBackgrounds(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1106
    sget v1, Lcom/amazon/kindle/krl/R$attr;->pfvPage:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/amazon/kindle/krl/R$attr;->pfvPageSelected:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/amazon/kindle/krl/R$attr;->pfvPageWaypoint:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lcom/amazon/kindle/krl/R$attr;->pageBackgroundColor:I

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 1107
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1108
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageBackgroundId:I

    .line 1109
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageBackgroundSelectedId:I

    .line 1110
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageBackgroundWaypointId:I

    .line 1113
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 1114
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageBackgroundColor:I

    .line 1115
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private insertAdditionalPageWithToc(Ljava/util/List;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "NlnThumbnailAdapter insert and sort new pages"

    const/4 v1, 0x1

    .line 759
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "Trying to insert new page into adapter items, but it already exists!"

    if-ge v3, p2, :cond_1

    .line 761
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 762
    new-instance v7, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;

    invoke-direct {v7, v6, v3}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;-><init>(Lcom/amazon/kindle/nln/IThumbnailPage;I)V

    .line 763
    iget-object v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 765
    sget-object v6, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v4, v6, -0x1

    .line 770
    iget-object v5, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 771
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v1

    .line 776
    :goto_2
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_3

    .line 777
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;

    .line 778
    iget v3, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    if-ne v3, v1, :cond_2

    .line 779
    iget v3, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    add-int/2addr v3, p2

    iput v3, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr p3, v1

    .line 784
    :goto_3
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_5

    .line 785
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 786
    new-instance p2, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;

    invoke-direct {p2, p1, p3}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;-><init>(Lcom/amazon/kindle/nln/IThumbnailPage;I)V

    .line 787
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 789
    sget-object p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, -0x1

    .line 794
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 795
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 797
    :cond_5
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private insertAdditionalPages()V
    .locals 9

    const-string v0, "NlnThumbnailAdapter inserting additional pages"

    const/4 v1, 0x1

    .line 657
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 658
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-nez v2, :cond_0

    return-void

    .line 662
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mainThreadHandle:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->fetchMorePagesTask:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 663
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 665
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    invoke-interface {v2}, Lcom/amazon/kindle/nln/IThumbnailManager;->isPageIndexingComplete()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 667
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_4

    .line 675
    :cond_2
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    iget-object v5, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v3, v5}, Lcom/amazon/kindle/nln/IThumbnailManager;->getIndexedChunkOfPagesAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;

    move-result-object v3

    .line 678
    iget-object v5, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/nln/IThumbnailPage;->PAGE_START_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v5, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v5

    .line 679
    iget-object v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/nln/IThumbnailPage;->PAGE_START_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v6, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v6

    if-ltz v5, :cond_b

    if-gez v6, :cond_3

    goto/16 :goto_3

    .line 698
    :cond_3
    iget-boolean v7, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shouldPadEnds:Z

    if-eqz v7, :cond_5

    if-lez v5, :cond_4

    .line 700
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 702
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    if-ge v6, v7, :cond_5

    .line 703
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getItemCount()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 707
    :cond_5
    iput-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    .line 709
    iget-boolean v7, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocAdded:Z

    if-eqz v7, :cond_6

    .line 710
    invoke-direct {p0, v3, v5, v6}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->insertAdditionalPageWithToc(Ljava/util/List;II)V

    goto :goto_0

    .line 712
    :cond_6
    invoke-direct {p0, v3, v5}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->insertAdditionalPagesNoToc(Ljava/util/List;I)V

    .line 715
    :goto_0
    iget-boolean v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showPlaceholders:Z

    if-eqz v3, :cond_7

    .line 716
    invoke-direct {p0, v4}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->setShowPlaceholders(Z)V

    .line 717
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 721
    :cond_7
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p0, v3, v4}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v3

    iput v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->basePageAdapterPosition:I

    .line 722
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v7, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 723
    iget v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->basePageAdapterPosition:I

    iput v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprAdapterPosition:I

    goto :goto_1

    .line 726
    :cond_8
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p0, v3, v4}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v3

    iput v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprAdapterPosition:I

    .line 729
    :goto_1
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->recyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_9

    .line 730
    iget-boolean v7, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shouldRecenterOnPageInsert:Z

    if-eqz v7, :cond_9

    .line 731
    iget v7, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->basePageAdapterPosition:I

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 732
    iput-boolean v4, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shouldRecenterOnPageInsert:Z

    .line 735
    :cond_9
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v6

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pages added to adapter! Base page adapter position: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->basePageAdapterPosition:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " added "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pages before and "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pages after"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 745
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManagerPollingDelay:Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;

    invoke-virtual {v1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;->backoff()V

    .line 746
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManagerPollingDelay:Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;

    invoke-virtual {v1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;->getDelay()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->enqueueFetchPagesTask(I)V

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    .line 749
    iput-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->fetchMorePagesTask:Ljava/lang/Runnable;

    .line 752
    :goto_2
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->updatePages(Ljava/util/List;)V

    .line 753
    invoke-static {v0, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void

    .line 681
    :cond_b
    :goto_3
    sget-object v2, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Existing first and last page not in new list of pages! Refteching entire adapter.\nExisting page range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    .line 682
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-interface {v6}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    .line 683
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-interface {v7}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    .line 684
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") pages\nNew page range: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-interface {v8}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-interface {v1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") pages"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->updateAdapterItems()V

    .line 690
    invoke-static {v0, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void

    .line 668
    :cond_c
    :goto_4
    sget-object v1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Trying to insert additional pages into adapter, but page list is empty. Refteching entire adapter."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->updateAdapterItems()V

    .line 671
    invoke-static {v0, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private insertAdditionalPagesNoToc(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "NlnThumbnailAdapter insert new pages"

    const/4 v1, 0x1

    .line 801
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 803
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 804
    new-instance v4, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;

    invoke-direct {v4, v3, v2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;-><init>(Lcom/amazon/kindle/nln/IThumbnailPage;I)V

    .line 805
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 808
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    move p1, p2

    .line 811
    :goto_1
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 812
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;

    .line 813
    iget v3, v2, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    add-int/2addr v3, p2

    iput v3, v2, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 818
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, p1

    .line 819
    :goto_2
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 820
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 821
    new-instance v3, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;

    invoke-direct {v3, v2, p2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;-><init>(Lcom/amazon/kindle/nln/IThumbnailPage;I)V

    .line 822
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 824
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p1

    if-eqz p2, :cond_3

    .line 826
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 828
    :cond_3
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private insertTOCItems(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NlnThumbnailAdapter insert toc items"

    const/4 v1, 0x1

    .line 631
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 632
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 634
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/docviewer/ITOCItem;

    .line 635
    new-instance v6, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$TocItemData;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v5

    invoke-direct {v6, v5, v4}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$TocItemData;-><init>(II)V

    .line 637
    iget-object v5, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_0

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, -0x1

    .line 647
    iget-object v7, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 650
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    .line 641
    :cond_0
    sget-object v5, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to insert toc items to adapter but matching toc item already exists!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 652
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocAdded:Z

    .line 653
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private setAdapterItems()I
    .locals 8

    .line 521
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showTOCHeaders:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocHelper:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->hasToc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocHelper:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->getAllTocItems()Ljava/util/List;

    move-result-object v0

    .line 523
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 527
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 528
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    goto :goto_1

    .line 530
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->clearAdapterItems()V

    .line 533
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    const-string v5, "NlnThumbnailAdapter add page items"

    .line 536
    invoke-static {v5, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 v4, 0x0

    .line 537
    :goto_2
    iget-object v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 538
    iget-object v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 539
    new-instance v7, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;

    invoke-direct {v7, v6, v4}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;-><init>(Lcom/amazon/kindle/nln/IThumbnailPage;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 542
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 543
    iput-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    .line 544
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 547
    :cond_3
    invoke-static {v5, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    if-eqz v0, :cond_4

    .line 550
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 551
    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->insertTOCItems(Ljava/util/List;)V

    :cond_4
    return v2
.end method

.method private setEmptyPageView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 11

    .line 891
    move-object v10, p1

    check-cast v10, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 892
    new-instance v1, Landroid/view/View;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 893
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageWidth:I

    iget v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageHeight:I

    invoke-direct {p1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    iget v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageBackgroundId:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->bindData(Landroid/view/View;Lcom/amazon/kindle/nln/IThumbnailPage;ILjava/lang/String;ZZLandroid/graphics/drawable/Drawable;ZZ)V

    .line 895
    iget-object p1, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setShowPlaceholders(Z)V
    .locals 2

    .line 865
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showPlaceholders:Z

    .line 866
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailPlaceholderVisibilityEvent;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailPlaceholderVisibilityEvent;-><init>(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private updateAdapterItems()V
    .locals 8

    const-string v0, "NlnThumbnailAdapter update adapter items"

    const/4 v1, 0x1

    .line 561
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 562
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-nez v2, :cond_0

    .line 563
    sget-object v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    const-string v1, "thumbnailManager shouldn\'t be null in updateAdapterItems()!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 566
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManagerPollingDelay:Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;

    invoke-virtual {v2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;->initialize()V

    .line 569
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mainThreadHandle:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->fetchMorePagesTask:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 570
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    invoke-interface {v2}, Lcom/amazon/kindle/nln/IThumbnailManager;->isPageIndexingComplete()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 576
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    iget-object v4, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/nln/IThumbnailManager;->getIndexedChunkOfPagesAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    .line 578
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->setAdapterItems()I

    move-result v3

    .line 581
    iget-object v4, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getPageIndexForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v4

    .line 582
    invoke-direct {p0, v4}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForPageIndex(I)I

    move-result v6

    iput v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->basePageAdapterPosition:I

    .line 584
    iget-object v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v7, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 585
    iget v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->basePageAdapterPosition:I

    iput v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprAdapterPosition:I

    goto :goto_0

    .line 588
    :cond_2
    iget-object v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p0, v6, v5}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v6

    iput v6, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprAdapterPosition:I

    :goto_0
    if-eqz v2, :cond_3

    .line 593
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManagerPollingDelay:Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;

    invoke-virtual {v2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailManagerPollingDelay;->getDelay()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->enqueueFetchPagesTask(I)V

    goto :goto_1

    .line 595
    :cond_3
    invoke-direct {p0, v5}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->setShowPlaceholders(Z)V

    .line 597
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->recyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_4

    .line 599
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 603
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v6}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->updatePages(Ljava/util/List;)V

    .line 604
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shouldRecenterOnPageInsert:Z

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter updated! Base page adapter position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->basePageAdapterPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " base page index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " total number of pages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    .line 607
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " toc items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    invoke-static {v0, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private updatePlaceholderSize(F)V
    .locals 3

    .line 1310
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1315
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    .line 1316
    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 1317
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    .line 1318
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 1319
    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageHeight:I

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageWidth:I

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1320
    :goto_1
    iput v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageHeight:I

    .line 1321
    iput p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageWidth:I

    .line 1323
    iget-boolean p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showPlaceholders:Z

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 1324
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I
    .locals 0

    .line 1265
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getPageIndexForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForPageIndex(I)I

    move-result p1

    return p1
.end method

.method getAdapterPositionForStart(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 405
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 406
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->updatePositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 411
    :cond_1
    iget p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->basePageAdapterPosition:I

    return p1

    .line 415
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz v1, :cond_3

    .line 421
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->updatePositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_3
    return v0

    :cond_4
    if-eqz v1, :cond_5

    .line 430
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->updatePages(Ljava/util/List;)V

    .line 431
    iput-object p2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 432
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->updateWaypointPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 433
    iput-object p3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 434
    iget-object p2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->updateWaypointPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 436
    :cond_5
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->rebuildAdapterAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 833
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showPlaceholders:Z

    if-eqz v0, :cond_1

    .line 834
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showTOCHeaders:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1158
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showPlaceholders:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->adapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;

    iget p1, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    return p1
.end method

.method public getMRPRAdapterPosition()I
    .locals 1

    .line 1275
    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprAdapterPosition:I

    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mainThreadHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->fetchMorePagesTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1079
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1082
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    .line 1083
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->updatePages(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 1084
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocAdded:Z

    const/4 v0, -0x1

    .line 1085
    iput v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->basePageAdapterPosition:I

    .line 1086
    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 1087
    iput v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprAdapterPosition:I

    const/4 v0, 0x1

    .line 1088
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shouldRecenterOnPageInsert:Z

    .line 1089
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->clearAdapterItems()V

    .line 1090
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public isKRFPositionWithinIndexedChunk(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 5

    .line 1217
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 1223
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-interface {v2}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    .line 1224
    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 1225
    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    return v4

    .line 1238
    :cond_1
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    invoke-interface {v3, p1, v1}, Lcom/amazon/kindle/nln/IThumbnailManager;->getPage(Lcom/amazon/kindle/krx/reader/IPosition;Z)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1240
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1241
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v4

    :cond_3
    :goto_0
    return v1
.end method

.method public isPageLoadingEnabled()Z
    .locals 1

    .line 874
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageLoadingEnabled:Z

    return v0
.end method

.method public isShowingPlaceholders()Z
    .locals 1

    .line 861
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showPlaceholders:Z

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 479
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 480
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->context:Landroid/content/Context;

    .line 481
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->recyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 482
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 900
    const-class v3, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    const-string v4, "NlnThumbnailAdapter bind view holder"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 901
    iget-object v6, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->boundViewHolders:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 902
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 905
    invoke-direct {v0, v2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getTocIndexForAdapterPosition(I)I

    move-result v3

    .line 907
    move-object v6, v1

    check-cast v6, Lcom/amazon/kindle/nln/TextViewHolder;

    iget-object v8, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocHelper:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;

    invoke-virtual {v8}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->getAllTocItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/ITOCItem;

    iget-object v8, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocHelper:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;

    invoke-virtual {v6, v3, v8}, Lcom/amazon/kindle/nln/TextViewHolder;->bindData(Lcom/amazon/android/docviewer/ITOCItem;Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;)V

    goto/16 :goto_b

    :cond_0
    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    .line 910
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->setEmptyPageView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto/16 :goto_b

    :cond_1
    if-ne v6, v5, :cond_13

    .line 912
    iget-object v6, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    if-nez v6, :cond_2

    return-void

    .line 914
    :cond_2
    iget-object v6, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 915
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 916
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    const-string v2, "BindViewHolderAfterDisposal"

    .line 917
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 918
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 919
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void

    .line 923
    :cond_3
    move-object v6, v1

    check-cast v6, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 924
    invoke-direct {v0, v2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getPageIndexForAdapterPosition(I)I

    move-result v8

    .line 926
    iget-object v9, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v8, :cond_4

    .line 927
    iget-object v3, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/nln/IThumbnailPage;

    :goto_0
    move-object v10, v3

    goto/16 :goto_3

    .line 929
    :cond_4
    iget-object v9, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-eqz v9, :cond_8

    invoke-interface {v9}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result v9

    if-nez v9, :cond_8

    .line 930
    iget-object v9, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    invoke-interface {v9}, Lcom/amazon/kindle/nln/IThumbnailManager;->isPageIndexingComplete()Z

    move-result v9

    if-nez v9, :cond_5

    .line 931
    sget-object v9, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    const-string v10, "Page indexing is not yet complete."

    invoke-static {v9, v10}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v9

    .line 933
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v3

    const-string v9, "PageIndexingIncomplete"

    .line 934
    invoke-virtual {v3, v9}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v3

    sget-object v9, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 935
    invoke-virtual {v3, v9}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v3

    .line 936
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    goto :goto_2

    .line 938
    :cond_5
    iget-object v9, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->recyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_7

    .line 939
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    .line 944
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->updateAdapterItems()V

    .line 946
    :try_start_0
    invoke-direct {v0, v2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getPageIndexForAdapterPosition(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v3

    goto :goto_2

    .line 948
    :catch_0
    sget-object v9, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    const-string v10, "Page index is unavailable."

    invoke-static {v9, v10}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v9

    .line 950
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v3

    const-string v9, "PageIndexUnavailable"

    .line 951
    invoke-virtual {v3, v9}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v3

    sget-object v9, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 952
    invoke-virtual {v3, v9}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v3

    .line 953
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    .line 958
    :cond_8
    :goto_2
    iget-object v3, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v8, :cond_9

    .line 959
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->setEmptyPageView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 960
    sget-object v1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    const-string v2, "pageList does not contain the page we want! Falling back to blank page"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v3, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    const-string v4, "AmazonKindle"

    invoke-direct {v2, v4, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-virtual {v2, v7}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    const-string v3, "pageList_size_smaller_than_pageIndex"

    .line 963
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 964
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    .line 961
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void

    .line 967
    :cond_9
    iget-object v3, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/nln/IThumbnailPage;

    goto/16 :goto_0

    .line 969
    :goto_3
    invoke-interface {v10}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v3

    .line 973
    iget-boolean v9, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageLoadingEnabled:Z

    const-string v12, ")"

    const-string v13, ", "

    if-eqz v9, :cond_e

    iget-boolean v9, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showPlaceholders:Z

    if-eqz v9, :cond_a

    goto :goto_6

    .line 982
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Recycle view trying to get view index "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ". This is page index "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". Getting view for page ("

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 986
    iget-object v8, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-eqz v8, :cond_c

    invoke-interface {v8}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_4

    :cond_b
    iget-object v8, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    invoke-interface {v8, v10}, Lcom/amazon/kindle/nln/IThumbnailManager;->getViewForPage(Lcom/amazon/kindle/nln/IThumbnailPage;)Landroid/view/View;

    move-result-object v8

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_d

    .line 988
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 989
    iget v14, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v14, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageWidth:I

    .line 990
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v9, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageHeight:I

    :cond_d
    move-object v9, v8

    const/16 v17, 0x0

    goto :goto_7

    .line 978
    :cond_e
    :goto_6
    new-instance v8, Landroid/view/View;

    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 979
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    iget v14, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageWidth:I

    iget v15, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->lastPageHeight:I

    invoke-direct {v9, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v9, v8

    const/16 v17, 0x1

    :goto_7
    if-eqz v9, :cond_f

    .line 995
    iget v8, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageBackgroundColor:I

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 998
    :cond_f
    iget-object v8, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-eqz v8, :cond_13

    if-eqz v9, :cond_13

    .line 999
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Binding page at index "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ". ("

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v14

    invoke-interface {v14}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v13

    invoke-interface {v13}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v8, "NlnThumbnailAdapter get page label for page"

    .line 1002
    invoke-static {v8, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1003
    iget-object v12, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    invoke-virtual {v12, v10}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->isMrpr(Lcom/amazon/kindle/nln/IThumbnailPage;)Z

    move-result v15

    .line 1004
    iget-object v12, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    invoke-virtual {v12, v10}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->isWaypoint(Lcom/amazon/kindle/nln/IThumbnailPage;)Z

    move-result v12

    .line 1005
    invoke-direct {v0, v15, v12}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getBackgroundResource(ZZ)I

    move-result v12

    .line 1006
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v13

    invoke-interface {v13}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v13

    iget-object v14, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    iget-object v11, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1007
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v5, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 1006
    invoke-static {v13, v14, v11, v5, v7}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getPageLabelForPosition(ILcom/amazon/android/docviewer/IPageLabelProvider;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Z)Ljava/lang/String;

    move-result-object v5

    .line 1008
    invoke-static {v8, v7}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string v8, "NlnThumbnailAdapter get annotation data for page"

    const/4 v11, 0x1

    .line 1010
    invoke-static {v8, v11}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1014
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v11

    invoke-interface {v11}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v11}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_8

    :cond_10
    const/4 v13, 0x0

    goto :goto_9

    .line 1015
    :cond_11
    :goto_8
    iget-object v11, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    invoke-interface {v11, v10, v7}, Lcom/amazon/kindle/nln/IThumbnailManager;->pageHasAnnotation(Lcom/amazon/kindle/nln/IThumbnailPage;I)Z

    move-result v11

    move v13, v11

    .line 1017
    :goto_9
    iget-object v11, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    const/4 v14, 0x1

    invoke-interface {v11, v10, v14}, Lcom/amazon/kindle/nln/IThumbnailManager;->pageHasAnnotation(Lcom/amazon/kindle/nln/IThumbnailPage;I)Z

    move-result v18

    .line 1018
    invoke-static {v8, v7}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1020
    iget-object v8, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->markedPositionManager:Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    iget-object v11, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->markerLocation:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    .line 1021
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 1020
    invoke-interface {v8, v11, v14, v3}, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;->getMarkerDrawablesWithinRange(Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;Landroid/content/Context;Lcom/amazon/kindle/krx/reader/IPositionRange;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 1023
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v3

    goto :goto_a

    :cond_12
    const/16 v16, 0x0

    :goto_a
    move-object v8, v6

    move v11, v12

    move-object v12, v5

    move/from16 v14, v18

    move v3, v15

    move-object/from16 v15, v16

    move/from16 v16, v3

    .line 1025
    invoke-virtual/range {v8 .. v17}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->bindData(Landroid/view/View;Lcom/amazon/kindle/nln/IThumbnailPage;ILjava/lang/String;ZZLandroid/graphics/drawable/Drawable;ZZ)V

    .line 1027
    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageThumbnailClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1034
    :cond_13
    :goto_b
    iget-boolean v3, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shouldPadEnds:Z

    if-eqz v3, :cond_16

    iget-boolean v3, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showPlaceholders:Z

    if-nez v3, :cond_16

    .line 1035
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v2, :cond_14

    .line 1037
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v5}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getPaddingForView(Landroid/view/View;)I

    move-result v5

    goto :goto_c

    :cond_14
    const/4 v5, 0x0

    .line 1038
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getItemCount()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    if-ne v2, v6, :cond_15

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getPaddingForView(Landroid/view/View;)I

    move-result v2

    goto :goto_d

    :cond_15
    const/4 v2, 0x0

    .line 1040
    :goto_d
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1041
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1043
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    :cond_16
    invoke-static {v4, v7}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x1

    const-string v1, "NlnThumbnailAdapter create view holder"

    .line 1140
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 1142
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$layout;->bev_chapter_header:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1143
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 1144
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1145
    new-instance p1, Lcom/amazon/kindle/nln/TextViewHolder;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/nln/TextViewHolder;-><init>(Landroid/widget/TextView;)V

    return-object p1

    :cond_0
    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 1152
    :cond_1
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1

    .line 1147
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$layout;->page_container:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 1148
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1149
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1150
    new-instance p1, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p1, p2, v0}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shutdown:Z

    .line 488
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mainThreadHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->fetchMorePagesTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 489
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->recyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 494
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 496
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->boundViewHolders:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 498
    iput-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->context:Landroid/content/Context;

    .line 499
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 368
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 369
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 370
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 371
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 372
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 373
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->updateMrprPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->updateAdapterItems()V

    :cond_1
    return-void
.end method

.method public onNonLinearThumbnailScaleEvent(Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 1300
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    iget-object v1, p1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iget p1, p1, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->scale:F

    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->updatePlaceholderSize(F)V

    :cond_0
    return-void
.end method

.method public onPageLabelReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$PageLabelReadyEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 505
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    :cond_1
    :goto_0
    return-void
.end method

.method public onThumbnailManagerReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 381
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    .line 383
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->updateAdapterItems()V

    return-void
.end method

.method public onTocReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 1285
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-nez p1, :cond_0

    return-void

    .line 1289
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->showTOCHeaders:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocAdded:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1290
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocHelper:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->hasToc()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1291
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->tocHelper:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->getAllTocItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->insertTOCItems(Ljava/util/List;)V

    goto :goto_0

    .line 1293
    :cond_1
    sget-object p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Trying to insert toc items but toc still not loaded!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 842
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->boundViewHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 843
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 844
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v1

    .line 845
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->unbindData()Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 846
    iget-boolean v2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageLoadingEnabled:Z

    if-eqz v2, :cond_0

    .line 847
    invoke-interface {v1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v1

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recycling View for adapter position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 849
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-eqz p1, :cond_0

    .line 850
    invoke-interface {p1, v0}, Lcom/amazon/kindle/nln/IThumbnailManager;->thumbnailViewNoLongerNeeded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public rebuildAdapterAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 467
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->baseKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    :cond_1
    const/4 p1, 0x1

    .line 470
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->setShowPlaceholders(Z)V

    .line 471
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->updateAdapterItems()V

    .line 474
    iget p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->basePageAdapterPosition:I

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method refreshPages()V
    .locals 4

    .line 878
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->boundViewHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 879
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 880
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPageLoadingEnabled(Z)V
    .locals 0

    .line 870
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->pageLoadingEnabled:Z

    return-void
.end method

.method public setShouldPadEnds(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1279
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->shouldPadEnds:Z

    .line 1280
    iput p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->parentSize:I

    return-void
.end method

.method updatePositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 1335
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 1336
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->updateMrprPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 1337
    iput-object p2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 1338
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->waypointIndexManager:Lcom/amazon/kindle/nln/NlnWaypointIndexManager;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->updateWaypointPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 1340
    iget p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprAdapterPosition:I

    .line 1341
    iget-object p2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprKRFPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprAdapterPosition:I

    if-ltz p1, :cond_0

    .line 1347
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1349
    :cond_0
    iget p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->mrprAdapterPosition:I

    if-ltz p1, :cond_1

    .line 1350
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method
