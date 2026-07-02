.class public final Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Waypoint.kt"


# instance fields
.field private final circle:Landroid/graphics/Path;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(ILandroid/graphics/Paint$Style;)V
    .locals 2

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->paint:Landroid/graphics/Paint;

    .line 151
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->circle:Landroid/graphics/Path;

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->circle:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getColor()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setCircleBounds(FFF)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->circle:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 191
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->circle:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public final setColor(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
