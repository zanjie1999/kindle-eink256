.class public Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;
.super Ljava/lang/Object;
.source "BreadcrumbManager.java"

# interfaces
.implements Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;
.implements Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;,
        Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;
    }
.end annotation


# static fields
.field static final BREADCRUMB_COUNT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adapterDataObserver:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;

.field private animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

.field private breadcrumbClickListener:Landroid/view/View$OnClickListener;

.field private breadcrumbEnabled:Z

.field private breadcrumbInfo:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

.field private breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

.field private final breadcrumbsAwaitingPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private isTransitioning:Z

.field private jumpDestinationBreadcrumb:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

.field private final jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

.field private lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

.field private listener:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;

.field private final mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field private pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final resourceProvider:Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;

.field private thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

.field private transientBreadcrumbPage:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

.field private transientBreadcrumbPage2:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

.field private waypointPageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->TAG:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;->values()[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->BREADCRUMB_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 4

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->BREADCRUMB_COUNT:I

    new-array v1, v0, [Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    iput-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    .line 72
    new-array v0, v0, [Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbInfo:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->waypointPageViews:Ljava/util/Map;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->isTransitioning:Z

    .line 82
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbEnabled:Z

    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 97
    iput-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpDestinationBreadcrumb:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 112
    new-instance v2, Ljava/util/HashSet;

    invoke-static {}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;->values()[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbsAwaitingPages:Ljava/util/Set;

    .line 113
    new-instance v2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)V

    iput-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->adapterDataObserver:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;

    .line 765
    new-instance v2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$2;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$2;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)V

    iput-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbClickListener:Landroid/view/View$OnClickListener;

    .line 130
    iput-object p5, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->resourceProvider:Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;

    .line 131
    iput-object p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->listener:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;

    .line 132
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->context:Landroid/content/Context;

    .line 133
    iput-object p3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 134
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    .line 135
    iput-object p6, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    .line 136
    iget-object p3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object p3

    .line 137
    iput-object p3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    .line 138
    iput-object p7, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 140
    iput-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    iget-object p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 143
    new-instance p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-direct {p2, p1, p0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;-><init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;)V

    iput-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    .line 146
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    sget p4, Lcom/amazon/kindle/krl/R$id;->breadcrumb_1:I

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aput-object p4, p2, v0

    .line 147
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    sget p4, Lcom/amazon/kindle/krl/R$id;->breadcrumb_2:I

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    const/4 p6, 0x1

    aput-object p4, p2, p6

    const/4 p2, 0x0

    .line 148
    :goto_0
    sget p4, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->BREADCRUMB_COUNT:I

    if-ge p2, p4, :cond_0

    .line 149
    iget-object p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object p4, p4, p2

    iget-object p6, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p4, p6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object p4, p4, p2

    iget-object p6, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4, p6}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->setScrollCatcher(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 151
    iget-object p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object p4, p4, p2

    iget-object p6, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->context:Landroid/content/Context;

    invoke-static {p6}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->newBlankBreadCrumbView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->setThumbnail(Landroid/view/View;)V

    .line 152
    iget-object p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object p4, p4, p2

    invoke-virtual {p4, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->setIsMrpr(Z)V

    .line 153
    iget-object p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object p4, p4, p2

    iget-object p6, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p6}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p6

    invoke-interface {p6}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result p6

    invoke-direct {p0, p6}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->getBreadcrumbLabel(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->setLabel(Ljava/lang/String;)V

    .line 154
    iget-object p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object p4, p4, p2

    invoke-static {}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;->values()[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    move-result-object p6

    aget-object p6, p6, p2

    invoke-interface {p5, p6}, Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;->getBreadcrumbBackgroundRes(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;)I

    move-result p6

    invoke-virtual {p4, p6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 156
    iget-object p4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->requestLayout()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    sget p2, Lcom/amazon/kindle/krl/R$id;->transient_breadcrumb_page:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    iput-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->transientBreadcrumbPage:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    .line 160
    sget p2, Lcom/amazon/kindle/krl/R$id;->transient_breadcrumb_page2:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    iput-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->transientBreadcrumbPage2:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    .line 164
    new-instance p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$1;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 184
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 185
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 186
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    .line 187
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbEnabled:Z

    if-eqz p3, :cond_2

    .line 190
    invoke-interface {p3, p0}, Lcom/amazon/kindle/nln/IThumbnailManager;->addThumbnailUpdateListener(Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;)V

    .line 193
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbInfo:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->listener:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private addBreadcrumbAwaitingPage(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbsAwaitingPages:Ljava/util/Set;

    monitor-enter v0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbsAwaitingPages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbsAwaitingPages:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 710
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->adapterDataObserver:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 715
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getBreadcrumbLabel(I)Ljava/lang/String;
    .locals 4

    .line 474
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getPageLabelForPosition(ILcom/amazon/android/docviewer/IPageLabelProvider;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Z)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->breadcrumb_label_bare:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object v1

    .line 481
    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 482
    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v2, p1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getPageRange(Lcom/amazon/android/docviewer/KindleDocViewer;I)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 484
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 485
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 484
    invoke-virtual {v1, v2, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->isMostRecentPageReadWaypointInRange(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 486
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->kre_synccx_breadcrumb_most_recent_label:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 490
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/krl/R$string;->breadcrumb_label:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getBreadcrumbPageView(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/view/View;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->waypointPageViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 505
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->getNewBreadCrumbPageView(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getMarkedPositionManager()Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;
    .locals 1

    .line 747
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMarkedPositionManager()Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    move-result-object v0

    return-object v0
.end method

.method private getNewBreadCrumbPageView(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/view/View;
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->newBreadCrumbView(Landroid/content/Context;Lcom/amazon/kindle/nln/IThumbnailManager;Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->waypointPageViews:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleJumpToWaypointCaseForBreadcrumb(Lcom/amazon/kindle/nln/VisiblePagesData;)V
    .locals 9

    .line 662
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->isJumpingToWaypoint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpDestinationBreadcrumb:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpDestinationBreadcrumb:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpDestinationBreadcrumb:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    .line 667
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->isJumpingToWaypoint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    sget-object v1, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->ONSCREEN:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    if-ne v0, v1, :cond_3

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpDestinationBreadcrumb:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 670
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->clearBreadcrumbOutAnimations()V

    .line 671
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    iget-object v2, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    .line 672
    iget-object v2, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    sget-object v3, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->ONSCREEN:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    if-eqz v2, :cond_2

    .line 674
    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->getContentLayout()Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v3

    iget-object v4, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->transientBreadcrumbPage:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->scaleBreadcrumbPage(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    :cond_2
    const/4 p1, 0x0

    .line 678
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpDestinationBreadcrumb:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 679
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->setIsJumpingToWaypoint(Z)V

    .line 680
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    iget-object p1, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->animateBreadcrumbFrame(Landroid/view/View;IIZZ)V

    :cond_3
    return-void
.end method

.method private removeBreadcrumbAwaitingPage(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbsAwaitingPages:Ljava/util/Set;

    monitor-enter v0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbsAwaitingPages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbsAwaitingPages:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 726
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->adapterDataObserver:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 731
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private shouldUpdateBreadcrumbPageViewForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 2

    .line 296
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 298
    invoke-interface {p2, v0}, Lcom/amazon/android/docviewer/IPositionRange;->overlaps(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateBreadcrumb(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/VisiblePagesData;)V
    .locals 12

    .line 531
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 535
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->isTransitioning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 537
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 538
    invoke-static {p1, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areEqual(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 539
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    iget-object v0, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p2, p2, v0

    .line 540
    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->updateBreadcrumbView(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    .line 541
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 544
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    if-eqz p2, :cond_2

    invoke-static {p1, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areSameDirection(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 545
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    iget-object v0, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p2, p2, v0

    const/4 v0, 0x4

    .line 546
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 549
    :cond_2
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    return-void

    .line 554
    :cond_3
    invoke-direct {p0, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->handleJumpToWaypointCaseForBreadcrumb(Lcom/amazon/kindle/nln/VisiblePagesData;)V

    .line 558
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    invoke-static {v0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areSamePosition(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    .line 560
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->isJumpingToWaypoint()Z

    move-result v0

    if-nez v0, :cond_5

    .line 561
    iget-object v6, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 562
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->clearBreadcrumbOutAnimations()V

    .line 563
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    iget-object v3, v6, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    .line 564
    iget-object v3, p2, Lcom/amazon/kindle/nln/VisiblePagesData;->lastBreadcrumbPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    sget-object v4, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->ONSCREEN:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    if-ne v3, v4, :cond_4

    iget-object v3, p2, Lcom/amazon/kindle/nln/VisiblePagesData;->lastBreadcrumbPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    if-eqz v3, :cond_4

    .line 566
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->getContentLayout()Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v4

    iget-object v5, p2, Lcom/amazon/kindle/nln/VisiblePagesData;->lastBreadcrumbPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->transientBreadcrumbPage:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->scaleBreadcrumbPage(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    goto :goto_0

    .line 569
    :cond_4
    invoke-static {v6, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areSameDirection(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 571
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->getContentLayout()Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->transientBreadcrumbPage:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-virtual {v3, v0, v1, v6, v4}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->fadeBreadcrumbPage(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;ZLcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_a

    .line 581
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {v3}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->clearBreadcrumbInAnimations()V

    .line 582
    iget-object v3, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    .line 583
    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object v3, v4, v3

    invoke-direct {p0, v3, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->updateBreadcrumbView(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    .line 586
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    iget-object v4, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    .line 587
    iget-boolean v4, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    if-eqz v4, :cond_6

    iget-object p2, p2, Lcom/amazon/kindle/nln/VisiblePagesData;->mrprPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    goto :goto_2

    :cond_6
    iget-object p2, p2, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    :goto_2
    move-object v6, p2

    if-eqz v6, :cond_7

    .line 590
    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {v3}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->getContentLayout()Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v5

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->transientBreadcrumbPage2:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->scaleBreadcrumbPage(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    goto :goto_3

    .line 592
    :cond_7
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    if-eqz p2, :cond_a

    invoke-static {p2, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areSameDirection(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 594
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {v3}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->getContentLayout()Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->transientBreadcrumbPage2:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-virtual {p2, v3, v2, p1, v4}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->fadeBreadcrumbPage(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;ZLcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    goto :goto_3

    :cond_8
    if-eqz p1, :cond_9

    .line 599
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    if-eqz p2, :cond_9

    iget-boolean v0, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    iget-boolean p2, p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    if-eq v0, p2, :cond_9

    .line 603
    iget-object p2, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    .line 604
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object p2, v0, p2

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->updateBreadcrumbView(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    :cond_9
    const/4 v0, 0x0

    .line 609
    :cond_a
    :goto_3
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    invoke-static {p1, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areSameDirection(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 610
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 612
    invoke-static {p1, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areSamePosition(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 614
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->clearBreadcrumbOutAnimations()V

    .line 615
    iget-object p2, p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    .line 616
    iget-object v0, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 617
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object p2, v4, p2

    invoke-virtual {p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->getContentLayout()Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object p2

    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object v4, v4, v0

    .line 618
    invoke-virtual {v4}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->getContentLayout()Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->transientBreadcrumbPage:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    .line 617
    invoke-virtual {v3, p2, v4, v5, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->slideBreadcrumbAcross(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    .line 619
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbInfo:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    aput-object p1, p2, v0

    .line 622
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object p2, p2, v0

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->updateBreadcrumbBadge(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    const/4 p2, 0x1

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/4 p2, 0x0

    .line 626
    :goto_4
    sget v9, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->BREADCRUMB_COUNT:I

    new-array v10, v9, [I

    .line 627
    new-array v11, v9, [Z

    .line 629
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    if-eqz v3, :cond_d

    .line 630
    iget-object v3, v3, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    .line 631
    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    invoke-virtual {v4}, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->isJumpingToWaypoint()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 632
    aput-boolean v2, v11, v3

    goto :goto_5

    :cond_c
    if-nez v0, :cond_d

    .line 634
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->resourceProvider:Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;

    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    iget-object v4, v4, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-interface {v0, v4, v1}, Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;->getBreadcrumbAnimationId(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;Z)I

    move-result v0

    aput v0, v10, v3

    :cond_d
    :goto_5
    if-eqz p1, :cond_e

    .line 640
    iget-object v0, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 641
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->resourceProvider:Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;

    iget-object v4, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-interface {v3, v4, v2}, Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;->getBreadcrumbAnimationId(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;Z)I

    move-result v3

    aput v3, v10, v0

    .line 642
    aput-boolean v2, v11, v0

    :cond_e
    :goto_6
    if-ge v1, v9, :cond_f

    .line 646
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object v4, v0, v1

    aget v6, v10, v1

    aget-boolean v7, v11, v1

    move v5, v1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->animateBreadcrumbFrame(Landroid/view/View;IIZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 650
    :cond_f
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    return-void
.end method

.method private updateBreadcrumbBadge(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V
    .locals 6

    .line 685
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    iget-object v1, p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/nln/IThumbnailManager;->getPage(Lcom/amazon/kindle/krx/reader/IPosition;Z)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v0

    .line 686
    invoke-direct {p0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->getMarkedPositionManager()Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 691
    sget-object v4, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;->BREADCRUMB:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    iget-object v5, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->context:Landroid/content/Context;

    .line 692
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    .line 691
    invoke-interface {v1, v4, v5, v0}, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;->getMarkerDrawablesWithinRange(Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;Landroid/content/Context;Lcom/amazon/kindle/krx/reader/IPositionRange;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 693
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    .line 694
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->removeBreadcrumbAwaitingPage(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    goto :goto_0

    .line 696
    :cond_1
    invoke-direct {p0, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->addBreadcrumbAwaitingPage(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    .line 699
    :goto_0
    invoke-virtual {p1, v3}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->setBadgeIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateBreadcrumbView(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbInfo:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    iget-object v1, p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 756
    iget-object v0, p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->getBreadcrumbLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 757
    iget-object v1, p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p0, v1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->getBreadcrumbPageView(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->setThumbnail(Landroid/view/View;)V

    .line 758
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->setLabel(Ljava/lang/String;)V

    .line 759
    iget-boolean v0, p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->setIsMrpr(Z)V

    .line 760
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->getContentLayout()Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v1

    iget-boolean v2, p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->setBreadcrumbLayout(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Z)V

    .line 762
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->updateBreadcrumbBadge(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    return-void
.end method


# virtual methods
.method public animateTransition(ZZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V
    .locals 5

    .line 317
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 318
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    return-void

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {v0, v3, p1, p2, p3}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->animateTransition(Landroid/view/View;ZZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    return-void
.end method

.method public cleanupTransition()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animationManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->cleanupTransition()V

    return-void
.end method

.method public getLatestBreadcrumbInfo()Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .line 351
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {v3}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->disposePageView()V

    .line 354
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-eqz v0, :cond_4

    .line 360
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->waypointPageViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 362
    invoke-interface {v0, v2}, Lcom/amazon/kindle/nln/IThumbnailManager;->disposeUnmanagedView(Landroid/view/View;)V

    goto :goto_1

    .line 365
    :cond_3
    invoke-interface {v0, p0}, Lcom/amazon/kindle/nln/IThumbnailManager;->removeThumbnailUpdateListener(Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;)V

    :cond_4
    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->listener:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;

    .line 369
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->waypointPageViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 370
    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->context:Landroid/content/Context;

    .line 371
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onPageLabelReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$PageLabelReadyEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    const/4 p1, 0x0

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbInfo:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 383
    aget-object v1, v0, p1

    if-eqz v1, :cond_1

    .line 384
    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->getBreadcrumbLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->setLabel(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onThumbnailManagerDestroyed()V
    .locals 0

    return-void
.end method

.method public onThumbnailManagerReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    .line 283
    invoke-interface {p1, p0}, Lcom/amazon/kindle/nln/IThumbnailManager;->addThumbnailUpdateListener(Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onThumbnailsUpdated()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->waypointPageViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/nln/IThumbnailManager;->disposeUnmanagedView(Landroid/view/View;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->waypointPageViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->resourceProvider:Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;

    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;->onConfigurationChanged(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 208
    :goto_1
    sget v1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->BREADCRUMB_COUNT:I

    if-ge v0, v1, :cond_3

    .line 210
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbInfo:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    .line 211
    aget-object v1, v1, v0

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->updateBreadcrumbView(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    .line 212
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->resourceProvider:Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;

    invoke-static {}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;->values()[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;->getBreadcrumbBackgroundRes(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onVisiblePagesChanged(Lcom/amazon/kindle/nln/VisiblePagesData;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 5

    .line 395
    iget-object v0, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->mrprPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->mrprPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    sget-object v3, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->ONSCREEN:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    .line 400
    iget-object p2, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageView:Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    if-eq p2, v3, :cond_3

    :cond_1
    sget-boolean p2, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->shouldShowWaypointBreadcrumb:Z

    if-eqz p2, :cond_3

    .line 403
    iget-object p2, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->waypointPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    sget-object v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->OFFSCREEN_END:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    if-ne p2, v0, :cond_2

    sget-object p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;->AFTER:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    goto :goto_2

    :cond_2
    sget-object p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;->BEFORE:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    goto :goto_2

    :cond_3
    move-object p2, v2

    move-object p3, p2

    goto :goto_2

    .line 397
    :cond_4
    :goto_0
    iget-object p3, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->mrprPageStatus:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    sget-object v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->OFFSCREEN_END:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    if-ne p3, v0, :cond_5

    sget-object p3, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;->AFTER:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    goto :goto_1

    :cond_5
    sget-object p3, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;->BEFORE:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    :goto_1
    const/4 v1, 0x1

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    :goto_2
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 411
    new-instance v2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    invoke-direct {v2, p3, p2, v1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;Z)V

    .line 413
    :cond_6
    invoke-direct {p0, v2, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->updateBreadcrumb(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/VisiblePagesData;)V

    return-void
.end method

.method resetBadgeListeners()V
    .locals 3

    .line 736
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbsAwaitingPages:Ljava/util/Set;

    monitor-enter v0

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbsAwaitingPages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 738
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 740
    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->adapterDataObserver:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$BCMObserver;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 742
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBreadcrumbEnabled(Z)V
    .locals 5

    .line 421
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    if-eqz p1, :cond_6

    .line 427
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbInfo:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 428
    invoke-static {v3, v4}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areEqual(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 429
    :goto_1
    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object v4, v4, v2

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 431
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbInfo:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    aget-object v4, v3, v1

    if-eqz v4, :cond_4

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->lastPrimaryBreadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 432
    invoke-static {v3, v4}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areEqual(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 433
    :goto_3
    iget-object v4, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object v1, v4, v1

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x4

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 435
    :cond_6
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object v2, v3, v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 436
    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object v1, v2, v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 439
    :goto_5
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbEnabled:Z

    return-void
.end method

.method public setIsTransitioning(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->isTransitioning:Z

    return-void
.end method

.method public updateAnnotations(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 12
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = false
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_ADDED_REMOVED:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_6

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 236
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbInfo:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v7, v0, v3

    if-eqz v7, :cond_4

    .line 238
    iget-object v8, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    iget-object v9, v7, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v8, v9, v2}, Lcom/amazon/kindle/nln/IThumbnailManager;->getPage(Lcom/amazon/kindle/krx/reader/IPosition;Z)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_3

    .line 243
    :cond_1
    invoke-interface {v8}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v8

    .line 247
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAddedAnnotations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 248
    invoke-direct {p0, v10, v8}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->shouldUpdateBreadcrumbPageViewForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v10

    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getRemovedAnnotations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 253
    invoke-direct {p0, v10, v8}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->shouldUpdateBreadcrumbPageViewForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v10

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_4

    .line 257
    iget-object v6, v7, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p0, v6}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->getNewBreadCrumbPageView(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/view/View;

    const/4 v6, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz v6, :cond_6

    .line 264
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance v3, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v6, "AmazonKindle"

    const-string v7, "BreadCrumbViewUpdate"

    invoke-direct {v3, v6, v7}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    const-string v3, "AnnotationAddedOrRemoved"

    move-wide v6, v0

    .line 267
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addTimingMetric(Ljava/lang/String;JJ)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 264
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :cond_6
    return-void
.end method

.method public updateBreadcrumbBadges()V
    .locals 5

    const/4 v0, 0x0

    .line 455
    :goto_0
    sget v1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->BREADCRUMB_COUNT:I

    if-ge v0, v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbViews:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    aget-object v2, v1, v0

    .line 457
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->breadcrumbInfo:[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    aget-object v4, v3, v0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 459
    aget-object v1, v1, v0

    aget-object v2, v3, v0

    invoke-direct {p0, v1, v2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->updateBreadcrumbBadge(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
