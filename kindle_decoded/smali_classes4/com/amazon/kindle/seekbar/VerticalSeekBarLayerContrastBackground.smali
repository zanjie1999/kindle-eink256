.class public final Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;
.super Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;
.source "VerticalSeekBarLayerContrastBackground.kt"


# instance fields
.field private final border:I

.field private final contrastBlack:I

.field private final contrastGreen:I

.field private final contrastSepia:I

.field private final contrastWhite:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;-><init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V

    .line 16
    sget p2, Lcom/amazon/kindle/krl/R$color;->white_mode_background:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->contrastWhite:I

    .line 17
    sget p2, Lcom/amazon/kindle/krl/R$color;->black_mode_background:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->contrastBlack:I

    .line 18
    sget p2, Lcom/amazon/kindle/krl/R$color;->sepia_mode_background:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->contrastSepia:I

    .line 19
    sget p2, Lcom/amazon/kindle/krl/R$color;->green_mode_background:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->contrastGreen:I

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->fast_navigation_view_contrast_border:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->border:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V
    .locals 1

    const-string p6, "canvas"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "colorMode"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "posToX"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object p6, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->paint:Landroid/graphics/Paint;

    const-string p7, "paint"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p8, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p8, p2

    const/4 p8, 0x1

    const/4 v0, 0x2

    if-eq p2, p8, :cond_3

    if-eq p2, v0, :cond_2

    const/4 p8, 0x3

    if-eq p2, p8, :cond_1

    const/4 p8, 0x4

    if-eq p2, p8, :cond_0

    .line 30
    iget p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->contrastWhite:I

    goto :goto_0

    .line 29
    :cond_0
    iget p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->contrastGreen:I

    goto :goto_0

    .line 28
    :cond_1
    iget p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->contrastSepia:I

    goto :goto_0

    .line 27
    :cond_2
    iget p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->contrastBlack:I

    goto :goto_0

    .line 26
    :cond_3
    iget p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->contrastWhite:I

    .line 25
    :goto_0
    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->paint:Landroid/graphics/Paint;

    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->getAlpha()I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->r:Landroid/graphics/RectF;

    iget p6, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->border:I

    int-to-float p7, p6

    sub-float p7, p4, p7

    iput p7, p2, Landroid/graphics/RectF;->left:F

    int-to-float p6, p6

    add-float/2addr p6, p5

    .line 37
    iput p6, p2, Landroid/graphics/RectF;->right:F

    const/4 p6, 0x0

    .line 38
    invoke-interface {p3, p6}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p6

    iget p7, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->border:I

    int-to-float p7, p7

    sub-float/2addr p6, p7

    iput p6, p2, Landroid/graphics/RectF;->top:F

    .line 39
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->r:Landroid/graphics/RectF;

    const p6, 0x7f7fffff    # Float.MAX_VALUE

    invoke-interface {p3, p6}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p3

    iget p6, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;->border:I

    int-to-float p6, p6

    add-float/2addr p3, p6

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    int-to-float p2, v0

    sub-float/2addr p5, p4

    mul-float p2, p2, p5

    .line 42
    iget-object p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->r:Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p2, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
