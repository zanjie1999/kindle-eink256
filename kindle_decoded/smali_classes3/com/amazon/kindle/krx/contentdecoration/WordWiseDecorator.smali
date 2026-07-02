.class public Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;
.super Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;
.source "WordWiseDecorator.java"


# static fields
.field private static final CHINESE_FONT_FILE:Ljava/lang/String; = "/system/fonts/STBShusongRegular.ttf"

.field private static final GLOSS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOSS_FONT_MAX_SIZE:F

.field private static final GLOSS_FONT_MAX_SIZE_CN:F

.field private static final GLOSS_FONT_MIN_SIZE:F

.field private static final GLOSS_FONT_MIN_SIZE_CN:F

.field private static final GLOSS_FONT_SCALE_FACTOR:F

.field private static final GLOSS_FONT_SCALE_FACTOR_CN:F

.field private static final GLOSS_MAX_WIDTH_TO_PAGE_WIDTH:F = 0.5f

.field private static final PINYIN_RECT_SHRINK_RATIO:D = 0.5

.field private static final RENDERING_PRIORITY:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field private static typeface_cn:Landroid/graphics/Typeface;


# instance fields
.field private drawnContentDecorations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private drawnTextRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private drawnTextRectsByLine:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeSet<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    const-class v0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator$1;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_COMPARATOR:Ljava/util/Comparator;

    .line 79
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 81
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 83
    sget v3, Lcom/amazon/kindle/krxsdk/R$dimen;->word_wise_decoration_text_size_multiplier:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 84
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    sput v1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_FONT_SCALE_FACTOR:F

    .line 85
    sget v1, Lcom/amazon/kindle/krxsdk/R$dimen;->word_wise_decoration_maximum_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_FONT_MAX_SIZE:F

    .line 86
    sget v1, Lcom/amazon/kindle/krxsdk/R$dimen;->word_wise_decoration_text_size_multiplier_cn:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 87
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    sput v1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_FONT_SCALE_FACTOR_CN:F

    .line 88
    sget v1, Lcom/amazon/kindle/krxsdk/R$dimen;->word_wise_decoration_maximum_text_size_cn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_FONT_MAX_SIZE_CN:F

    .line 89
    sget v1, Lcom/amazon/kindle/krxsdk/R$dimen;->word_wise_decoration_minimum_text_size_eink:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_FONT_MIN_SIZE:F

    .line 90
    sget v1, Lcom/amazon/kindle/krxsdk/R$dimen;->word_wise_decoration_minimum_text_size_eink_cn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_FONT_MIN_SIZE_CN:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;-><init>()V

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->paint:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnTextRectsByLine:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnContentDecorations:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnTextRects:Ljava/util/List;

    return-void
.end method

