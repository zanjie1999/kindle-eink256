.class public Lcom/amazon/kcp/cover/TitleDecorator;
.super Ljava/lang/Object;
.source "TitleDecorator.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICoverDecorator;


# static fields
.field private static INITIALIZED:Z = false

.field private static MIN_TITLE_PADDING:I = 0x0

.field private static final PERCENT_TEXT_SHRINK_EXPLORE:D = 0.3

.field private static final PERCENT_TEXT_SHRINK_SMALL:D = 0.6

.field private static PROPORTIONAL_LAYOUT_TEXT_ALIGNMENT:Landroid/text/Layout$Alignment;

.field private static final TAG:Ljava/lang/String;

.field private static TEXT_COLOR:I

.field private static TITLE_PADDING_BOTTOM_PERCENTAGE:F

.field private static TITLE_PADDING_TOP_PERCENTAGE:F

.field private static TITLE_TEXT_SIZE:I

.field private static USE_PROPORTIONAL_LAYOUT:Z

.field private static USE_TITLE_PADDING_PERCENTAGES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kcp/cover/TitleDecorator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/TitleDecorator;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/amazon/kcp/cover/TitleDecorator;->INITIALIZED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private drawNonProportional(Lcom/amazon/kindle/cover/ICoverBuilder;)V
    .locals 23

    .line 125
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 126
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getCover()Lcom/amazon/kindle/cover/ICover;

    move-result-object v1

    .line 127
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 128
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBook()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v3

    .line 129
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-interface {v1}, Lcom/amazon/kindle/cover/ICover;->getCoverSize()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v1

    .line 132
    sget-object v4, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 133
    :goto_0
    sget-object v6, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    if-ne v1, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 134
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 135
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 137
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v6

    sget-object v7, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-eq v6, v7, :cond_3

    .line 138
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v6

    sget-object v7, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    if-eq v6, v7, :cond_3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    if-ne v3, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 140
    :goto_3
    new-instance v15, Landroid/text/TextPaint;

    invoke-direct {v15, v13}, Landroid/text/TextPaint;-><init>(I)V

    if-eqz v3, :cond_4

    const/high16 v6, -0x1000000

    .line 142
    invoke-virtual {v15, v6}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_4

    .line 144
    :cond_4
    sget v6, Lcom/amazon/kcp/cover/TitleDecorator;->TEXT_COLOR:I

    invoke-virtual {v15, v6}, Landroid/text/TextPaint;->setColor(I)V

    :goto_4
    if-eqz v4, :cond_5

    .line 148
    sget v1, Lcom/amazon/kcp/cover/TitleDecorator;->TITLE_TEXT_SIZE:I

    int-to-double v6, v1

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double v6, v6, v8

    double-to-float v1, v6

    invoke-virtual {v15, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_5

    :cond_5
    if-eqz v1, :cond_6

    .line 150
    sget v1, Lcom/amazon/kcp/cover/TitleDecorator;->TITLE_TEXT_SIZE:I

    int-to-double v6, v1

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double v6, v6, v8

    double-to-float v1, v6

    invoke-virtual {v15, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_5

    .line 152
    :cond_6
    sget v1, Lcom/amazon/kcp/cover/TitleDecorator;->TITLE_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v15, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_5
    int-to-double v6, v14

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double v6, v6, v8

    double-to-int v1, v6

    .line 156
    new-instance v11, Landroid/text/StaticLayout;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v4, v11

    move-object v6, v15

    move v7, v1

    move-object/from16 p1, v11

    move/from16 v11, v16

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v14, v1

    .line 162
    div-int/lit8 v14, v14, 0x2

    if-eqz v3, :cond_8

    .line 167
    div-int/lit8 v3, v2, 0x2

    sget v5, Lcom/amazon/kcp/cover/TitleDecorator;->MIN_TITLE_PADDING:I

    sub-int/2addr v3, v5

    if-ge v3, v4, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    .line 171
    :goto_6
    div-int/lit8 v2, v2, 0x3

    goto :goto_a

    .line 172
    :cond_8
    sget-boolean v3, Lcom/amazon/kcp/cover/TitleDecorator;->USE_TITLE_PADDING_PERCENTAGES:Z

    if-eqz v3, :cond_a

    int-to-float v3, v2

    .line 174
    sget v5, Lcom/amazon/kcp/cover/TitleDecorator;->TITLE_PADDING_TOP_PERCENTAGE:F

    mul-float v5, v5, v3

    float-to-int v5, v5

    sub-int/2addr v2, v5

    .line 175
    sget v6, Lcom/amazon/kcp/cover/TitleDecorator;->TITLE_PADDING_BOTTOM_PERCENTAGE:F

    mul-float v3, v3, v6

    float-to-int v3, v3

    sub-int v3, v2, v3

    if-ge v3, v4, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    move v2, v5

    goto :goto_a

    :cond_a
    mul-int/lit8 v3, v2, 0x2

    .line 179
    div-int/lit8 v3, v3, 0x3

    sget v5, Lcom/amazon/kcp/cover/TitleDecorator;->MIN_TITLE_PADDING:I

    sub-int/2addr v3, v5

    if-ge v3, v4, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_c

    .line 183
    sget v2, Lcom/amazon/kcp/cover/TitleDecorator;->MIN_TITLE_PADDING:I

    goto :goto_9

    :cond_c
    div-int/lit8 v2, v2, 0x3

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    :goto_9
    move v4, v5

    :goto_a
    int-to-float v5, v14

    int-to-float v6, v2

    .line 186
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v4, :cond_f

    move-object/from16 v4, p1

    .line 189
    invoke-virtual {v4, v3}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v3

    sub-int/2addr v3, v13

    .line 190
    invoke-virtual {v4, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    .line 191
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v3, v5, :cond_d

    .line 194
    sget-object v5, Lcom/amazon/kcp/cover/TitleDecorator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TruncatedTextIndex too large: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_b
    move-object/from16 v16, v3

    goto :goto_c

    :cond_d
    if-gez v3, :cond_e

    .line 197
    sget-object v4, Lcom/amazon/kcp/cover/TitleDecorator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Minus truncatedTextIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    goto :goto_b

    .line 200
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4, v12, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 203
    :goto_c
    new-instance v11, Landroid/text/StaticLayout;

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v3, v15

    move-object v15, v11

    move-object/from16 v17, v3

    move/from16 v18, v1

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_d

    :cond_f
    move-object/from16 v4, p1

    move-object v11, v4

    .line 207
    :goto_d
    invoke-virtual {v11, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v14

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawProportional(Lcom/amazon/kindle/cover/ICoverBuilder;)V
    .locals 16

    .line 89
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 90
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 92
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 93
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBook()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 95
    invoke-static {v3, v2, v1}, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->calculateLayout(Landroid/content/Context;II)Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;

    move-result-object v1

    .line 98
    iget v3, v1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->horzMargin:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    .line 101
    iget v14, v1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->topMargin:I

    .line 103
    new-instance v15, Landroid/text/TextPaint;

    const/4 v4, 0x1

    invoke-direct {v15, v4}, Landroid/text/TextPaint;-><init>(I)V

    .line 104
    sget v4, Lcom/amazon/kcp/cover/TitleDecorator;->TEXT_COLOR:I

    invoke-virtual {v15, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 105
    iget v1, v1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->titleTextSize:I

    int-to-float v1, v1

    invoke-virtual {v15, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 106
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    sget-object v4, Lcom/mobipocket/android/drawing/FontFamily;->EMBERBOLD:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1, v4}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 107
    invoke-virtual {v15, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v8, Lcom/amazon/kcp/cover/TitleDecorator;->PROPORTIONAL_LAYOUT_TEXT_ALIGNMENT:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    move-object v4, v1

    move-object v6, v15

    move v7, v2

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 112
    :goto_0
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    const/4 v4, 0x2

    .line 113
    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    sub-int/2addr v4, v5

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v6, 0x0

    invoke-interface {v1, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 115
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v10, Lcom/amazon/kcp/cover/TitleDecorator;->PROPORTIONAL_LAYOUT_TEXT_ALIGNMENT:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    move-object v6, v1

    move-object v8, v15

    move v9, v2

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_0

    :cond_0
    int-to-float v2, v3

    int-to-float v4, v14

    .line 119
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v3

    int-to-float v1, v1

    neg-int v2, v14

    int-to-float v2, v2

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private static declared-synchronized init()V
    .locals 4

    const-class v0, Lcom/amazon/kcp/cover/TitleDecorator;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-boolean v1, Lcom/amazon/kcp/cover/TitleDecorator;->INITIALIZED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 47
    monitor-exit v0

    return-void

    .line 49
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    sget v2, Lcom/amazon/kindle/krl/R$bool;->generated_cover_use_proportional_layout:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/amazon/kcp/cover/TitleDecorator;->USE_PROPORTIONAL_LAYOUT:Z

    if-eqz v2, :cond_1

    .line 53
    sget v2, Lcom/amazon/kindle/krl/R$string;->generated_cover_proportional_layout_text_alignment:I

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/cover/CoverUtils;->getDecoratorAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v2

    sput-object v2, Lcom/amazon/kcp/cover/TitleDecorator;->PROPORTIONAL_LAYOUT_TEXT_ALIGNMENT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 56
    :cond_1
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->generated_cover_title_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/amazon/kcp/cover/TitleDecorator;->TITLE_TEXT_SIZE:I

    .line 57
    sget v2, Lcom/amazon/kindle/krl/R$bool;->use_generated_cover_title_padding_percentages:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/amazon/kcp/cover/TitleDecorator;->USE_TITLE_PADDING_PERCENTAGES:Z

    .line 58
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->generated_cover_title_min_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/amazon/kcp/cover/TitleDecorator;->MIN_TITLE_PADDING:I

    .line 59
    sget v2, Lcom/amazon/kindle/krl/R$integer;->generated_cover_title_padding_top_percentage:I

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sput v2, Lcom/amazon/kcp/cover/TitleDecorator;->TITLE_PADDING_TOP_PERCENTAGE:F

    .line 61
    sget v2, Lcom/amazon/kindle/krl/R$integer;->generated_cover_title_padding_bottom_percentage:I

    .line 62
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sput v2, Lcom/amazon/kcp/cover/TitleDecorator;->TITLE_PADDING_BOTTOM_PERCENTAGE:F

    .line 64
    :goto_0
    sget v2, Lcom/amazon/kindle/krl/R$color;->generated_cover_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/cover/TitleDecorator;->TEXT_COLOR:I

    const/4 v1, 0x1

    .line 65
    sput-boolean v1, Lcom/amazon/kcp/cover/TitleDecorator;->INITIALIZED:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private shouldDecorate(Lcom/amazon/kindle/cover/ICoverBuilder;)Z
    .locals 3

    .line 214
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBook()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 215
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->canBeDecorated()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->TEMPORARY:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getCover()Lcom/amazon/kindle/cover/ICover;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICover;->getCoverType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public draw(Lcom/amazon/kindle/cover/ICoverBuilder;)Z
    .locals 1

    .line 70
    invoke-static {}, Lcom/amazon/kcp/cover/TitleDecorator;->init()V

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/TitleDecorator;->shouldDecorate(Lcom/amazon/kindle/cover/ICoverBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget-boolean v0, Lcom/amazon/kcp/cover/TitleDecorator;->USE_PROPORTIONAL_LAYOUT:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/TitleDecorator;->drawProportional(Lcom/amazon/kindle/cover/ICoverBuilder;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/TitleDecorator;->drawNonProportional(Lcom/amazon/kindle/cover/ICoverBuilder;)V

    :goto_0
    const/4 v0, 0x1

    .line 81
    invoke-interface {p1, v0}, Lcom/amazon/kindle/cover/ICoverBuilder;->setDecorated(Z)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
