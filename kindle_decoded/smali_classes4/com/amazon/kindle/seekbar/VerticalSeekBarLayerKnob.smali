.class public final Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;
.super Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;
.source "VerticalSeekBarLayerKnob.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private knobBitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private position:F

.field private final seekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SeekBar;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seekBar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->seekBar:Landroid/widget/SeekBar;

    .line 30
    invoke-direct {p0, p3}, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->getBitmapAccordingToColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->knobBitmap:Landroid/graphics/Bitmap;

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->position:F

    return-void
.end method

.method private final getBitmapAccordingToColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/graphics/Bitmap;
    .locals 1

    .line 59
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->vertical_seekbar_knob_dark:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "BitmapFactory.decodeReso\u2026rtical_seekbar_knob_dark)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->vertical_seekbar_knob:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "BitmapFactory.decodeReso\u2026le.vertical_seekbar_knob)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V
    .locals 0

    const-string p4, "canvas"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "colorMode"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "posToX"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->seekBar:Landroid/widget/SeekBar;

    if-eqz p2, :cond_0

    check-cast p2, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->getVisualProgress()I

    move-result p2

    int-to-float p2, p2

    invoke-interface {p3, p2}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p2

    sub-float/2addr p7, p6

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float/2addr p7, p3

    sub-float p3, p2, p7

    .line 44
    iput p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->position:F

    .line 45
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->getAlpha()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->knobBitmap:Landroid/graphics/Bitmap;

    iget-object p4, p0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p6, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.amazon.kcp.reader.ui.ReaderVerticalSeekBar"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "Collections.emptyList<Int>()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onSnapStart(I)V
    .locals 0

    return-void
.end method
