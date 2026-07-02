.class public Lcom/amazon/kindle/util/ReadingModePositionsFactory;
.super Ljava/lang/Object;
.source "ReadingModePositionsFactory.java"


# instance fields
.field private m_krifBook:Lcom/amazon/krf/platform/KRFBook;

.field private retainedFocusPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/amazon/krf/platform/ViewSettings$ReadingMode;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private retainedWayPointsPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/amazon/krf/platform/ViewSettings$ReadingMode;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private viewNavigationRefreshRequired:Z


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/KRFBook;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedFocusPositionMap:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedWayPointsPositionMap:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    return-void
.end method

.method private createPositionObject(I)Lcom/amazon/krf/platform/Position;
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 189
    invoke-interface {v0, v1, v2}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getEquivalentPositionForReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Ljava/lang/Integer;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0, p1, p2}, Lcom/amazon/krf/platform/KRFBook;->getEquivalentPositionInReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public convertToEquivalentPositionForReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;
    .locals 8

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedFocusPositionMap:Ljava/util/Map;

    invoke-interface {p4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    iget-object p3, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedFocusPositionMap:Ljava/util/Map;

    invoke-interface {p4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->getEquivalentPositionForReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Ljava/lang/Integer;

    move-result-object p3

    .line 72
    iget-object p1, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedFocusPositionMap:Ljava/util/Map;

    invoke-interface {p4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedFocusPositionMap:Ljava/util/Map;

    invoke-interface {p4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->getEquivalentPositionForReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Ljava/lang/Integer;

    move-result-object p1

    .line 77
    new-instance v7, Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;-><init>(Lcom/amazon/kindle/util/ReadingModePositionsFactory;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Ljava/lang/Integer;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/kindle/krx/reader/IPosition;)V

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedFocusPositionMap:Ljava/util/Map;

    .line 85
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 86
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    return-object p1
.end method

.method public convertWayPointsForTargetReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/ViewSettings$ReadingMode;",
            "Lcom/amazon/krf/platform/ViewSettings$ReadingMode;",
            "Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_4

    .line 123
    invoke-virtual {p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypoints()Ljava/util/List;

    move-result-object p3

    .line 124
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p3, :cond_3

    .line 129
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedWayPointsPositionMap:Ljava/util/Map;

    const/4 v2, 0x1

    .line 131
    iput-boolean v2, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->viewNavigationRefreshRequired:Z

    .line 132
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    .line 134
    invoke-virtual {v8}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedWayPointsPositionMap:Ljava/util/Map;

    .line 138
    invoke-virtual {v8}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 140
    invoke-virtual {v8}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v2

    .line 141
    invoke-direct {p0, v2, p1}, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->getEquivalentPositionForReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Ljava/lang/Integer;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedWayPointsPositionMap:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedWayPointsPositionMap:Ljava/util/Map;

    .line 146
    invoke-virtual {v8}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 145
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v8}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v2

    .line 149
    invoke-direct {p0, v2, p1}, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->getEquivalentPositionForReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Ljava/lang/Integer;

    move-result-object v2

    .line 150
    new-instance v9, Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, v2

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;-><init>(Lcom/amazon/kindle/util/ReadingModePositionsFactory;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Ljava/lang/Integer;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;)V

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 156
    iput-boolean v2, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->viewNavigationRefreshRequired:Z

    goto/16 :goto_0

    .line 159
    :cond_2
    iput-object v0, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedWayPointsPositionMap:Ljava/util/Map;

    .line 162
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget-object p2, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->retainedWayPointsPositionMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public isViewNavigationRefreshRequired()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->viewNavigationRefreshRequired:Z

    return v0
.end method
