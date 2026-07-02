.class public Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;
.super Ljava/lang/Object;
.source "SeekBarLayerWaypoints.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;
.implements Lcom/amazon/kindle/seekbar/ISeekBarThumbSnapEffectLayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$XPosComparator;,
        Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;,
        Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WAYPOINT_USED_METRIC_LABEL:Ljava/lang/String; = "WAYPOINT USED"


# instance fields
.field private currentColorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

.field private labelCache:Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;

.field private mapperHashCodeCache:I

.field private final model:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

.field private final mostRecentReadPageTextPaint:Landroid/graphics/Paint;

.field private final showWaypointLabels:Z

.field private snappedPosition:I

.field private final textBounds:Landroid/graphics/Rect;

.field private final textColorDark:I

.field private final textColorLight:I

.field private final textHeight:I

.field private final textPaint:Landroid/graphics/Paint;

.field private final waypointLabelSpacing:I

.field private final waypointTextSpace:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;Z)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->labelCache:Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->mapperHashCodeCache:I

    .line 60
    iput-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->currentColorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->snappedPosition:I

    .line 71
    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->model:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    .line 72
    iput-boolean p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->showWaypointLabels:Z

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 76
    sget p2, Lcom/amazon/kindle/krl/R$dimen;->location_seekbar_waypoint_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textHeight:I

    .line 77
    sget p2, Lcom/amazon/kindle/krl/R$color;->reader_chrome_text_light:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textColorLight:I

    .line 78
    sget p2, Lcom/amazon/kindle/krl/R$color;->reader_chrome_text_dark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textColorDark:I

    .line 79
    sget p2, Lcom/amazon/kindle/krl/R$dimen;->nln_location_seeker_text_space:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->waypointTextSpace:I

    .line 80
    sget p2, Lcom/amazon/kindle/krl/R$dimen;->location_seekbar_waypoint_label_min_x_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->waypointLabelSpacing:I

    .line 82
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textPaint:Landroid/graphics/Paint;

    .line 83
    invoke-direct {p0, p1}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->setTextPaintProperties(Landroid/graphics/Paint;)V

    .line 85
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textBounds:Landroid/graphics/Rect;

    .line 87
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 89
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->mostRecentReadPageTextPaint:Landroid/graphics/Paint;

    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->setTextPaintProperties(Landroid/graphics/Paint;)V

    return-void
.end method

.method private computeCircleWaypointDiameter(FF)F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float p2, p2, v0

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p2, p1

    return p2
.end method

