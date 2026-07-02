.class final Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;
.super Landroid/view/View;
.source "MrprBottomSheetFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final circle:Landroid/graphics/Path;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 423
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->paint:Landroid/graphics/Paint;

    .line 424
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->circle:Landroid/graphics/Path;

    .line 427
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 428
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$color;->mrpr_bottom_sheet_waypoint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->circle:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final setColor(I)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final updatePosition(FFF)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->circle:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 438
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->circle:Landroid/graphics/Path;

    add-float/2addr p1, p3

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method
