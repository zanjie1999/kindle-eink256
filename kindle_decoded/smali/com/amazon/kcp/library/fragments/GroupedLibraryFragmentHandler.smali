.class public abstract Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;
.super Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;
.source "GroupedLibraryFragmentHandler.java"

# interfaces
.implements Lcom/amazon/kcp/library/AllDownloadToggleDelegate$CloudDeviceStateChangeListener;


# static fields
.field private static final MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-class v0, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;

    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 33
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    return-void
.end method

.method private metric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return-void
.end method

.method private reportGroupTypeMetrics(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 2

    .line 84
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LibraryView"

    invoke-static {v0, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    .line 85
    sget-object v0, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryGroupType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "GroupedLibraryFragmentHandler"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "OnDeviceSelected"

    .line 91
    invoke-direct {p0, v1, p1, p2}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string p1, "CloudSelected"

    .line 87
    invoke-direct {p0, v1, p1, p2}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->metric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-interface {p0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->getGroupType(Lcom/amazon/kindle/krx/library/LibraryView;)Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v0

    return-object v0
.end method

.method public onReSelected()V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getSortType()Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v1

    .line 42
    sget-object v2, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    if-ne v2, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->refresh()V

    :cond_0
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->scrollToBeginning(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    :cond_1
    return-void
.end method

.method public onStateChange(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->setGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->scrollToBeginning(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 113
    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;-><init>(Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public setGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    sget-object v0, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting group type to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-interface {p0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->setGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->updateFilterAndSort()V

    .line 79
    invoke-interface {p0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->reportGroupTypeMetrics(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/krx/library/LibraryView;)V

    return-void
.end method
