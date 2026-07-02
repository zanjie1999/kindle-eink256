.class public Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;
.super Ljava/lang/Object;
.source "Waypoint.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$Companion;


# instance fields
.field private final colorBlackHorizontal:I

.field private final colorBlackVertical:I

.field private final colorGreen:I

.field private final colorSepia:I

.field private final colorWhite:I

.field private final fillWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

.field private final label:Ljava/lang/String;

.field private final position:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->Companion:Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->position:I

    iput-object p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->label:Ljava/lang/String;

    .line 20
    sget p1, Lcom/amazon/kindle/krl/R$color;->white_mode_seekbar_waypoint_nln:I

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorWhite:I

    .line 21
    sget p1, Lcom/amazon/kindle/krl/R$color;->black_mode_seekbar_waypoint_nln:I

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorBlackHorizontal:I

    .line 22
    sget p1, Lcom/amazon/kindle/krl/R$color;->black_mode_seekbar_waypoint_vertical:I

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorBlackVertical:I

    .line 23
    sget p1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_seekbar_waypoint_nln:I

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorSepia:I

    .line 24
    sget p1, Lcom/amazon/kindle/krl/R$color;->green_mode_seekbar_waypoint_nln:I

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorGreen:I

    .line 25
    new-instance p1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    iget p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorWhite:I

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-direct {p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;-><init>(ILandroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->fillWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    return-void
.end method

.method public static final asIntegers(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->Companion:Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$Companion;->asIntegers(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->fillWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Z)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->setColor(Lcom/amazon/kindle/krx/ui/ColorMode;Z)V

    .line 73
    iget-object p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->fillWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 29
    instance-of v0, p1, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->position:I

    check-cast p1, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    iget p1, p1, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->position:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final getFillWaypointDrawable()Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->fillWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->position:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->position:I

    return v0
.end method

.method public setCircleBounds(FFF)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->fillWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->setCircleBounds(FFF)V

    return-void
.end method

.method public setColor(Lcom/amazon/kindle/krx/ui/ColorMode;Z)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    .line 48
    :goto_0
    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorWhite:I

    goto :goto_1

    .line 47
    :cond_1
    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorWhite:I

    goto :goto_1

    .line 46
    :cond_2
    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorGreen:I

    goto :goto_1

    .line 45
    :cond_3
    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorSepia:I

    goto :goto_1

    .line 44
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorBlackVertical:I

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->colorBlackHorizontal:I

    .line 50
    :goto_1
    iget-object p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->fillWaypointDrawable:Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointDrawable;->setColor(I)V

    return-void
.end method
