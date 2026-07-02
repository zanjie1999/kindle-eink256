.class public final Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerBackground;
.super Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;
.source "VerticalSeekBarLayerBackground.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;-><init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V
    .locals 0

    const-string p6, "canvas"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "colorMode"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "posToX"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x1

    .line 16
    invoke-virtual {p0, p2, p6}, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->setPaintColor(Lcom/amazon/kindle/krx/ui/ColorMode;Z)V

    .line 17
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->paint:Landroid/graphics/Paint;

    const-string p6, "paint"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->getAlpha()I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->r:Landroid/graphics/RectF;

    iput p4, p2, Landroid/graphics/RectF;->left:F

    .line 22
    iput p5, p2, Landroid/graphics/RectF;->right:F

    const/4 p6, 0x0

    .line 23
    invoke-interface {p3, p6}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p6

    iput p6, p2, Landroid/graphics/RectF;->top:F

    .line 24
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->r:Landroid/graphics/RectF;

    const p6, 0x7f7fffff    # Float.MAX_VALUE

    invoke-interface {p3, p6}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p3

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p5, p4

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p5, p2

    .line 27
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->r:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5, p5, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
