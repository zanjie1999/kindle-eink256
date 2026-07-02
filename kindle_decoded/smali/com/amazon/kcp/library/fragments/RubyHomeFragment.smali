.class public Lcom/amazon/kcp/library/fragments/RubyHomeFragment;
.super Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;
.source "RubyHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;,
        Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;
    }
.end annotation


# static fields
.field private static final SHOVELER_WIDGET_CACHE_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionManager:Lcom/amazon/kindle/home/action/HomeActionManager;

.field private adapter:Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

.field private contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

.field private countOfHomeSessions:J

.field private final coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private feedRefreshTaskDelay:I

.field private fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field private homeSessionStartTime:J

.field private isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected libraryFragmentClientProxy:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final widgetListener:Lcom/amazon/kindle/home/card/HomeWidgetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-class v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 213
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;-><init>()V

    .line 93
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;

    const-string v1, "RubyHomeFragment"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    .line 95
    new-instance v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;-><init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->adapter:Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

    .line 97
    new-instance v0, Lcom/amazon/kcp/home/actions/ActionManager;

    invoke-direct {v0}, Lcom/amazon/kcp/home/actions/ActionManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->actionManager:Lcom/amazon/kindle/home/action/HomeActionManager;

    const-wide/16 v0, 0x0

    .line 100
    iput-wide v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->homeSessionStartTime:J

    .line 101
    iput-wide v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->countOfHomeSessions:J

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->listeners:Ljava/util/Set;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    new-instance v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;-><init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->widgetListener:Lcom/amazon/kindle/home/card/HomeWidgetListener;

    .line 214
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 215
    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    invoke-direct {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->libraryFragmentClientProxy:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    .line 216
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$integer;->ruby_refresh_feed_delay_in_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->feedRefreshTaskDelay:I

    .line 217
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 218
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->adapter:Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->reportImpressionDataForCurrentHomeSession(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)F
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->widthScaleFactor()F

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kindle/home/card/HomeWidgetListener;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->widgetListener:Lcom/amazon/kindle/home/card/HomeWidgetListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kindle/home/action/HomeActionManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->actionManager:Lcom/amazon/kindle/home/action/HomeActionManager;

    return-object p0
.end method

.method private getNumberOfShovelers(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/card/HomeCard;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 651
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 652
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/home/card/HomeCard;

    .line 653
    instance-of v2, v2, Lcom/amazon/kcp/home/widget/ShovelerWidget;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isItemPartiallyVisible(Landroid/view/View;)Z
    .locals 1

    .line 601
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private reportImpressionDataForCurrentHomeSession(Z)V
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 578
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 579
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 580
    invoke-direct {p0, v2}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->isItemPartiallyVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 581
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 582
    instance-of v3, v2, Lcom/amazon/kindle/home/card/HomeCard;

    if-eqz v3, :cond_2

    .line 583
    check-cast v2, Lcom/amazon/kindle/home/card/HomeCard;

    if-nez p1, :cond_1

    .line 585
    invoke-interface {v2, v0}, Lcom/amazon/kindle/home/card/HomeCard;->reportImpressionData(Z)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 586
    invoke-interface {v2}, Lcom/amazon/kindle/home/card/HomeCard;->getHasBeenShownToUser()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    .line 587
    invoke-interface {v2, v3}, Lcom/amazon/kindle/home/card/HomeCard;->reportImpressionData(Z)V

    .line 588
    invoke-interface {v2, v3}, Lcom/amazon/kindle/home/card/HomeCard;->setHasBeenShownToUser(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private resetCachePivot()V
    .locals 6

    .line 639
    invoke-static {}, Lcom/amazon/kindle/cover/ImageSizes$Type;->values()[Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 640
    iget-object v5, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    invoke-interface {v5, v2, v4}, Lcom/amazon/kcp/cover/ICoverCacheManager;->setCachePivot(ILcom/amazon/kindle/cover/ImageSizes$Type;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private widthScaleFactor()F
    .locals 4

    .line 670
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 671
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->width_scale_factor:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 672
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    return v0
.end method


# virtual methods
.method public addHomeVisibilityListener(Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createContentHandler()V
    .locals 4

    .line 230
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->libraryFragmentClientProxy:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    return-void
.end method

.method protected handleResumeItemClick(Lcom/amazon/kindle/home/card/LibraryCardEvent;Ljava/lang/String;)V
    .locals 8

    .line 420
    invoke-virtual {p1}, Lcom/amazon/kindle/home/card/LibraryCardEvent;->getDisplayItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez v0, :cond_0

    .line 421
    sget-object p1, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->TAG:Ljava/lang/String;

    const-string p2, "LibraryEvent data isn\'t a display item, returning"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 425
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/home/card/LibraryCardEvent;->getDisplayItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->refreshItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 429
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazon/kcp/reader/ReaderController;

    .line 430
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 431
    invoke-virtual {p1}, Lcom/amazon/kindle/home/card/LibraryCardEvent;->getView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-object v7, p2

    .line 430
    invoke-interface/range {v1 .. v7}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->onItemClick(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 310
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 313
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->getInstance()Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->getHomeWidgets(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 314
    new-instance v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;-><init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;)V

    .line 315
    iput-object p1, v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;->widgets:Ljava/util/List;

    .line 316
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 317
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 318
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->adapter:Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

    if-eqz p1, :cond_0

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/home/card/HomeCard;

    .line 322
    invoke-interface {v0}, Lcom/amazon/kindle/home/card/HomeCard;->onConfigurationChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 223
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->createContentHandler()V

    .line 226
    invoke-static {p0}, Lcom/amazon/kcp/home/util/HomeContext;->setFragment(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 330
    sget p3, Lcom/amazon/kindle/librarymodule/R$layout;->home_container:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 331
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->shoveler_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->setRecyclerView(Lcom/amazon/kcp/library/ui/NestedRecyclerView;Z)V

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/librarymodule/R$dimen;->home_feed_margin_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 333
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    .line 335
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    .line 336
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 333
    invoke-virtual {p3, v1, p2, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 337
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 338
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->shoveler_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/16 p3, 0x8

    .line 339
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 352
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 354
    invoke-static {v0}, Lcom/amazon/kcp/home/util/HomeContext;->setFragment(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 345
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 346
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->reportImpressionDataForCurrentHomeSession(Z)V

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 282
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->resetCachePivot()V

    const/4 v0, 0x1

    .line 294
    invoke-virtual {p0, v0, v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->onWidgetsUpdate(ZZ)V

    :cond_0
    if-eqz p1, :cond_1

    .line 298
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;

    .line 299
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;->onHomeHidden()V

    goto :goto_0

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;

    .line 303
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;->onHomeDisplayed()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method onResumeWidgetEvent(Lcom/amazon/kindle/home/card/LibraryCardEvent;Ljava/lang/String;)V
    .locals 4

    .line 399
    invoke-virtual {p1}, Lcom/amazon/kindle/home/card/LibraryCardEvent;->getDisplayItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez v0, :cond_0

    .line 400
    sget-object p1, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->TAG:Ljava/lang/String;

    const-string p2, "LibraryEvent data isn\'t a display item, returning"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 405
    invoke-static {p1}, Lcom/amazon/kcp/library/HomeUtils;->convertLibraryEvent(Lcom/amazon/kindle/home/card/LibraryCardEvent;)Lcom/amazon/kcp/home/events/ResumeWidgetEvent;

    move-result-object v1

    .line 406
    invoke-virtual {p1}, Lcom/amazon/kindle/home/card/LibraryCardEvent;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 407
    invoke-virtual {p1}, Lcom/amazon/kindle/home/card/LibraryCardEvent;->getEventType()Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->ITEM_CLICKED:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    if-ne v2, v3, :cond_1

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->handleResumeItemClick(Lcom/amazon/kindle/home/card/LibraryCardEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/home/card/LibraryCardEvent;->getEventType()Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    move-result-object p2

    sget-object v2, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->ITEM_LONG_CLICKED_SHOVELER:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    if-ne p2, v2, :cond_2

    if-eqz v0, :cond_2

    .line 410
    new-instance p1, Lcom/amazon/kcp/home/widget/resume/popups/ResumeShovelerPopup;

    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    check-cast p2, Lcom/amazon/kcp/library/ContentInteractionHandler;

    invoke-direct {p1, v0, v1, p2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeShovelerPopup;-><init>(Landroid/content/Context;Lcom/amazon/kcp/home/events/ResumeWidgetEvent;Lcom/amazon/kcp/library/ContentInteractionHandler;)V

    .line 411
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeShovelerPopup;->show()V

    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/home/card/LibraryCardEvent;->getEventType()Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    move-result-object p2

    sget-object v2, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->ITEM_LONG_CLICKED_OVERFLOW:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    if-ne p2, v2, :cond_3

    if-eqz v0, :cond_3

    .line 413
    new-instance p2, Lcom/amazon/kcp/home/widget/resume/popups/ResumeOverFlowPopup;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    check-cast v2, Lcom/amazon/kcp/library/ContentInteractionHandler;

    invoke-direct {p2, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeOverFlowPopup;-><init>(Landroid/content/Context;Lcom/amazon/kcp/home/events/ResumeWidgetEvent;Lcom/amazon/kcp/library/ContentInteractionHandler;)V

    .line 414
    invoke-virtual {p1}, Lcom/amazon/kindle/home/card/LibraryCardEvent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeOverFlowPopup;->show(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 239
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->resetCachePivot()V

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0, v1, v1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->onWidgetsUpdate(ZZ)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$2;-><init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V

    iget v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->feedRefreshTaskDelay:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 262
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;

    .line 263
    invoke-interface {v1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;->onHomeDisplayed()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 269
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->clearBookOpenAnimation()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;

    .line 276
    invoke-interface {v1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;->onHomeHidden()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onWidgetsUpdate(Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "home_widget_update"
    .end annotation

    .line 359
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->onWidgetsUpdate(ZZ)V

    return-void
.end method

.method public onWidgetsUpdate(ZZ)V
    .locals 3

    .line 363
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->getInstance()Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->getHomeWidgets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 364
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$3;-><init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;ZLjava/util/List;Z)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method refresh()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 492
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->onWidgetsUpdate(ZZ)V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public setFragmentHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    return-void
.end method

.method public setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->libraryFragmentClientProxy:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;->setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    .line 498
    invoke-static {p1}, Lcom/amazon/kcp/home/util/HomeContext;->setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    return-void
.end method

.method protected setRecyclerView(Lcom/amazon/kcp/library/ui/NestedRecyclerView;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 440
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    const/4 p2, 0x1

    .line 441
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 442
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 443
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 444
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->adapter:Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 445
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    new-instance p2, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$4;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$4;-><init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 453
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->recyclerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    new-instance p2, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$5;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$5;-><init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method shouldUpdateAdapter(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/card/HomeCard;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/card/HomeCard;",
            ">;)Z"
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 624
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->getLoadingSpinnerCard()Lcom/amazon/kindle/home/card/HomeCard;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 625
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->getLoadingSpinnerCard()Lcom/amazon/kindle/home/card/HomeCard;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 631
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->getNumberOfShovelers(Ljava/util/List;)I

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->getNumberOfShovelers(Ljava/util/List;)I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method