.method private addRectToDrawn(ILandroid/graphics/Rect;)V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnTextRectsByLine:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 391
    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnTextRectsByLine:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnTextRects:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createIndicatorPoints(Landroid/graphics/Rect;III)[F
    .locals 6

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 234
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p4

    const/4 p4, 0x2

    .line 235
    div-int/2addr p2, p4

    sub-int v2, v0, p2

    add-int/2addr p2, v0

    sub-int p3, v1, p3

    const/16 v3, 0x10

    new-array v3, v3, [F

    .line 242
    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    int-to-float v1, v1

    const/4 v4, 0x1

    aput v1, v3, v4

    int-to-float v2, v2

    aput v2, v3, p4

    const/4 p4, 0x3

    aput v1, v3, p4

    const/4 p4, 0x4

    aput v2, v3, p4

    const/4 p4, 0x5

    aput v1, v3, p4

    int-to-float p4, v0

    const/4 v0, 0x6

    aput p4, v3, v0

    int-to-float p3, p3

    const/4 v0, 0x7

    aput p3, v3, v0

    const/16 v0, 0x8

    aput p4, v3, v0

    const/16 p4, 0x9

    aput p3, v3, p4

    int-to-float p2, p2

    const/16 p3, 0xa

    aput p2, v3, p3

    const/16 p3, 0xb

    aput v1, v3, p3

    const/16 p3, 0xc

    aput p2, v3, p3

    const/16 p2, 0xd

    aput v1, v3, p2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    const/16 p2, 0xe

    aput p1, v3, p2

    const/16 p1, 0xf

    aput v1, v3, p1

    return-object v3
.end method

.method private drawGloss(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;Landroid/graphics/Rect;Landroid/content/res/Resources;Landroid/graphics/Paint;Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Rect;",
            "Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;",
            "Landroid/graphics/Rect;",
            "Landroid/content/res/Resources;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p4

    move-object/from16 v4, p5

    move-object/from16 v9, p6

    .line 261
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->getGlossText()Ljava/lang/String;

    move-result-object v10

    .line 263
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->getRectangle()Landroid/graphics/Rect;

    move-result-object v11

    .line 264
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v9, v10, v2, v1, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 267
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v3, v3, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    return-void

    .line 276
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getPinYinLetterSpacing()Z

    move-result v1

    .line 279
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 280
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->isPinyinCapable()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    .line 281
    invoke-direct {p0, v4}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->getFontSize(Landroid/content/res/Resources;)I

    move-result v3

    .line 282
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lt v5, v3, :cond_1

    .line 283
    iget v3, v8, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 285
    :cond_1
    iget v5, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    .line 288
    :cond_2
    :goto_0
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_3

    .line 289
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v6, v3

    .line 291
    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ge v3, v0, :cond_4

    move v12, v0

    goto :goto_1

    :cond_4
    move v12, v3

    .line 295
    :goto_1
    sget v0, Lcom/amazon/kindle/krxsdk/R$dimen;->word_wise_decoration_gloss_padding:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 296
    iget v3, v8, Landroid/graphics/Rect;->top:I

    sub-int v13, v3, v0

    .line 299
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 302
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->isPinyinCapable()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v1, :cond_6

    .line 303
    :cond_5
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v11, v3, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 307
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->isPinyinCapable()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v1, :cond_7

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 308
    invoke-direct {p0, v11, v2, v3}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->shrinkPinyinRect(Landroid/graphics/Rect;D)V

    .line 312
    :cond_7
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->isPinyinCapable()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v1, :cond_9

    :cond_8
    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 313
    invoke-direct {p0, v8, v11, v1, v2}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->glossIntersects(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 322
    :cond_9
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->isPinyinCapable()Z

    move-result v1

    if-nez v1, :cond_a

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, v11

    .line 323
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawIndicator(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;Landroid/graphics/Rect;Landroid/content/res/Resources;Landroid/graphics/Paint;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 326
    :cond_a
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v13, v0

    :goto_2
    int-to-float v0, v12

    int-to-float v1, v13

    move-object v2, p1

    .line 329
    invoke-virtual {p1, v10, v0, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 332
    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v11}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->addRectToDrawn(ILandroid/graphics/Rect;)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->getTextElementRectangle()Landroid/graphics/Rect;

    move-result-object v0

    .line 337
    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 338
    iget v1, v8, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 339
    iget v1, v8, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 340
    iget v1, v8, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 343
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->isPinyinCapable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 344
    iget-object v0, v7, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnContentDecorations:Ljava/util/List;

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;Landroid/graphics/Rect;Landroid/content/res/Resources;Landroid/graphics/Paint;Landroid/graphics/Rect;)V
    .locals 3

    .line 204
    sget v0, Lcom/amazon/kindle/krxsdk/R$dimen;->word_wise_decoration_caret_width:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 205
    sget v1, Lcom/amazon/kindle/krxsdk/R$dimen;->word_wise_decoration_caret_height:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 206
    sget v2, Lcom/amazon/kindle/krxsdk/R$dimen;->word_wise_decoration_indicator_padding:I

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 208
    invoke-direct {p0, p3, v0, v1, p4}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->createIndicatorPoints(Landroid/graphics/Rect;III)[F

    move-result-object p4

    .line 209
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 213
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->getGlossAndIndicatorRectangle()Landroid/graphics/Rect;

    move-result-object p1

    .line 214
    iget p2, p6, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 215
    iget p2, p6, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 216
    iget p2, p6, Landroid/graphics/Rect;->right:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 220
    iget p2, p3, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private getFontSize(Landroid/content/res/Resources;)I
    .locals 2

    .line 371
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v0

    .line 372
    sget v1, Lcom/amazon/kindle/krxsdk/R$array;->font_size_array:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    if-ltz v0, :cond_0

    .line 374
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 375
    aget p1, p1, v0

    return p1

    .line 377
    :cond_0
    sget v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->defaultFontIndex:I

    aget p1, p1, v0

    return p1
.end method

.method private getGlossesOnSameLine(II)Ljava/util/TreeSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/TreeSet<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnTextRectsByLine:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnTextRectsByLine:Ljava/util/Map;

    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 439
    :goto_0
    div-int/lit8 p2, p2, 0x2

    sub-int v1, p1, p2

    :goto_1
    add-int v2, p1, p2

    if-gt v1, v2, :cond_2

    .line 442
    iget-object v2, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnTextRectsByLine:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeSet;

    if-eqz v2, :cond_1

    .line 444
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private glossIntersects(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .line 402
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 403
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 404
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->getGlossesOnSameLine(II)Ljava/util/TreeSet;

    move-result-object p1

    .line 406
    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 407
    invoke-static {v0, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 411
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    .line 412
    invoke-static {p1, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_2

    .line 417
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->glossIntesectsPrevLine(Landroid/graphics/Rect;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    if-eqz p4, :cond_3

    .line 418
    invoke-direct {p0, p2, p4}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->glossIntesectsPrevLine(Landroid/graphics/Rect;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method private glossIntesectsPrevLine(Landroid/graphics/Rect;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .line 459
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 460
    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isPinyinCapable()Z
    .locals 4

    .line 508
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 510
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 514
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    .line 515
    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

    .line 516
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 517
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isChineseLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method private isWordWiseDecoration(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;)Z
    .locals 1

    .line 474
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->WordWise:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private pageReset()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnTextRectsByLine:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnContentDecorations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnTextRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private setTypeface(Ljava/util/Locale;)V
    .locals 1

    .line 485
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-ne v0, p1, :cond_2

    .line 486
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->typeface_cn:Landroid/graphics/Typeface;

    if-nez p1, :cond_1

    .line 488
    new-instance p1, Ljava/io/File;

    const-string v0, "/system/fonts/STBShusongRegular.ttf"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->typeface_cn:Landroid/graphics/Typeface;

    goto :goto_0

    .line 493
    :cond_0
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object p1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->typeface_cn:Landroid/graphics/Typeface;

    .line 496
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->paint:Landroid/graphics/Paint;

    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->typeface_cn:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    .line 498
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_1
    return-void
.end method

.method private shrinkPinyinRect(Landroid/graphics/Rect;D)V
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p2, v0

    if-gez v2, :cond_1

    const-wide/16 v2, 0x0

    cmpg-double v4, p2, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, p2

    mul-double v2, v2, v0

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    div-double/2addr v2, p2

    double-to-int p2, v2

    .line 360
    iget p3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 361
    iget p3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    return-void
.end method

.method private spanMultipleLines(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 174
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x1

    .line 179
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 180
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v1, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public decorate(Ljava/util/Collection;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;Ljava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;",
            "Landroid/graphics/Canvas;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Lcom/amazon/android/docviewer/IDocumentPage;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p4

    .line 102
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->pageReset()V

    .line 104
    invoke-static/range {p1 .. p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v11, 0x0

    .line 109
    aget-object v0, v0, v11

    check-cast v0, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    if-eqz v0, :cond_7

    .line 110
    invoke-interface {v0}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->isWordWiseDecoration(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 115
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 118
    invoke-interface/range {p4 .. p4}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v0

    invoke-interface/range {p4 .. p4}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v1

    invoke-virtual {p0, v0, v1, v10}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;->createCoveringRectangles(IILcom/amazon/android/docviewer/IDocumentPage;)Ljava/util/List;

    move-result-object v13

    .line 119
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    if-eqz v0, :cond_2

    .line 120
    invoke-interface {v0}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->isWordWiseDecoration(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 124
    :cond_3
    move-object v3, v0

    check-cast v3, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;

    .line 125
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 126
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 127
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 129
    invoke-interface/range {p3 .. p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFontSize()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-ne v5, v2, :cond_4

    sget v5, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_FONT_SCALE_FACTOR_CN:F

    goto :goto_1

    :cond_4
    sget v5, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_FONT_SCALE_FACTOR:F

    :goto_1
    mul-float v4, v4, v5

    .line 130
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-ne v5, v2, :cond_5

    sget v5, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_FONT_MAX_SIZE_CN:F

    goto :goto_2

    :cond_5
    sget v5, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->GLOSS_FONT_MAX_SIZE:F

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 132
    iget-object v5, v9, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v4, v9, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 135
    invoke-direct {p0, v2}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->setTypeface(Ljava/util/Locale;)V

    .line 137
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1, v10}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;->createCoveringRectangles(IILcom/amazon/android/docviewer/IDocumentPage;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 139
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->spanMultipleLines(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    iget-object v1, v9, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Rect;

    iget-object v6, v9, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object v5, v12

    move-object v7, v13

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawGloss(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;Landroid/graphics/Rect;Landroid/content/res/Resources;Landroid/graphics/Paint;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 145
    :cond_6
    iget-object v0, v9, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnTextRects:Ljava/util/List;

    return-object v0

    .line 111
    :cond_7
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentDecorationAt(II)Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;->drawnContentDecorations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;

    .line 159
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->getGlossAndIndicatorRectangle()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->getTextElementRectangle()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method
