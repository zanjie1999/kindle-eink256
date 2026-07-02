.class public Lcom/amazon/android/docviewer/mobi/BookPageMarginal;
.super Ljava/lang/Object;
.source "BookPageMarginal.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private author:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private footer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private footerLocation:Ljava/lang/String;

.field private final hasFooter:Z

.field private lastIntLocation:I

.field private final mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/amazon/kindle/yj/IMarginalContentProviderContext;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->footerLocation:Ljava/lang/String;

    .line 61
    iput-boolean p2, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->hasFooter:Z

    .line 62
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    .line 63
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->context:Landroid/content/Context;

    return-void
.end method

.method private getTime()Ljava/lang/String;
    .locals 2

    .line 137
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 139
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->author:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    .line 104
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->author:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->author:Ljava/lang/String;

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomOffsetForFooter()I
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->reader_footer_offset_from_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getClockWidthPercentageOfScreenWidth()D
    .locals 11

    .line 313
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    float-to-double v1, v1

    .line 315
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v3}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 316
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    .line 317
    invoke-interface {v4}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v5}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getColumnCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getCalculatedHorizontalMargins(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result v3

    int-to-double v3, v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 319
    :goto_0
    sget v5, Lcom/amazon/kindle/krl/R$integer;->in_book_clock_width_percentage_of_header:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-double v5, v0

    .line 321
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    iget-object v7, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->context:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    int-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v3

    sub-double v9, v7, v9

    mul-double v5, v5, v9

    add-double/2addr v5, v3

    div-double/2addr v5, v7

    mul-double v5, v5, v1

    return-wide v5
.end method

.method public getDisplayMaskWidth()I
    .locals 4

    .line 337
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 338
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    return v2

    .line 342
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 343
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v1, v3, :cond_1

    return v2

    .line 347
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getFontSize()F
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->reader_text_decoration_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getFooterLocationString()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->footerLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterText(ILandroid/graphics/Paint;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getFooterContentProvider()Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v1}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v2}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 157
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->getType()Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v3

    .line 163
    invoke-interface {v2, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLocationFromPosition(I)I

    move-result v2

    .line 164
    iget v4, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->lastIntLocation:I

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 165
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->isDirty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 166
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->refreshRequired()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_BOOK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_CHAPTER:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_RECAPS:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    if-ne v3, v4, :cond_e

    .line 170
    :cond_1
    iput v2, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->lastIntLocation:I

    .line 174
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v2}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->getNextType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;Lcom/amazon/kindle/dualreadingmode/ReadingMode;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v2

    .line 179
    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->FULL_PAGE_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v6, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->TAP_READING_PROGRESS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v4, v6}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 186
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v4}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getDocView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eq v3, v2, :cond_2

    .line 188
    invoke-virtual {v4, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2
    move-object v3, v2

    :cond_3
    move-object v2, v3

    .line 197
    :cond_4
    invoke-virtual {v0, v2, p1}, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->getFooterString(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;I)Ljava/lang/String;

    move-result-object v4

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The TLR string is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    sget-object v6, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    if-ne v2, v6, :cond_5

    goto :goto_0

    .line 202
    :cond_5
    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 203
    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->getNextType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v2

    :cond_6
    if-eq v2, v3, :cond_7

    .line 205
    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 209
    :cond_7
    :goto_0
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->isDirty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 210
    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->setType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)V

    .line 213
    :cond_8
    sget-object p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    if-eq v2, p1, :cond_a

    sget-object p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_RECAPS:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    if-eq v2, p1, :cond_a

    iget-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->hasFooter:Z

    if-nez p1, :cond_9

    goto :goto_1

    .line 214
    :cond_9
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->getReadingProgressString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_a
    :goto_1
    const-string p1, ""

    :goto_2
    const/4 v0, 0x0

    if-eqz p2, :cond_d

    if-eqz v4, :cond_b

    .line 220
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    :goto_3
    if-eqz p1, :cond_c

    .line 221
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    :cond_c
    move v8, v3

    move v3, v0

    move v0, v8

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    .line 227
    :goto_4
    new-instance v6, Landroid/util/Pair;

    .line 228
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v6, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/util/Pair;

    .line 229
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    invoke-static {v6, v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 231
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0, p1, v2, p2}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->addAdditionalFooterStringsFromProviders(Ljava/util/List;Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;Landroid/graphics/Paint;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->footer:Ljava/util/List;

    .line 233
    iput-object v4, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->footerLocation:Ljava/lang/String;

    .line 237
    :cond_e
    invoke-virtual {v1, v5}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->setRefreshRequired(Z)V

    .line 238
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->footer:Ljava/util/List;

    return-object p1

    .line 154
    :cond_f
    :goto_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getFooterTextOnly(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getFooterText(ILandroid/graphics/Paint;)Ljava/util/List;

    move-result-object p1

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 258
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getHeaderText(Landroid/graphics/Paint;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->isTimeDisplayVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getTime()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 126
    :cond_0
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getHeaderTextOnly()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getHeaderText(Landroid/graphics/Paint;)Ljava/util/List;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 279
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    .line 82
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->title:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 84
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    .line 86
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->title:Ljava/lang/String;

    .line 87
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->title:Ljava/lang/String;

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->title:Ljava/lang/String;

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopOffsetForTitle()I
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->reader_title_offset_from_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
