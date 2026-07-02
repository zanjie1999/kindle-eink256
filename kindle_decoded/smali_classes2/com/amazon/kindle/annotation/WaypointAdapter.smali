.class public Lcom/amazon/kindle/annotation/WaypointAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WaypointAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/annotation/WaypointAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field protected docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kindle/annotation/WaypointAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/annotation/WaypointAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kindle/annotation/WaypointAdapter;->handler:Landroid/os/Handler;

    .line 29
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/annotation/WaypointAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/WaypointAdapter;->loadWaypoints()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/annotation/WaypointAdapter;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/WaypointAdapter;->loadWaypoints()V

    return-void
.end method

.method private loadWaypoints()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/annotation/WaypointAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 42
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->asIntegers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_2

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v0, "DocViewer is null in WaypointAdaptor!"

    goto :goto_1

    :cond_2
    const-string v0, "DocViewer has null waypoints model in WaypointAdaptor!"

    .line 39
    :goto_1
    sget-object v1, Lcom/amazon/kindle/annotation/WaypointAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public WaypointChangedSubscriber(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 57
    iget-object p1, p0, Lcom/amazon/kindle/annotation/WaypointAdapter;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/kindle/annotation/WaypointAdapter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/annotation/WaypointAdapter$1;-><init>(Lcom/amazon/kindle/annotation/WaypointAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
