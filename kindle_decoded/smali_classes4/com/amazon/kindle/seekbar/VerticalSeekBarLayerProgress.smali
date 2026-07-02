.class public final Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerProgress;
.super Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;
.source "VerticalSeekBarLayerProgress.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;)V

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

    .line 18
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->setPaintColor(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 19
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->paintBarProgress:Landroid/graphics/Paint;

    const-string p6, "paintBarProgress"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->getAlpha()I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 23
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->rect:Landroid/graphics/RectF;

    const/4 p6, 0x0

    invoke-interface {p3, p6}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p6

    iput p6, p2, Landroid/graphics/RectF;->top:F

    .line 24
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->rect:Landroid/graphics/RectF;

    iget-object p6, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->seekBar:Landroid/widget/SeekBar;

    if-eqz p6, :cond_0

    check-cast p6, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    invoke-virtual {p6}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->getVisualProgress()I

    move-result p6

    int-to-float p6, p6

    invoke-interface {p3, p6}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p3

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    .line 25
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->rect:Landroid/graphics/RectF;

    iput p4, p2, Landroid/graphics/RectF;->left:F

    .line 26
    iput p5, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p5, p4

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float/2addr p5, p3

    .line 29
    iget-object p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->paintBarProgress:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5, p5, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.amazon.kcp.reader.ui.ReaderVerticalSeekBar"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
