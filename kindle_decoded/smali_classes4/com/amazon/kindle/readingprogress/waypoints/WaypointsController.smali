.class public Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;
.super Ljava/lang/Object;
.source "WaypointsController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private volatile isWaypointsUpdateEnabled:Z

.field private provider:Lcom/amazon/android/docviewer/IPageLabelProvider;

.field private final pubSubManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

.field private volatile shouldSuppressNextWaypoint:Z

.field private final waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->shouldSuppressNextWaypoint:Z

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->isWaypointsUpdateEnabled:Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->provider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    .line 63
    iput-object p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 64
    iput-object p3, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->pubSubManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    return-void
.end method

.method private addWaypointInternal(IZLandroid/content/Context;)V
    .locals 2

    .line 269
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->isWaypointUpdateValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-direct {p0, p1, p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->getLabelForPosition(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->getWaypointPositionForKRFPosition(I)I

    move-result v1

    if-eqz p2, :cond_0

    .line 274
    iget-object p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {p2, p1, v0, p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->updateMRPRPosition(ILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {p1, v1, v0, p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->addWaypoint(ILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 280
    iput-boolean p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->shouldSuppressNextWaypoint:Z

    :goto_0
    return-void
.end method

.method private declared-synchronized getLabelForPosition(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->provider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->provider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    .line 331
    iput-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->provider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    :goto_0
    if-eqz v0, :cond_2

    .line 335
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->hasPageNumbers()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPositionForPageLabel(Ljava/lang/String;)I

    move-result v1

    if-ge p1, v1, :cond_1

    goto :goto_1

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v2, 0x1

    invoke-static {p1, v0, p2, v1, v2}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getPageLabelForPosition(ILcom/amazon/android/docviewer/IPageLabelProvider;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getMostRecentPageReadPositionFromEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)I
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 350
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 349
    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getMostRecentPageReadWaypointPositionInRange(II)I

    move-result p1

    return p1
.end method

.method private getWaypointPositionFromEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)I
    .locals 3

    .line 362
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 363
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v1}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 365
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 366
    iget-object v2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {v2, v1, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypointInRange(II)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method private isWaypointUpdateValid()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->isWaypointsUpdateEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->shouldSuppressNextWaypoint:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateWaypointLabels(Landroid/content/Context;)V
    .locals 5

    .line 304
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->provider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypoints()Ljava/util/List;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    .line 311
    new-instance v3, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    invoke-virtual {v2}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v4

    .line 312
    invoke-virtual {v2}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->getLabelForPosition(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2, p1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 314
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->addWaypoints(Ljava/util/List;)V

    return-void
.end method

.method private validateAndClearMostRecentPageReadWaypoint(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 1

    .line 225
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->isWaypointUpdateValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->getMostRecentPageReadPositionFromEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 229
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->clearMostRecentPageReadWaypoint()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addMostRecentPageReadWaypointAcceptedMetric()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->addMostRecentPageReadWaypointAcceptedMetric()V

    return-void
.end method

.method public clearMostRecentPageReadWaypoint()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->clearMostRecentPageReadWaypoint()V

    return-void
.end method

.method protected getWaypointPositionForKRFPosition(I)I
    .locals 0

    return p1
.end method

.method public initializeWaypoints(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->setWaypoints(Ljava/util/List;Landroid/content/Context;)V

    .line 75
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->pubSubManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public isMostRecentPageReadWaypoint(I)Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getMostRecentPageReadWaypoint()Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMostRecentPageReadWaypointInRange(II)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getMostRecentPageReadWaypointPositionInRange(II)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 187
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object v1

    .line 190
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->getWaypointPositionFromEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)I

    move-result v0

    .line 198
    sget-object v2, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController$1;->$SwitchMap$com$amazon$kindle$event$KindleDocNavigationEvent$NavigationType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 210
    invoke-direct {p0, v0, v2, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->addWaypointInternal(IZLandroid/content/Context;)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->validateAndClearMostRecentPageReadWaypoint(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V

    const/4 p1, 0x0

    .line 204
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 203
    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->addWaypointInternal(IZLandroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized onLocalBookItemEvent(Lcom/amazon/kindle/krx/events/LocalBookItemEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getType()Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->PROPOSE_LOCATION:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getSyncType()Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne p1, v0, :cond_1

    .line 169
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 170
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getBookAnnotationsManager()Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    .line 174
    invoke-interface {p1, v0}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->getServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 177
    iget p1, v0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    .line 178
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->setMostRecentPageReadWaypoint(ILandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPageLabelProviderReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$PageLabelReadyEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->provider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->provider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    .line 243
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->updateWaypointLabels(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMostRecentPageReadWaypoint(ILandroid/content/Context;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->getWaypointPositionForKRFPosition(I)I

    move-result v1

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->getLabelForPosition(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->setMostRecentPageReadWaypoint(ILjava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public setWaypoints(Ljava/util/List;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v2, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->getLabelForPosition(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, p2}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 88
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->clear()V

    .line 89
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->addWaypoints(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public setWaypointsUpdateEnabled(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->isWaypointsUpdateEnabled:Z

    return-void
.end method

.method public suppressNextWaypoint()V
    .locals 1

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->shouldSuppressNextWaypoint:Z

    return-void
.end method
