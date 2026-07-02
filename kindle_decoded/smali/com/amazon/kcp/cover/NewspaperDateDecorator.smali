.class public Lcom/amazon/kcp/cover/NewspaperDateDecorator;
.super Ljava/lang/Object;
.source "NewspaperDateDecorator.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICoverDecorator;


# static fields
.field protected static DATE_TEXT_SIZE:I = 0x0

.field private static final GMT:Ljava/util/TimeZone;

.field private static INITIALIZED:Z = false

.field private static final PERCENT_BOTTOM_PADDING:D = 0.06

.field private static final TAG:Ljava/lang/String;

.field private static TEXT_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kcp/cover/NewspaperDateDecorator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->TAG:Ljava/lang/String;

    const-string v0, "GMT:00"

    .line 33
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->GMT:Ljava/util/TimeZone;

    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->INITIALIZED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized init()V
    .locals 3

    const-class v0, Lcom/amazon/kcp/cover/NewspaperDateDecorator;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-boolean v1, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->INITIALIZED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 44
    monitor-exit v0

    return-void

    .line 47
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 48
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->generated_cover_date_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->DATE_TEXT_SIZE:I

    .line 49
    sget v2, Lcom/amazon/kindle/krl/R$color;->generated_cover_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->TEXT_COLOR:I

    const/4 v1, 0x1

    .line 50
    sput-boolean v1, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->INITIALIZED:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isDefaultCover(Lcom/amazon/kindle/cover/ICover;)Z
    .locals 1

    .line 130
    sget-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->TEMPORARY:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/cover/ICover;->getCoverType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static reformatDate(J)Ljava/lang/String;
    .locals 1

    .line 115
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x1

    .line 116
    invoke-static {p0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p0

    .line 117
    sget-object p1, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->GMT:Ljava/util/TimeZone;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 119
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private shouldDecorate(Lcom/amazon/kindle/cover/ICoverBuilder;)Z
    .locals 1

    .line 126
    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->canBeDecorated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBook()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public draw(Lcom/amazon/kindle/cover/ICoverBuilder;)Z
    .locals 16

    .line 55
    invoke-static {}, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->init()V

    .line 56
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->shouldDecorate(Lcom/amazon/kindle/cover/ICoverBuilder;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 60
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 61
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getCover()Lcom/amazon/kindle/cover/ICover;

    move-result-object v2

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBook()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v3

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 66
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 69
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_0

    move-wide v8, v6

    goto :goto_0

    :cond_0
    check-cast v3, Lcom/amazon/kindle/content/ContentMetadata;

    .line 70
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v8

    :goto_0
    cmp-long v3, v8, v6

    if-eqz v3, :cond_1

    .line 72
    invoke-static {v8, v9}, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->reformatDate(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    move-object v6, v3

    .line 74
    invoke-interface {v2}, Lcom/amazon/kindle/cover/ICover;->getCoverSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v15, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 76
    :goto_2
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v15}, Landroid/text/TextPaint;-><init>(I)V

    .line 77
    invoke-virtual {v3, v15}, Landroid/text/TextPaint;->setDither(Z)V

    if-eqz v2, :cond_3

    .line 80
    sget v2, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->DATE_TEXT_SIZE:I

    int-to-double v7, v2

    const-wide v9, 0x3fe3333333333333L    # 0.6

    mul-double v7, v7, v9

    double-to-float v2, v7

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_3

    .line 82
    :cond_3
    sget v2, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->DATE_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 85
    :goto_3
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    move-object v5, v2

    move-object v7, v3

    move v8, v13

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 87
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v8

    int-to-double v5, v14

    const-wide v9, 0x3faeb851eb851eb8L    # 0.06

    mul-double v5, v5, v9

    double-to-int v5, v5

    int-to-double v6, v13

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    mul-double v6, v6, v9

    double-to-int v6, v6

    sub-int/2addr v14, v8

    sub-int/2addr v14, v5

    .line 94
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->getCover()Lcom/amazon/kindle/cover/ICover;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->isDefaultCover(Lcom/amazon/kindle/cover/ICover;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 95
    sget v1, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->TEXT_COLOR:I

    goto :goto_4

    .line 97
    :cond_4
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v4, v6, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 98
    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->isBright(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, -0x1000000

    goto :goto_4

    :cond_5
    const/4 v1, -0x1

    .line 100
    :goto_4
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v1, v6

    int-to-float v9, v14

    sub-int/2addr v13, v6

    int-to-float v10, v13

    move-object v11, v2

    move-object v2, v0

    move-object v12, v3

    move v3, v1

    move v4, v9

    move v5, v10

    move v6, v9

    move-object v7, v12

    .line 102
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v14, v8

    int-to-float v6, v14

    move v4, v6

    .line 103
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    invoke-virtual {v11, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p1

    .line 107
    invoke-interface {v0, v15}, Lcom/amazon/kindle/cover/ICoverBuilder;->setDecorated(Z)V

    return v15

    :cond_6
    return v1
.end method