.method private drawWaypoint(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFLjava/util/List;Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/amazon/kindle/krx/ui/seekbar/IMapper;",
            "FF",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;",
            ">;",
            "Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            ")V"
        }
    .end annotation

    .line 288
    invoke-virtual {p6}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v0

    int-to-float v0, v0

    .line 289
    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result v1

    .line 295
    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->mapNoClamp(F)F

    move-result p2

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v2, p2

    const/4 p2, 0x0

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

    .line 299
    :cond_1
    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p6, v1, p3, p4}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->setCircleBounds(FFF)V

    .line 301
    invoke-virtual {p6, p1, p7, p2}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Z)V

    .line 302
    invoke-direct {p0, p6}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->isMostRecentPageReadWaypoint(Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 303
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->mostRecentReadPageTextPaint:Landroid/graphics/Paint;

    check-cast p6, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

    invoke-virtual {p6}, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    return-void
.end method

.method private getLabelForWaypoint(Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;)Ljava/lang/String;
    .locals 1

    .line 312
    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getLabel()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getPreferredTypefaceForWaypoints()Landroid/graphics/Typeface;
    .locals 4

    const-string v0, "SeekBarLayerWaypoints.getPreferredTypefaceForWaypoints"

    const/4 v1, 0x1

    .line 109
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 111
    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBERLIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    .line 113
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 116
    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->SANS:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    .line 120
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v1
.end method

.method private isMostRecentPageReadWaypoint(Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;)Z
    .locals 0

    .line 308
    instance-of p1, p1, Lcom/amazon/kindle/readingprogress/waypoints/MostRecentPageReadWaypoint;

    return p1
.end method

.method private measureLabels(Ljava/util/List;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FF)Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;",
            ">;",
            "Lcom/amazon/kindle/krx/ui/seekbar/IMapper;",
            "FF)",
            "Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    .line 207
    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {p2, v3}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result v3

    .line 209
    iget-boolean v4, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->showWaypointLabels:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->getLabelForWaypoint(Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_0

    .line 211
    new-instance v5, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;

    invoke-direct {v5, v2}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;-><init>(Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$1;)V

    .line 212
    iput-object v4, v5, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->text:Ljava/lang/String;

    .line 213
    iput v3, v5, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    .line 214
    iput p3, v5, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->y:F

    .line 216
    invoke-direct {p0, v1}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->isMostRecentPageReadWaypoint(Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 217
    iput-boolean v1, v5, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->isMrprServerLabel:Z

    .line 219
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_3
    new-instance p1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$XPosComparator;

    invoke-direct {p1, v2}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$XPosComparator;-><init>(Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$1;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    new-instance p1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;

    invoke-direct {p1, v2}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;-><init>(Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$1;)V

    .line 230
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;->aboveSeekbar:Ljava/util/List;

    .line 231
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;->belowSeekbar:Ljava/util/List;

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 232
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    .line 233
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;

    .line 234
    rem-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_4

    .line 236
    iget v2, v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->y:F

    iget v3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->waypointTextSpace:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, p4

    iput v2, v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->y:F

    .line 237
    iget-object v2, p1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;->aboveSeekbar:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 240
    :cond_4
    iget-object v2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textPaint:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 241
    iget-object v2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 242
    iget v3, v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->y:F

    iget v4, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->waypointTextSpace:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, p4

    int-to-float v2, v2

    add-float/2addr v3, v2

    iput v3, v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->y:F

    .line 243
    iget-object v2, p1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;->belowSeekbar:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 247
    :cond_5
    iget-object p2, p1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;->aboveSeekbar:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->reconcileHorizontalSpacing(Ljava/util/List;)V

    .line 248
    iget-object p2, p1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;->belowSeekbar:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->reconcileHorizontalSpacing(Ljava/util/List;)V

    return-object p1
.end method

.method private reconcileHorizontalSpacing(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 175
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 178
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;

    .line 179
    iget-object v2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textPaint:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 180
    iget v3, v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iput v3, v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    const/4 v1, 0x1

    .line 185
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 186
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;

    add-int/lit8 v3, v1, -0x1

    .line 187
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;

    .line 188
    iget-object v5, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textPaint:Landroid/graphics/Paint;

    iget-object v6, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 189
    iget-object v6, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textPaint:Landroid/graphics/Paint;

    iget-object v7, v4, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    .line 190
    iget v7, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v7, v5

    iput v7, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    .line 191
    iget v4, v4, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    int-to-float v5, v6

    add-float/2addr v5, v4

    iget v8, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->waypointLabelSpacing:I

    int-to-float v9, v8

    add-float/2addr v5, v9

    cmpg-float v5, v7, v5

    if-gez v5, :cond_2

    add-int/2addr v6, v8

    sub-float/2addr v7, v4

    float-to-int v4, v7

    sub-int/2addr v6, v4

    .line 194
    rem-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 195
    :cond_1
    iget v4, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    div-int/lit8 v6, v6, 0x2

    int-to-float v5, v6

    add-float/2addr v4, v5

    iput v4, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    const/4 v2, 0x0

    :goto_1
    if-gt v2, v3, :cond_2

    .line 197
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;

    .line 198
    iget v6, v4, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    sub-float/2addr v6, v5

    iput v6, v4, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private setTextPaintProperties(Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iget v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->getPreferredTypefaceForWaypoints()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private updateColor(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->currentColorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p1, v0, :cond_0

    return-void

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->currentColorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textColorDark:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textColorLight:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V
    .locals 15

    move-object v9, p0

    move-object/from16 v0, p1

    monitor-enter p0

    move-object/from16 v10, p2

    .line 255
    :try_start_0
    invoke-direct {p0, v10}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->updateColor(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    add-float v1, p5, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    sub-float v1, p5, p4

    sub-float v3, p7, p6

    .line 258
    invoke-direct {p0, v1, v3}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->computeCircleWaypointDiameter(FF)F

    move-result v1

    div-float v12, v1, v2

    .line 260
    iget-object v1, v9, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->model:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypointsIncludingMostRecentPageReadWaypoint()Ljava/util/List;

    move-result-object v1

    .line 261
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v4, v11

    move v5, v12

    move-object v6, v13

    move-object/from16 v8, p2

    .line 266
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->drawWaypoint(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFLjava/util/List;Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v1, v9, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->labelCache:Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;

    if-eqz v1, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, v9, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->mapperHashCodeCache:I

    if-eq v1, v2, :cond_3

    :cond_2
    move-object/from16 v1, p3

    .line 271
    invoke-direct {p0, v13, v1, v11, v12}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->measureLabels(Ljava/util/List;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FF)Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;

    move-result-object v2

    iput-object v2, v9, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->labelCache:Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;

    .line 272
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v9, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->mapperHashCodeCache:I

    .line 275
    :cond_3
    iget-object v1, v9, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->labelCache:Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;

    iget-object v1, v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;->aboveSeekbar:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;

    .line 276
    iget-object v3, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->text:Ljava/lang/String;

    iget v4, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    iget v5, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->y:F

    iget-boolean v2, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->isMrprServerLabel:Z

    if-eqz v2, :cond_4

    iget-object v2, v9, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->mostRecentReadPageTextPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_4
    iget-object v2, v9, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textPaint:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 279
    :cond_5
    iget-object v1, v9, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->labelCache:Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;

    iget-object v1, v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;->belowSeekbar:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;

    .line 280
    iget-object v3, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->text:Ljava/lang/String;

    iget v4, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->x:F

    iget v5, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->y:F

    iget-boolean v2, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$Label;->isMrprServerLabel:Z

    if-eqz v2, :cond_6

    iget-object v2, v9, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->mostRecentReadPageTextPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_6
    iget-object v2, v9, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->textPaint:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 283
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public drawSnapEffectOnThumb(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;FFFFF)V
    .locals 5

    .line 336
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->isSnapped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->model:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    iget v1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->snappedPosition:I

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypoint(I)Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    move-result-object v0

    .line 338
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "WAYPOINT USED"

    const-string v4, "Waypoint Used"

    invoke-virtual {v1, v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    add-float/2addr p5, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p5, p4

    sub-float/2addr p7, p6

    const/high16 p6, 0x40800000    # 4.0f

    div-float/2addr p7, p6

    sub-float/2addr p7, p4

    .line 341
    invoke-virtual {v0, p3, p5, p7}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->setCircleBounds(FFF)V

    const/4 p3, 0x0

    .line 342
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Z)V

    :cond_0
    return-void
.end method

.method public getCandidates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 327
    sget-object v0, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->Companion:Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->model:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypointsIncludingMostRecentPageReadWaypoint()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint$Companion;->asIntegers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isSnapped()Z
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->model:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypoints()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->snappedPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onSnapStart(I)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->snappedPosition:I

    return-void
.end method

.method public declared-synchronized onWaypointsModelEvent(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->model:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;->getPublisher()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->model:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 349
    iput-object p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;->labelCache:Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints$MeasuredLabelCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
