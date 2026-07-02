.class public Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;
.super Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;
.source "SeekBarLayerProgress.java"


# instance fields
.field private final colorBlack:I

.field private final colorGreen:I

.field private final colorSepia:I

.field private final colorWhite:I

.field private final context:Landroid/content/Context;

.field private final emptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final paintBarProgress:Landroid/graphics/Paint;

.field protected final rect:Landroid/graphics/RectF;

.field protected final seekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SeekBar;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->context:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->paintBarProgress:Landroid/graphics/Paint;

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->emptyList:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->seekBar:Landroid/widget/SeekBar;

    .line 42
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->rect:Landroid/graphics/RectF;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 45
    sget p2, Lcom/amazon/kindle/krl/R$color;->white_mode_seekbar_progress_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->colorWhite:I

    .line 46
    sget p2, Lcom/amazon/kindle/krl/R$color;->black_mode_seekbar_progress_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->colorBlack:I

    .line 47
    sget p2, Lcom/amazon/kindle/krl/R$color;->sepia_mode_seekbar_progress_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->colorSepia:I

    .line 48
    sget p2, Lcom/amazon/kindle/krl/R$color;->green_mode_seekbar_progress_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->colorGreen:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V
    .locals 1

    const/4 p6, 0x1

    if-ne p8, p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->setPaintColor(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    const/4 p2, 0x0

    .line 57
    invoke-interface {p3, p2}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p2

    const/high16 p7, 0x4f000000

    .line 58
    invoke-interface {p3, p7}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p7

    .line 59
    iget-object p8, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p8}, Landroid/widget/SeekBar;->getProgress()I

    move-result p8

    int-to-float p8, p8

    invoke-interface {p3, p8}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p3

    .line 62
    iget-object p8, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->rect:Landroid/graphics/RectF;

    iput p4, p8, Landroid/graphics/RectF;->top:F

    .line 63
    iput p5, p8, Landroid/graphics/RectF;->bottom:F

    if-eqz p6, :cond_1

    .line 66
    iput p7, p8, Landroid/graphics/RectF;->left:F

    .line 67
    iput p2, p8, Landroid/graphics/RectF;->right:F

    move v0, p3

    move p3, p2

    move p2, v0

    goto :goto_1

    .line 72
    :cond_1
    iput p2, p8, Landroid/graphics/RectF;->left:F

    .line 73
    iput p7, p8, Landroid/graphics/RectF;->right:F

    :goto_1
    sub-float p6, p5, p4

    const/high16 p7, 0x40000000    # 2.0f

    div-float/2addr p6, p7

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 82
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->paintBarProgress:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p6, p6, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->emptyList:Ljava/util/List;

    return-object v0
.end method

.method public onSnapStart(I)V
    .locals 0

    return-void
.end method

.method protected setPaintColor(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 97
    sget-object v0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 110
    iget p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->colorWhite:I

    goto :goto_0

    .line 106
    :cond_0
    iget p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->colorGreen:I

    goto :goto_0

    .line 103
    :cond_1
    iget p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->colorSepia:I

    goto :goto_0

    .line 100
    :cond_2
    iget p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->colorBlack:I

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;->paintBarProgress:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
