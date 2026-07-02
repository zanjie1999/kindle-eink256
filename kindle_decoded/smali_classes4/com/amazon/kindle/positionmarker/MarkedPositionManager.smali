.class public Lcom/amazon/kindle/positionmarker/MarkedPositionManager;
.super Ljava/lang/Object;
.source "MarkedPositionManager.java"

# interfaces
.implements Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final markerToPosMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/ui/IPositionMarker;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final posToMarkersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/IPositionMarker;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->posToMarkersMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->markerToPosMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->listeners:Ljava/util/List;

    return-void
.end method

.method private addMarkerForPos(Lcom/amazon/kindle/krx/ui/IPositionMarker;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->posToMarkersMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    iget-object v1, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->posToMarkersMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private notifyListeners(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;

    .line 152
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;->onMarkedPositionsChanged(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeMarkerForPos(Lcom/amazon/kindle/krx/ui/IPositionMarker;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->posToMarkersMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->posToMarkersMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addMarkedPositionsChangedListener(Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;)V
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMarkerDrawablesWithinRange(Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;Landroid/content/Context;Lcom/amazon/kindle/krx/reader/IPositionRange;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/krx/reader/IPositionRange;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->posToMarkersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->posToMarkersMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 41
    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/ui/IPositionMarker;

    if-nez v0, :cond_2

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    :cond_2
    invoke-interface {v3, p2, p1}, Lcom/amazon/kindle/krx/ui/IPositionMarker;->getMarkerDrawableForMarkerLocation(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 50
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 57
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyPositionMarkerUpdated(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
    .locals 3

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->markerToPosMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 94
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->markerToPosMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/IPosition;

    .line 98
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IPositionMarker;->getMarkedPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->markerToPosMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->removeMarkerForPos(Lcom/amazon/kindle/krx/ui/IPositionMarker;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 106
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 110
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->addMarkerForPos(Lcom/amazon/kindle/krx/ui/IPositionMarker;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 111
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 114
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->notifyListeners(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerPositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
    .locals 2

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->markerToPosMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->notifyPositionMarkerUpdated(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IPositionMarker;->getMarkedPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->markerToPosMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->addMarkerForPos(Lcom/amazon/kindle/krx/ui/IPositionMarker;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 74
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->notifyListeners(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMarkedPositionsChangedListener(Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;)V
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removePositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->markerToPosMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/IPosition;

    .line 82
    iget-object v1, p0, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->markerToPosMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->removeMarkerForPos(Lcom/amazon/kindle/krx/ui/IPositionMarker;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 86
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/positionmarker/MarkedPositionManager;->notifyListeners(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
