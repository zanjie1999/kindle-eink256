.class public Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;
.super Ljava/lang/Object;
.source "WaypointsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;
    }
.end annotation


# static fields
.field private static MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue; = null

.field private static final METRICS_CLASS:Ljava/lang/String; = "WAYPOINT_COUNT"

.field private static final MOST_RECENT_PAGE_READ_WAYPOINT_ACCEPTED_METRIC:Ljava/lang/String; = "MostRecentPageReadWaypointAccepted"

.field private static final MOST_RECENT_PAGE_READ_WAYPOINT_CLEAR_METRIC:Ljava/lang/String; = "MostRecentPageReadWaypointCleared"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private counters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isMostRecentPageReadWaypointSecondMostRecent:Z

.field private final m_waypointsPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maxWaypoints:I

.field private mostRecentPageReadWaypoint:Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

.field private totalWaypointsCreated:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 34
    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->isMostRecentPageReadWaypointSecondMostRecent:Z

    .line 53
    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->maxWaypoints:I

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    .line 55
    iput v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->totalWaypointsCreated:I

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->counters:Ljava/util/Map;

    return-void
.end method

.method private isValidWaypointPosition(III)Z
    .locals 0

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Found a waypoint in range: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private publishEvent()V
    .locals 2

    .line 390
    new-instance v0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;)V

    .line 391
    sget-object v1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private purgeExtraneousWaypoints()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->maxWaypoints:I

    if-le v2, v3, :cond_0

    .line 77
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public addMostRecentPageReadWaypointAcceptedMetric()V
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->counters:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "MostRecentPageReadWaypointAccepted"

    .line 341
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->counters:Ljava/util/Map;

    .line 342
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v3, v2

    .line 341
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 340
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public addWaypoint(ILjava/lang/String;Landroid/content/Context;)V
    .locals 1

    if-gez p1, :cond_0

    .line 107
    sget-object p1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->TAG:Ljava/lang/String;

    const-string p2, "Tried adding negative position as waypoint via addWaypoint(int)"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 114
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    const/4 p3, 0x1

    if-eq p1, p2, :cond_1

    .line 115
    iget-object p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_1

    return-void

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_2

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->isMostRecentPageReadWaypointSecondMostRecent:Z

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->purgeExtraneousWaypoints()Z

    .line 126
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->publishEvent()V

    .line 127
    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->totalWaypointsCreated:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->totalWaypointsCreated:I

    return-void
.end method

.method public addWaypoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 163
    sget-object p1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->TAG:Ljava/lang/String;

    const-string v0, "Tried to add a list of waypoints that was null"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 168
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :cond_2
    :goto_1
    sget-object v1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->TAG:Ljava/lang/String;

    const-string v2, "Tried adding negative or null position as waypoint via addWaypoints(List<Integer>)"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 179
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->purgeExtraneousWaypoints()Z

    .line 180
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->publishEvent()V

    :cond_4
    return-void
.end method

.method public clear()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-lez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->publishEvent()V

    :cond_0
    return-void
.end method

.method public clearMostRecentPageReadWaypoint()V
    .locals 3

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->isMostRecentPageReadWaypointSecondMostRecent:Z

    .line 322
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->counters:Ljava/util/Map;

    const-string v2, "MostRecentPageReadWaypointCleared"

    .line 323
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->counters:Ljava/util/Map;

    .line 324
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->mostRecentPageReadWaypoint:Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 327
    iput-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->mostRecentPageReadWaypoint:Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

    .line 328
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->publishEvent()V

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->counters:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getFirstNonMRPRWaypoint()I
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getMostRecentPageReadWaypoint()Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->isMostRecentPageReadWaypointSecondMostRecent:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getMostRecentPageReadWaypoint()Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v0

    return v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMRPRPosition()I
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMostRecentPageReadWaypoint()Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->mostRecentPageReadWaypoint:Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

    return-object v0
.end method

.method public getMostRecentPageReadWaypointPositionInRange(II)I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->mostRecentPageReadWaypoint:Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->isValidWaypointPosition(III)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->mostRecentPageReadWaypoint:Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getWaypoint(I)Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    .line 230
    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWaypointInRange(II)I
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    .line 215
    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v2

    invoke-direct {p0, v2, p1, p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->isValidWaypointPosition(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getWaypoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWaypointsAsJson()Ljava/lang/String;
    .locals 2

    .line 365
    invoke-virtual {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->removeExtraWaypointPositions()V

    .line 366
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-static {v1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->asIntegers(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 367
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWaypointsIncludingMostRecentPageReadWaypoint()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 302
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->mostRecentPageReadWaypoint:Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->mostRecentPageReadWaypoint:Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeExtraWaypointPositions()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->purgeExtraneousWaypoints()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->publishEvent()V

    :cond_0
    return-void
.end method

.method public sendWaypointsMetrics()V
    .locals 9

    .line 374
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->counters:Ljava/util/Map;

    iget v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->totalWaypointsCreated:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Waypoint_Count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->counters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Metric data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    .line 383
    iget-object v5, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->counters:Ljava/util/Map;

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v4, "WAYPOINT_COUNT"

    const-string v8, "waypoints"

    move-object v6, v7

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public setMostRecentPageReadWaypoint(ILjava/lang/String;Landroid/content/Context;)V
    .locals 1

    if-gez p1, :cond_0

    .line 140
    sget-object p1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->TAG:Ljava/lang/String;

    const-string p2, "Tried adding negative position as waypoint via addMRPRServerWaypoint"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->isMostRecentPageReadWaypointSecondMostRecent:Z

    .line 144
    new-instance v0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->mostRecentPageReadWaypoint:Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

    .line 145
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->publishEvent()V

    return-void
.end method

.method public updateMRPRPosition(ILjava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 272
    new-instance v1, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 273
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->publishEvent()V

    goto :goto_0

    .line 278
    :cond_0
    new-instance v0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 279
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->m_waypointsPositions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->publishEvent()V

    :cond_1
    :goto_0
    return-void
.end method
