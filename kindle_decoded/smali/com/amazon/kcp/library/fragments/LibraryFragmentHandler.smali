.class public abstract Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;
.super Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;
.source "LibraryFragmentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;
    }
.end annotation


# static fields
.field private static final DETAILS_TAG:Ljava/lang/String; = "LibraryFragmentHandler_DETAILS"

.field private static final GRID_TAG:Ljava/lang/String; = "LibraryFragmentHandler_GRID"

.field private static final LIST_TAG:Ljava/lang/String; = "LibraryFragmentHandler_LIST"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected libraryContext:Lcom/amazon/kcp/library/LibraryContext;

.field protected final libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

.field private final viewModeListener:Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;

.field protected final viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 75
    new-instance p1, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;-><init>(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->setCountDelegator(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;)V

    .line 77
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    .line 78
    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewModeListener:Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;

    .line 79
    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    .line 80
    invoke-static {p4}, Lcom/amazon/kcp/library/LibraryFragmentContext;->setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    return-void
.end method

.method private handleExistingFragments(Ljava/lang/String;ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 160
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hiding GRID fragment before showing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hiding LIST fragment before showing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hiding DETAILS fragment before showing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_2
    :goto_0
    return-void
.end method

.method private metric(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 582
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "LibraryFragmentHandler"

    invoke-virtual {v0, v2, p1, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return-void
.end method

.method private recordFastMetricsViewChange(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/library/LibrarySortType;)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v1, :cond_1

    .line 605
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedFilterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 606
    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryContext;->getLibraryType()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "Library"

    :goto_1
    const/4 v2, 0x0

    .line 610
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, v0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLibraryViewChangeAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private reportSortTypeMetrics(Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 2

    .line 501
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LibraryView"

    invoke-static {v0, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    .line 502
    sget-object v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$1;->$SwitchMap$com$amazon$kcp$library$LibrarySortType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 541
    sget-object p2, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected invalid sort type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "SortBySeriesOrderReverse"

    .line 536
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "SortBySeriesOrder"

    .line 532
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "SortByCustom"

    .line 528
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "SortByPublicationDateSeries"

    .line 524
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "SortByPublicationDate"

    .line 520
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "SortByRecent"

    .line 516
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "SortByTitle"

    .line 512
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "SortByAuthorReverse"

    .line 508
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_8
    const-string v0, "SortByAuthor"

    .line 504
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    .line 544
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->recordFastMetricsViewChange(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/library/LibrarySortType;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reportViewTypeMetrics(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 2

    .line 548
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LibraryView"

    invoke-static {v0, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    .line 549
    sget-object v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "GridViewSelected"

    .line 551
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string v0, "DetailsViewSelected"

    .line 559
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string v0, "ListViewSelected"

    .line 555
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/util/Map;)V

    .line 566
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getSortType()Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->recordFastMetricsViewChange(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/library/LibrarySortType;)V

    return-void
.end method


# virtual methods
.method public dismissActionMode()V
    .locals 5

    .line 247
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 250
    sget-object v2, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 264
    sget-object v2, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected invalid show view type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " while dismissing action mode"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 267
    check-cast v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    invoke-interface {v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->dismissActionMode()V

    goto :goto_1

    .line 269
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected getDefaultLibraryGroup()Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    .line 497
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    :goto_0
    return-object v0
.end method

.method protected getDetailsFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected getDetailsFragmentTag()Ljava/lang/String;
    .locals 1

    const-string v0, "LibraryFragmentHandler_DETAILS"

    return-object v0
.end method

.method protected getGridFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected getGridFragmentTag()Ljava/lang/String;
    .locals 1

    const-string v0, "LibraryFragmentHandler_GRID"

    return-object v0
.end method

.method public getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDefaultLibraryGroup()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryContext()Lcom/amazon/kcp/library/LibraryContext;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    return-object v0
.end method

.method protected getListFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected getListFragmentTag()Ljava/lang/String;
    .locals 1

    const-string v0, "LibraryFragmentHandler_LIST"

    return-object v0
.end method

.method protected getMenuItems()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;",
            ">;"
        }
    .end annotation

    .line 475
    sget-object v0, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->VIEW_SORT:Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    sget-object v1, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->SHARE:Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getSortType()Lcom/amazon/kcp/library/LibrarySortType;
    .locals 4

    .line 322
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getSortTypePersistKey()Ljava/lang/String;

    move-result-object v1

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    iget-object v3, v0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-interface {v2, v1, v3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->getSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 330
    :catch_0
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    iget-object v3, v0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-interface {v2, v1, v3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->setSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)V

    .line 331
    iget-object v0, v0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    return-object v0
.end method

.method public getSortTypePersistKey()Ljava/lang/String;
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getSortPersistKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;
    .locals 1

    .line 337
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-interface {p0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->getViewType(Lcom/amazon/kindle/krx/library/LibraryView;)Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    .line 409
    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryViewType;->DETAILS:Lcom/amazon/kindle/krx/library/LibraryViewType;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-virtual {v1}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 411
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->setUserSelectedViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    :cond_0
    return-object v0
.end method

.method public hide(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 4

    .line 214
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->hide(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 216
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 219
    sget-object v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 233
    sget-object v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid show view type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detach "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Fragment."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-object p1, v0

    check-cast p1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {p1, v2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->setAdapterFragmentListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;)V

    .line 238
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 240
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected instantiateLibraryRecyclerFragment(Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;
    .locals 2

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ARG_RECYCLER_LAYOUT_TYPE"

    .line 196
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 197
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 198
    const-class p1, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;

    if-eqz p1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-interface {p1, v1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;->libraryItemsFragment(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    return-object p1

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null LargeLibraryFragmentProvider while LL is enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const-class v1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    return-object p1
.end method

.method public onDestroy(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->destroyFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 594
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->destroyFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 595
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->destroyFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    .line 596
    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryFragmentContext;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 597
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->onDestroy(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 466
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getMenuItems()Ljava/util/Set;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->libraryActionBarHelper:Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setEnabledOptions(Landroid/view/Menu;Ljava/util/Set;)V

    return-void
.end method

.method protected onSetViewType()V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onViewModeSelected(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewModeListener:Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;

    if-eqz v0, :cond_1

    .line 480
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->CHANGE_TO_LIST_VIEW_MODE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewModeListener:Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;->onViewModeChanged(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 485
    invoke-interface {p0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->reportViewTypeMetrics(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kindle/krx/library/LibraryView;)V

    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 571
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->refresh()V

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollToBeginning(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 4

    .line 293
    sget-object v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 307
    sget-object v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid view type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " while scrolling"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 310
    check-cast p1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->scrollToTop()V

    .line 311
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->library_top_tool_bar_layout:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_4

    .line 313
    invoke-virtual {p1, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    goto :goto_1

    .line 316
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method setFilterAndSort(Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;)V
    .locals 0

    .line 369
    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->setFilterAndSort(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    return-void
.end method

.method public setSortType(Lcom/amazon/kcp/library/LibrarySortType;)V
    .locals 1

    .line 343
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getSortTypePersistKey()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->setSortTypeWithKey(Lcom/amazon/kcp/library/LibrarySortType;Ljava/lang/String;)V

    return-void
.end method

.method protected setSortTypeWithKey(Lcom/amazon/kcp/library/LibrarySortType;Ljava/lang/String;)V
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting sort type to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->scrollToBeginning(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-interface {v0, p2, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->setSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)V

    .line 359
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->updateFilterAndSort()V

    .line 361
    invoke-interface {p0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object p2

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->reportSortTypeMetrics(Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;)V

    return-void
.end method

.method public setUserSelectedViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-interface {p0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 424
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->onSetViewType()V

    return-void
.end method

.method public show(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;Lcom/amazon/kcp/library/LibraryContext;)V

    return-void
.end method

.method public show(ILandroidx/fragment/app/FragmentTransaction;Lcom/amazon/kcp/library/LibraryContext;)V
    .locals 4

    .line 92
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 93
    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    .line 94
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p3

    if-eqz p3, :cond_5

    const/4 v0, 0x0

    .line 99
    sget-object v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragmentTag()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_2

    .line 123
    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->GRID:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->instantiateLibraryRecyclerFragment(Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    move-result-object v3

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragmentTag()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_2

    .line 113
    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->DETAILS:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->instantiateLibraryRecyclerFragment(Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    move-result-object v3

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragmentTag()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_2

    .line 104
    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->instantiateLibraryRecyclerFragment(Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    move-result-object v3

    :goto_0
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Fragment of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " and Adding"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    invoke-direct {p0, v1, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->handleExistingFragments(Ljava/lang/String;ILandroidx/fragment/app/FragmentTransaction;)V

    .line 131
    invoke-virtual {p2, p1, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 133
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching Fragment of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    invoke-direct {p0, v1, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->handleExistingFragments(Ljava/lang/String;ILandroidx/fragment/app/FragmentTransaction;)V

    .line 135
    invoke-virtual {p2, v3}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 137
    :goto_1
    move-object p1, v3

    check-cast p1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->setFilterAndSort(Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;)V

    .line 139
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 140
    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->getItemCountProvider()Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->setCountDelegator(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;)V

    goto :goto_2

    .line 143
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->countDelegator:Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;

    check-cast p1, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;

    move-object p2, v3

    check-cast p2, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->bindLibraryAdapterFragment(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;)V

    .line 145
    :goto_2
    invoke-static {v3}, Lcom/amazon/kcp/library/LibraryFragmentContext;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 146
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->updateEmptyLibrary()V

    :cond_5
    return-void
.end method

.method updateFilterAndSort()V
    .locals 5

    .line 376
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 379
    sget-object v2, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 393
    sget-object v2, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected invalid show view type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " while filtering and sorting"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    :goto_0
    if-eqz v1, :cond_3

    .line 396
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->setFilterAndSort(Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;)V

    goto :goto_1

    .line 398
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    .line 401
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->updateEmptyLibrary()V

    return-void
.end method
