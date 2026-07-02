.class public Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;
.super Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;
.source "SeekBarLayerBackgroundForThumbnailScrubber.java"


# instance fields
.field private final colorBlackHorizontal:I

.field private final colorBlackVertical:I

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

.field protected final paint:Landroid/graphics/Paint;

.field protected final r:Landroid/graphics/RectF;

.field private final sb:Lcom/amazon/kindle/seekbar/LayeredSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->sb:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    .line 40
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->emptyList:Ljava/util/List;

    .line 43
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->r:Landroid/graphics/RectF;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 45
    sget p2, Lcom/amazon/kindle/krl/R$color;->white_mode_seekbar_background_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->colorWhite:I

    .line 46
    sget p2, Lcom/amazon/kindle/krl/R$color;->black_mode_seekbar_background_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->colorBlackHorizontal:I

    .line 47
    sget p2, Lcom/amazon/kindle/krl/R$color;->black_mode_seekbar_background_vertical_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->colorBlackVertical:I

    .line 48
    sget p2, Lcom/amazon/kindle/krl/R$color;->sepia_mode_seekbar_background_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->colorSepia:I

    .line 49
    sget p2, Lcom/amazon/kindle/krl/R$color;->green_mode_seekbar_background_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->colorGreen:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V
    .locals 0

    const/4 p6, 0x1

    const/4 p7, 0x0

    if-ne p8, p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0, p2, p7}, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->setPaintColor(Lcom/amazon/kindle/krx/ui/ColorMode;Z)V

    const p2, 0x7fffffff

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    const p7, 0x7fffffff

    :cond_1
    int-to-float p6, p7

    .line 68
    invoke-interface {p3, p6}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p6

    int-to-float p2, p2

    .line 69
    invoke-interface {p3, p2}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p2

    .line 70
    iget-object p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->r:Landroid/graphics/RectF;

    iput p6, p3, Landroid/graphics/RectF;->left:F

    .line 71
    iput p2, p3, Landroid/graphics/RectF;->right:F

    .line 72
    iput p4, p3, Landroid/graphics/RectF;->top:F

    .line 73
    iput p5, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p5, p4

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p5, p2

    .line 76
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p5, p5, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

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

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->emptyList:Ljava/util/List;

    return-object v0
.end method

.method public onSnapStart(I)V
    .locals 0

    return-void
.end method

.method protected setPaintColor(Lcom/amazon/kindle/krx/ui/ColorMode;Z)V
    .locals 1

    .line 92
    sget-object v0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    .line 105
    iget p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->colorWhite:I

    goto :goto_0

    .line 101
    :cond_0
    iget p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->colorGreen:I

    goto :goto_0

    .line 98
    :cond_1
    iget p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->colorSepia:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 95
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->colorBlackVertical:I

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->colorBlackHorizontal:I

    .line 108
    :goto_0
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
