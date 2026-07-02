.class public Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;
.super Ljava/lang/Object;
.source "SeekBarLayerKnob.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;


# instance fields
.field private final colorDarkestBlack:I

.field private final colorDarkestGreen:I

.field private final colorDarkestSepia:I

.field private final colorDarkestWhite:I

.field private final colorLightestBlack:I

.field private final colorLightestGreen:I

.field private final colorLightestSepia:I

.field private final colorLightestWhite:I

.field private final colorOutlineBlack:I

.field private final colorOutlineGreen:I

.field private final colorOutlineSepia:I

.field private final colorOutlineWhite:I

.field private final colorShadowBlack:I

.field private final colorShadowGreen:I

.field private final colorShadowSepia:I

.field private final colorShadowWhite:I

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

.field private final knobShadow:Landroid/graphics/Paint;

.field private final paintKnob:Landroid/graphics/Paint;

.field private final paintOutline:Landroid/graphics/Paint;

.field private radius:F

.field private final sb:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

.field private snapped:Z

.field protected strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;F)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->snapped:Z

    .line 57
    iput-object p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->sb:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    .line 59
    iput p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->radius:F

    .line 60
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->emptyList:Ljava/util/List;

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->knobShadow:Landroid/graphics/Paint;

    const/4 p3, 0x1

    .line 63
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->paintOutline:Landroid/graphics/Paint;

    .line 66
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->paintKnob:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 73
    sget p2, Lcom/amazon/kindle/krl/R$color;->white_mode_seekbar_knob_lightest:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorLightestWhite:I

    .line 74
    sget p2, Lcom/amazon/kindle/krl/R$color;->white_mode_seekbar_knob_darkest:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorDarkestWhite:I

    .line 75
    sget p2, Lcom/amazon/kindle/krl/R$color;->white_mode_seekbar_knob_outline:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorOutlineWhite:I

    .line 76
    sget p2, Lcom/amazon/kindle/krl/R$color;->white_mode_seekbar_knob_shadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorShadowWhite:I

    .line 78
    sget p2, Lcom/amazon/kindle/krl/R$color;->black_mode_seekbar_knob_lightest:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorLightestBlack:I

    .line 79
    sget p2, Lcom/amazon/kindle/krl/R$color;->black_mode_seekbar_knob_darkest:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorDarkestBlack:I

    .line 80
    sget p2, Lcom/amazon/kindle/krl/R$color;->black_mode_seekbar_knob_outline:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorOutlineBlack:I

    .line 81
    sget p2, Lcom/amazon/kindle/krl/R$color;->black_mode_seekbar_knob_shadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorShadowBlack:I

    .line 83
    sget p2, Lcom/amazon/kindle/krl/R$color;->sepia_mode_seekbar_knob_lightest:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorLightestSepia:I

    .line 84
    sget p2, Lcom/amazon/kindle/krl/R$color;->sepia_mode_seekbar_knob_darkest:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorDarkestSepia:I

    .line 85
    sget p2, Lcom/amazon/kindle/krl/R$color;->sepia_mode_seekbar_knob_outline:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorOutlineSepia:I

    .line 86
    sget p2, Lcom/amazon/kindle/krl/R$color;->sepia_mode_seekbar_knob_shadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorShadowSepia:I

    .line 88
    sget p2, Lcom/amazon/kindle/krl/R$color;->green_mode_seekbar_knob_lightest:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorLightestGreen:I

    .line 89
    sget p2, Lcom/amazon/kindle/krl/R$color;->green_mode_seekbar_knob_darkest:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorDarkestGreen:I

    .line 90
    sget p2, Lcom/amazon/kindle/krl/R$color;->green_mode_seekbar_knob_outline:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorOutlineGreen:I

    .line 91
    sget p2, Lcom/amazon/kindle/krl/R$color;->green_mode_seekbar_knob_shadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorShadowGreen:I

    .line 93
    sget p2, Lcom/amazon/kindle/krl/R$dimen;->location_seekbar_stroke_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->strokeWidth:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V
    .locals 7

    .line 102
    sget-object p6, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p6, p2

    const/4 p6, 0x1

    if-eq p2, p6, :cond_2

    const/4 p6, 0x2

    if-eq p2, p6, :cond_2

    const/4 p6, 0x3

    if-eq p2, p6, :cond_1

    const/4 p6, 0x4

    if-eq p2, p6, :cond_0

    .line 124
    iget p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorLightestWhite:I

    .line 125
    iget p6, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorDarkestWhite:I

    .line 126
    iget p7, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorOutlineWhite:I

    .line 127
    iget p8, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorShadowWhite:I

    goto :goto_0

    .line 117
    :cond_0
    iget p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorLightestGreen:I

    .line 118
    iget p6, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorDarkestGreen:I

    .line 119
    iget p7, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorOutlineGreen:I

    .line 120
    iget p8, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorShadowGreen:I

    goto :goto_0

    .line 111
    :cond_1
    iget p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorLightestSepia:I

    .line 112
    iget p6, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorDarkestSepia:I

    .line 113
    iget p7, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorOutlineSepia:I

    .line 114
    iget p8, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorShadowSepia:I

    goto :goto_0

    .line 105
    :cond_2
    iget p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorLightestBlack:I

    .line 106
    iget p6, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorDarkestBlack:I

    .line 107
    iget p7, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorOutlineBlack:I

    .line 108
    iget p8, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->colorShadowBlack:I

    :goto_0
    move v4, p2

    move v5, p6

    .line 130
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->paintOutline:Landroid/graphics/Paint;

    iget p6, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->strokeWidth:F

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->knobShadow:Landroid/graphics/Paint;

    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object p2, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->sb:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    int-to-float p2, p2

    .line 135
    invoke-interface {p3, p2}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    add-float/2addr p5, p4

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p5, p3

    float-to-int p5, p5

    int-to-float p5, p5

    add-float p6, p2, p3

    const/high16 p7, 0x3f800000    # 1.0f

    add-float/2addr p7, p5

    .line 139
    iget p8, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->radius:F

    add-float/2addr p8, p3

    iget-object p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->knobShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    iget-object p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->paintKnob:Landroid/graphics/Paint;

    new-instance p6, Landroid/graphics/RadialGradient;

    const/high16 p7, 0x40c00000    # 6.0f

    sub-float v1, p2, p7

    iget p7, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->radius:F

    const/high16 p8, 0x40400000    # 3.0f

    mul-float v3, p7, p8

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p6

    move v2, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p3, p6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 143
    iget p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->radius:F

    iget-object p4, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->paintKnob:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    iget p3, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->radius:F

    iget-object p4, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

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

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->emptyList:Ljava/util/List;

    return-object v0
.end method

.method public onSnapStart(I)V
    .locals 0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 151
    :goto_0
    iput-boolean p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;->snapped:Z

    return-void
.end method
