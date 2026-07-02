.class public Lcom/amazon/kcp/cover/badge/BadgeUtils;
.super Ljava/lang/Object;
.source "BadgeUtils.java"


# static fields
.field private static final BADGE_TEXT_TYPEFACE:I = 0x0

.field private static final LOCALIZED_BADGE_TEXT_SIZE_ID:I

.field private static final READING_PROGRESS_BADGE_TEXT_SIZE_ID:I

.field private static final SASH_ANGLE:F = 45.0f

.field private static final SASH_CACHE_KEY:Ljava/lang/String; = "SASH"

.field private static bitmapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/cover/badge/BadgeUtils;->bitmapCache:Ljava/util/Map;

    .line 33
    sget v0, Lcom/amazon/kindle/librarymodule/R$dimen;->reading_progress_badge_text_size:I

    sput v0, Lcom/amazon/kcp/cover/badge/BadgeUtils;->READING_PROGRESS_BADGE_TEXT_SIZE_ID:I

    .line 34
    sget v0, Lcom/amazon/kindle/librarymodule/R$dimen;->localized_badge_text_size:I

    sput v0, Lcom/amazon/kcp/cover/badge/BadgeUtils;->LOCALIZED_BADGE_TEXT_SIZE_ID:I

    return-void
.end method

.method public static createReadingProgressBadge(ILcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 52
    invoke-static {p3, p4}, Lcom/amazon/kcp/cover/badge/BadgeUtils;->getBookmarkId(Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Z)I

    move-result p1

    invoke-static {p2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 53
    sget p3, Lcom/amazon/kcp/cover/badge/BadgeUtils;->READING_PROGRESS_BADGE_TEXT_SIZE_ID:I

    invoke-static {p1, p0, p3, p2}, Lcom/amazon/kcp/cover/badge/BadgeUtils;->createReadingProgressBadge(Landroid/graphics/Bitmap;IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static createReadingProgressBadge(Landroid/graphics/Bitmap;IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 96
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-static {p3, p2}, Lcom/amazon/kcp/cover/badge/BadgeUtils;->getBadgeTextPaint(Landroid/content/res/Resources;F)Landroid/graphics/Paint;

    move-result-object p2

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p2, p1, v3, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 103
    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->reading_progress_margin_bottom:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 104
    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->reading_progress_margin_right:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 105
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 106
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v3

    int-to-float v2, v2

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p3, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static createSashBadge(ILcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 70
    sget-object p1, Lcom/amazon/kcp/cover/badge/BadgeUtils;->bitmapCache:Ljava/util/Map;

    const-string v0, "SASH"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 72
    invoke-static {p3}, Lcom/amazon/kcp/cover/badge/BadgeUtils;->getSashId(Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I

    move-result p1

    invoke-static {p2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 73
    sget-object p3, Lcom/amazon/kcp/cover/badge/BadgeUtils;->bitmapCache:Ljava/util/Map;

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v2, p1

    .line 76
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 77
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 80
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 81
    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->sash_badge_text_x_ratio:I

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 82
    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->sash_badge_text_y_ratio:I

    invoke-virtual {p2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    int-to-float v3, p1

    .line 86
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    mul-float v3, v3, v0

    float-to-int v4, v3

    int-to-float p3, p3

    .line 87
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    mul-float p3, p3, v0

    float-to-int v5, p3

    int-to-double v0, p1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double v0, v0, v6

    double-to-int v6, v0

    .line 90
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p0, Lcom/amazon/kcp/cover/badge/BadgeUtils;->LOCALIZED_BADGE_TEXT_SIZE_ID:I

    .line 91
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v8, 0x42340000    # 45.0f

    move-object v7, p2

    .line 90
    invoke-static/range {v1 .. v8}, Lcom/amazon/kcp/cover/badge/BadgeUtils;->getLocalizedBadge(Ljava/lang/String;Landroid/graphics/Bitmap;FIIILandroid/content/res/Resources;F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getBadgeTextPaint(Landroid/content/res/Resources;F)Landroid/graphics/Paint;
    .locals 2

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 156
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    sget v1, Lcom/amazon/kindle/librarymodule/R$color;->badge_text_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 159
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_REGULAR:Lcom/mobipocket/android/drawing/FontFamily;

    .line 161
    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->font_family_default:I

    .line 162
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    .line 163
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 164
    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-object v0
.end method

.method private static getBookmarkId(Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 175
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_readingProgressAudioBadge:I

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p0

    return p0

    .line 177
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_readingProgressBadge:I

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p0

    return p0
.end method

.method private static getLocalizedBadge(Ljava/lang/String;Landroid/graphics/Bitmap;FIIILandroid/content/res/Resources;F)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 130
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    invoke-static {p6, p2}, Lcom/amazon/kcp/cover/badge/BadgeUtils;->getBadgeTextPaint(Landroid/content/res/Resources;F)Landroid/graphics/Paint;

    move-result-object p2

    .line 142
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, p2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    int-to-float p5, p5

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v1, p5, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    int-to-float p3, p3

    int-to-float p4, p4

    .line 145
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 146
    invoke-virtual {v0, p7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 147
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p3, 0x0

    invoke-virtual {v0, p0, p3, p3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 149
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, p6, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private static getSashId(Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I
    .locals 1

    .line 170
    sget v0, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_sash:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p0

    return p0
.end method
