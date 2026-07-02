.class public Lcom/amazon/kcp/cover/SubTitleDecorator;
.super Ljava/lang/Object;
.source "SubTitleDecorator.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICoverDecorator;


# static fields
.field private static AUTHOR_TEXT_SIZE:I = 0x0

.field private static INITIALIZED:Z = false

.field private static final PERCENT_BOTTOM_PADDING:D = 0.06

.field private static final PERCENT_TEXT_SHRINK:D = 0.6

.field private static PROPORTIONAL_LAYOUT_TEXT_ALIGNMENT:Landroid/text/Layout$Alignment;

.field private static final TAG:Ljava/lang/String;

.field private static TEXT_COLOR:I

.field private static USE_PROPORTIONAL_LAYOUT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kcp/cover/SubTitleDecorator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/SubTitleDecorator;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/amazon/kcp/cover/SubTitleDecorator;->INITIALIZED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private drawNonProportional(Lcom/amazon/kindle/cover/ICoverBuilder;)V
    .locals 13

    .line 119
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 120
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getCover()Lcom/amazon/kindle/cover/ICover;

    move-result-object v2

    .line 122
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBook()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object p1

    .line 123
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-interface {v2}, Lcom/amazon/kindle/cover/ICover;->getCoverSize()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {p1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p1

    .line 126
    sget-object v2, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 127
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 128
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 130
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v3}, Landroid/text/TextPaint;-><init>(I)V

    .line 131
    sget v3, Lcom/amazon/kcp/cover/SubTitleDecorator;->TEXT_COLOR:I

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz p1, :cond_1

    .line 134
    sget p1, Lcom/amazon/kcp/cover/SubTitleDecorator;->AUTHOR_TEXT_SIZE:I

    int-to-double v6, p1

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double v6, v6, v8

    double-to-float p1, v6

    invoke-virtual {v5, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_1

    .line 136
    :cond_1
    sget p1, Lcom/amazon/kcp/cover/SubTitleDecorator;->AUTHOR_TEXT_SIZE:I

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_1
    int-to-double v6, v1

    const-wide v8, 0x3faeb851eb851eb8L    # 0.06

    mul-double v6, v6, v8

    double-to-int p1, v6

    int-to-double v6, v2

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double v6, v6, v8

    double-to-int v11, v6

    .line 142
    new-instance v12, Landroid/text/StaticLayout;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    move-object v3, v12

    move v6, v11

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 144
    invoke-virtual {v12}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v11

    .line 146
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v3

    sub-int/2addr v1, p1

    int-to-float p1, v2

    int-to-float v1, v1

    .line 148
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    invoke-virtual {v12, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawProportional(Lcom/amazon/kindle/cover/ICoverBuilder;)V
    .locals 21

    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 80
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 82
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 83
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBook()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 85
    invoke-static {v3, v2, v1}, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->calculateLayout(Landroid/content/Context;II)Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;

    move-result-object v3

    .line 88
    iget v12, v3, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->horzMargin:I

    mul-int/lit8 v4, v12, 0x2

    sub-int/2addr v2, v4

    .line 91
    new-instance v15, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v15, v14}, Landroid/text/TextPaint;-><init>(I)V

    .line 92
    sget v4, Lcom/amazon/kcp/cover/SubTitleDecorator;->TEXT_COLOR:I

    invoke-virtual {v15, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 93
    iget v4, v3, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->authorTextSize:I

    int-to-float v4, v4

    invoke-virtual {v15, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 94
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v4

    .line 95
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_REGULAR:Lcom/mobipocket/android/drawing/FontFamily;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    .line 94
    :goto_0
    invoke-virtual {v4, v6}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 98
    invoke-virtual {v15, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 100
    new-instance v13, Landroid/text/StaticLayout;

    sget-object v8, Lcom/amazon/kcp/cover/SubTitleDecorator;->PROPORTIONAL_LAYOUT_TEXT_ALIGNMENT:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    move-object v4, v13

    move-object v6, v15

    move v7, v2

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 103
    :goto_1
    invoke-virtual {v13}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-le v4, v14, :cond_1

    const/4 v4, 0x0

    .line 104
    invoke-virtual {v13, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    new-instance v5, Landroid/text/StaticLayout;

    sget-object v17, Lcom/amazon/kcp/cover/SubTitleDecorator;->PROPORTIONAL_LAYOUT_TEXT_ALIGNMENT:Landroid/text/Layout$Alignment;

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x1

    move-object v13, v5

    const/4 v6, 0x1

    move-object v14, v4

    move-object v4, v15

    move/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/4 v14, 0x1

    goto :goto_1

    .line 110
    :cond_1
    iget v2, v3, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;->bottomMargin:I

    sub-int/2addr v1, v2

    .line 111
    invoke-virtual {v13}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v12

    int-to-float v3, v1

    .line 113
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    invoke-virtual {v13, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    neg-int v2, v12

    int-to-float v2, v2

    neg-int v1, v1

    int-to-float v1, v1

    .line 115
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private static declared-synchronized init()V
    .locals 3

    const-class v0, Lcom/amazon/kcp/cover/SubTitleDecorator;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-boolean v1, Lcom/amazon/kcp/cover/SubTitleDecorator;->INITIALIZED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 43
    monitor-exit v0

    return-void

    .line 46
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 48
    sget v2, Lcom/amazon/kindle/krl/R$bool;->generated_cover_use_proportional_layout:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/amazon/kcp/cover/SubTitleDecorator;->USE_PROPORTIONAL_LAYOUT:Z

    if-eqz v2, :cond_1

    .line 50
    sget v2, Lcom/amazon/kindle/krl/R$string;->generated_cover_proportional_layout_text_alignment:I

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/cover/CoverUtils;->getDecoratorAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v2

    sput-object v2, Lcom/amazon/kcp/cover/SubTitleDecorator;->PROPORTIONAL_LAYOUT_TEXT_ALIGNMENT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 53
    :cond_1
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->generated_cover_subtitle_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/amazon/kcp/cover/SubTitleDecorator;->AUTHOR_TEXT_SIZE:I

    .line 55
    :goto_0
    sget v2, Lcom/amazon/kindle/krl/R$color;->generated_cover_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/cover/SubTitleDecorator;->TEXT_COLOR:I

    const/4 v1, 0x1

    .line 56
    sput-boolean v1, Lcom/amazon/kcp/cover/SubTitleDecorator;->INITIALIZED:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private shouldDecorate(Lcom/amazon/kindle/cover/ICoverBuilder;)Z
    .locals 3

    .line 155
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBook()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 156
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBook()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    .line 157
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->canBeDecorated()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-eq v2, p1, :cond_0

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v2, p1, :cond_0

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-eq v2, p1, :cond_0

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    if-eq v2, p1, :cond_0

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    if-eq v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public draw(Lcom/amazon/kindle/cover/ICoverBuilder;)Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/amazon/kcp/cover/SubTitleDecorator;->init()V

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/SubTitleDecorator;->shouldDecorate(Lcom/amazon/kindle/cover/ICoverBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget-boolean v0, Lcom/amazon/kcp/cover/SubTitleDecorator;->USE_PROPORTIONAL_LAYOUT:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/SubTitleDecorator;->drawProportional(Lcom/amazon/kindle/cover/ICoverBuilder;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/SubTitleDecorator;->drawNonProportional(Lcom/amazon/kindle/cover/ICoverBuilder;)V

    :goto_0
    const/4 v0, 0x1

    .line 72
    invoke-interface {p1, v0}, Lcom/amazon/kindle/cover/ICoverBuilder;->setDecorated(Z)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
