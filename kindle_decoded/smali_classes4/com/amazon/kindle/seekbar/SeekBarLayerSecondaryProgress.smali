.class public Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;
.super Ljava/lang/Object;
.source "SeekBarLayerSecondaryProgress.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;


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

.field private final paint:Landroid/graphics/Paint;

.field private final r:Landroid/graphics/RectF;

.field private final sb:Lcom/amazon/kindle/seekbar/LayeredSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->sb:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 40
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->paint:Landroid/graphics/Paint;

    .line 41
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->r:Landroid/graphics/RectF;

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->emptyList:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 46
    sget p2, Lcom/amazon/kindle/krl/R$color;->white_mode_seekbar_secondaryprogress_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->colorWhite:I

    .line 47
    sget p2, Lcom/amazon/kindle/krl/R$color;->black_mode_seekbar_secondaryprogress_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->colorBlack:I

    .line 48
    sget p2, Lcom/amazon/kindle/krl/R$color;->sepia_mode_seekbar_secondaryprogress_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->colorSepia:I

    .line 49
    sget p2, Lcom/amazon/kindle/krl/R$color;->green_mode_seekbar_secondaryprogress_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->colorGreen:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V
    .locals 4

    const/4 p6, 0x1

    if-ne p8, p6, :cond_0

    const/4 p7, 0x1

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    .line 55
    :goto_0
    iget-object p8, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->sb:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    invoke-virtual {p8}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result p8

    const/4 v0, 0x0

    .line 56
    invoke-interface {p3, v0}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result v1

    int-to-float p8, p8

    .line 57
    invoke-interface {p3, p8}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p8

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    cmpl-float v1, v1, p8

    if-ltz v1, :cond_1

    return-void

    .line 63
    :cond_1
    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, p6, :cond_4

    const/4 p6, 0x2

    if-eq p2, p6, :cond_4

    const/4 p6, 0x3

    if-eq p2, p6, :cond_3

    const/4 p6, 0x4

    if-eq p2, p6, :cond_2

    .line 76
    iget p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->colorWhite:I

    goto :goto_1

    .line 72
    :cond_2
    iget p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->colorGreen:I

    goto :goto_1

    .line 69
    :cond_3
    iget p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->colorSepia:I

    goto :goto_1

    .line 66
    :cond_4
    iget p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->colorBlack:I

    .line 79
    :goto_1
    iget-object p6, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p7, :cond_5

    const/high16 p2, 0x4f000000

    .line 85
    invoke-interface {p3, p2}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p2

    goto :goto_2

    .line 87
    :cond_5
    invoke-interface {p3, v0}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p2

    move v3, p8

    move p8, p2

    move p2, v3

    .line 91
    :goto_2
    iget-object p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->r:Landroid/graphics/RectF;

    iput p8, p3, Landroid/graphics/RectF;->left:F

    .line 92
    iput p4, p3, Landroid/graphics/RectF;->top:F

    .line 93
    iput p5, p3, Landroid/graphics/RectF;->bottom:F

    .line 94
    iput p2, p3, Landroid/graphics/RectF;->right:F

    .line 95
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

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

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;->emptyList:Ljava/util/List;

    return-object v0
.end method

.method public onSnapStart(I)V
    .locals 0

    return-void
.end method
