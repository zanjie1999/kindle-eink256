.class public Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;
.super Landroid/widget/SeekBar;
.source "DoubleTimeSeekBar.java"


# instance fields
.field private bigSquareSize:F

.field protected colorBackgroundBlack:I

.field protected colorBackgroundGreen:I

.field protected colorBackgroundSepia:I

.field protected colorBackgroundWhite:I

.field protected colorDarkestBlack:I

.field protected colorDarkestSepia:I

.field protected colorDarkestWhite:I

.field protected colorLightestBlack:I

.field protected colorLightestSepia:I

.field protected colorLightestWhite:I

.field private colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

.field protected colorOutlineBlack:I

.field protected colorOutlineSepia:I

.field protected colorOutlineWhite:I

.field protected colorShadowBlack:I

.field protected colorShadowSepia:I

.field protected colorShadowWhite:I

.field private knobShadow:Landroid/graphics/Paint;

.field private markerTop:Landroid/view/View;

.field private paint:Landroid/graphics/Paint;

.field private paintKnob:Landroid/graphics/Paint;

.field private paintOutline:Landroid/graphics/Paint;

.field private seekbarSpeedBubble:Landroid/widget/LinearLayout;

.field protected strokeWidth:F

.field private thumbSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->thumbSize:F

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;)Landroid/widget/LinearLayout;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->seekbarSpeedBubble:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->markerTop:Landroid/view/View;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/speedreading/R$dimen;->dt_control_seek_bar_square_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->bigSquareSize:F

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/speedreading/R$dimen;->dt_control_seek_bar_thumb:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->thumbSize:F

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->knobShadow:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paintOutline:Landroid/graphics/Paint;

    .line 102
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paintKnob:Landroid/graphics/Paint;

    .line 106
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 109
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_seekbar_knob_lightest:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorLightestWhite:I

    .line 110
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_seekbar_knob_darkest:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorDarkestWhite:I

    .line 111
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_seekbar_knob_outline:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorOutlineWhite:I

    .line 112
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_seekbar_knob_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorShadowWhite:I

    .line 113
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorBackgroundWhite:I

    .line 115
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_seekbar_knob_lightest:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorLightestBlack:I

    .line 116
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_seekbar_knob_darkest:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorDarkestBlack:I

    .line 117
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_seekbar_knob_outline:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorOutlineBlack:I

    .line 118
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_seekbar_knob_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorShadowBlack:I

    .line 119
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorBackgroundBlack:I

    .line 121
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_seekbar_knob_lightest:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorLightestSepia:I

    .line 122
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_seekbar_knob_darkest:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorDarkestSepia:I

    .line 123
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_seekbar_knob_outline:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorOutlineSepia:I

    .line 124
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_seekbar_knob_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorShadowSepia:I

    .line 125
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorBackgroundSepia:I

    .line 127
    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorBackgroundGreen:I

    const/high16 p1, 0x40a00000    # 5.0f

    .line 129
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->strokeWidth:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 209
    invoke-super/range {p0 .. p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v8, v1

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v9, v1, v8

    const/high16 v1, 0x42080000    # 34.0f

    div-float v10, v9, v1

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v11, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    cmpg-float v1, v13, v9

    if-gtz v1, :cond_1

    .line 226
    rem-int/lit8 v1, v12, 0x2

    if-nez v1, :cond_0

    .line 228
    iget v1, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->bigSquareSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v2, v13, v8

    sub-float v3, v2, v1

    sub-float v4, v11, v1

    add-float v5, v2, v1

    add-float v6, v11, v1

    .line 229
    iget-object v14, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    add-float/2addr v13, v10

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 239
    iget v4, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->thumbSize:F

    float-to-int v4, v4

    .line 246
    sget-object v5, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$2;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    iget-object v6, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x3

    const/4 v8, 0x1

    if-eq v5, v8, :cond_5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_4

    if-eq v5, v6, :cond_4

    const/4 v8, 0x4

    if-eq v5, v8, :cond_3

    const/4 v8, 0x5

    if-eq v5, v8, :cond_2

    goto :goto_1

    .line 274
    :cond_2
    iget-object v5, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorBackgroundGreen:I

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    :goto_1
    iget v5, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorLightestWhite:I

    .line 277
    iget v8, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorDarkestWhite:I

    .line 278
    iget v9, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorOutlineWhite:I

    .line 279
    iget v10, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorShadowWhite:I

    .line 280
    iget-object v11, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorBackgroundWhite:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    move/from16 v17, v5

    move/from16 v18, v8

    goto :goto_3

    .line 263
    :cond_3
    iget v5, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorLightestSepia:I

    .line 264
    iget v8, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorDarkestSepia:I

    .line 265
    iget v9, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorOutlineSepia:I

    .line 266
    iget v10, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorShadowSepia:I

    .line 267
    iget-object v11, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorBackgroundSepia:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 256
    :cond_4
    iget v5, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorLightestBlack:I

    .line 257
    iget v8, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorDarkestBlack:I

    .line 258
    iget v9, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorOutlineBlack:I

    .line 259
    iget v10, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorShadowBlack:I

    .line 260
    iget-object v11, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorBackgroundBlack:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 248
    :cond_5
    iget v5, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorLightestWhite:I

    .line 249
    iget v8, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorDarkestWhite:I

    .line 250
    iget v9, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorOutlineWhite:I

    .line 251
    iget v10, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorShadowWhite:I

    .line 252
    iget-object v11, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorBackgroundWhite:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 284
    :goto_3
    iget-object v5, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paintOutline:Landroid/graphics/Paint;

    iget v8, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->strokeWidth:F

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 285
    iget-object v5, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    iget-object v5, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->knobShadow:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    add-int/lit8 v8, v2, 0x1

    int-to-float v8, v8

    int-to-float v9, v4

    .line 289
    iget-object v10, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->knobShadow:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v5, v1

    int-to-float v2, v2

    int-to-double v10, v4

    const-wide/high16 v12, 0x3ff4000000000000L    # 1.25

    mul-double v10, v10, v12

    double-to-int v8, v10

    int-to-float v8, v8

    .line 292
    iget-object v10, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v2, v8, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 295
    iget-object v8, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paintKnob:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/RadialGradient;

    add-int/lit8 v1, v1, -0x6

    int-to-float v14, v1

    int-to-float v15, v3

    mul-int/lit8 v4, v4, 0x3

    int-to-float v1, v4

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v10

    move/from16 v16, v1

    invoke-direct/range {v13 .. v19}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 296
    iget-object v1, v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->paintKnob:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v2, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-void
.end method

.method public setTextView(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->seekbarSpeedBubble:Landroid/widget/LinearLayout;

    .line 150
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->markerTop:Landroid/view/View;

    const/16 p2, 0x8

    .line 152
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setTracking(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->seekbarSpeedBubble:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->seekbarSpeedBubble:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateTextView(I)V
    .locals 1

    .line 164
    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->progressToWordsPerMin(I)I

    move-result p1

    .line 166
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;I)V

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
