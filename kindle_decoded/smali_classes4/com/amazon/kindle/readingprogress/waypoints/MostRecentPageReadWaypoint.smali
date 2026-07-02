.class public final Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;
.super Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;
.source "Waypoint.kt"


# instance fields
.field private final colorBlackSeekBarProgress:I

.field private final colorGreenSeekBarProgress:I

.field private final colorSepiaSeekBarProgress:I

.field private final colorWhiteSeekBarProgress:I

.field private final colorWhiteWaypoint:I

.field private final lineWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 102
    sget p1, Lcom/amazon/kindle/krl/R$color;->white_mode_seekbar_progress_nln:I

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorWhiteSeekBarProgress:I

    .line 103
    sget p1, Lcom/amazon/kindle/krl/R$color;->black_mode_seekbar_progress_nln:I

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorBlackSeekBarProgress:I

    .line 104
    sget p1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_seekbar_progress_nln:I

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorSepiaSeekBarProgress:I

    .line 105
    sget p1, Lcom/amazon/kindle/krl/R$color;->green_mode_seekbar_progress_nln:I

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorGreenSeekBarProgress:I

    .line 106
    sget p1, Lcom/amazon/kindle/krl/R$color;->waypoint_mrpr_white:I

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorWhiteWaypoint:I

    .line 107
    new-instance p1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    iget p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorWhiteSeekBarProgress:I

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-direct {p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;-><init>(ILandroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->lineWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-super {p0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->draw(Landroid/graphics/Canvas;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->lineWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Z)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Z)V

    .line 130
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->setColor(Lcom/amazon/kindle/krx/ui/ColorMode;Z)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getColor()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->lineWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->getColor()I

    move-result v0

    return v0
.end method

.method public setCircleBounds(FFF)V
    .locals 1

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->setCircleBounds(FFF)V

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->lineWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->setCircleBounds(FFF)V

    return-void
.end method

.method public setColor(Lcom/amazon/kindle/krx/ui/ColorMode;Z)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    sget-object p2, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    .line 115
    :goto_0
    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorWhiteSeekBarProgress:I

    goto :goto_1

    .line 114
    :cond_1
    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorWhiteSeekBarProgress:I

    goto :goto_1

    .line 113
    :cond_2
    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorGreenSeekBarProgress:I

    goto :goto_1

    .line 112
    :cond_3
    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorSepiaSeekBarProgress:I

    goto :goto_1

    .line 111
    :cond_4
    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorBlackSeekBarProgress:I

    .line 118
    :goto_1
    iget-object p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->lineWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->setColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getFillWaypointDrawable()Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    move-result-object p1

    iget p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->colorWhiteWaypoint:I

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->setColor(I)V

    return-void
.end method
