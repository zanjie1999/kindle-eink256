.class public final Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerWaypoints;
.super Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;
.source "VerticalSeekBarLayerWaypoints.kt"


# instance fields
.field private final waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;)V
    .locals 1

    const-string v0, "waypointsModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerWaypoints;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    return-void
.end method

.method private final calculateWaypointRadius(F)F
    .locals 1

    const v0, 0x3fcccccd    # 1.6f

    mul-float p1, p1, v0

    return p1
.end method

.method private final drawWaypoint(Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;Landroid/graphics/Canvas;FFLcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 6

    .line 40
    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v0

    int-to-float v0, v0

    .line 41
    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result v1

    .line 44
    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->mapNoClamp(F)F

    move-result p2

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v2, p2

    const/4 p2, 0x1

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 48
    :cond_1
    invoke-virtual {p1, p4, v1, p5}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->setCircleBounds(FFF)V

    .line 49
    invoke-virtual {p1, p3, p6, p2}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V
    .locals 7

    const-string p6, "canvas"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "colorMode"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "posToX"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-float p6, p5, p4

    .line 26
    invoke-direct {p0, p6}, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerWaypoints;->calculateWaypointRadius(F)F

    move-result p6

    .line 27
    iget-object p7, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerWaypoints;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {p7}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypointsIncludingMostRecentPageReadWaypoint()Ljava/util/List;

    move-result-object p7

    const-string p8, "this.waypointsModel.wayp\u2026ostRecentPageReadWaypoint"

    invoke-static {p7, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-float/2addr p5, p4

    const/4 p4, 0x2

    int-to-float p4, p4

    div-float/2addr p5, p4

    .line 30
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    move-object v1, p7

    check-cast v1, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p5

    move v5, p6

    move-object v6, p2

    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerWaypoints;->drawWaypoint(Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;Landroid/graphics/Canvas;FFLcom/amazon/kindle/krx/ui/ColorMode;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCandidates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->Companion:Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerWaypoints;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypointsIncludingMostRecentPageReadWaypoint()Ljava/util/List;

    move-result-object v1

    const-string v2, "this.waypointsModel.wayp\u2026ostRecentPageReadWaypoint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$Companion;->asIntegers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onSnapStart(I)V
    .locals 0

    return-void
.end method
