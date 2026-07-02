.class public Lcom/amazon/android/util/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field private static final HALF_WAY_RGB_LUMA:I = 0xaa

.field private static final TAG:Ljava/lang/String;

.field private static bottomBackgroundResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/KindleDocColorMode$Id;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static topBackgroundResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/KindleDocColorMode$Id;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    const-class v0, Lcom/amazon/android/util/UIUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/util/UIUtils;->TAG:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/android/util/UIUtils;->bottomBackgroundResourceMap:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/android/util/UIUtils;->topBackgroundResourceMap:Ljava/util/Map;

    .line 105
    sget-object v0, Lcom/amazon/android/util/UIUtils;->bottomBackgroundResourceMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_bottom_chrome_sepia_bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/amazon/android/util/UIUtils;->bottomBackgroundResourceMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_bottom_chrome_white_bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/amazon/android/util/UIUtils;->bottomBackgroundResourceMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_bottom_chrome_black_bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/amazon/android/util/UIUtils;->bottomBackgroundResourceMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_bottom_chrome_green_bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/amazon/android/util/UIUtils;->bottomBackgroundResourceMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_bottom_chrome_black_bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/amazon/android/util/UIUtils;->topBackgroundResourceMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_top_chrome_sepia_bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/amazon/android/util/UIUtils;->topBackgroundResourceMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_top_chrome_white_bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/amazon/android/util/UIUtils;->topBackgroundResourceMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_top_chrome_black_bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/amazon/android/util/UIUtils;->topBackgroundResourceMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_top_chrome_green_bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/amazon/android/util/UIUtils;->topBackgroundResourceMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_top_chrome_black_bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSoftKeyboard(Landroid/view/View;)V
    .locals 2

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static convertConfigurationToScreenOrientation(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static convertDipsToPixels(Landroid/content/Context;F)I
    .locals 0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static convertScreenToConfigurationOrientation(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    return v0

    :cond_1
    :pswitch_1
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToScreenOrientation(Lcom/amazon/kindle/model/content/BookOrientation;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 338
    :cond_0
    sget-object v1, Lcom/amazon/kindle/model/content/BookOrientation;->PORTRAIT:Lcom/amazon/kindle/model/content/BookOrientation;

    if-ne v1, p0, :cond_1

    const/4 p0, 0x7

    return p0

    .line 342
    :cond_1
    sget-object v1, Lcom/amazon/kindle/model/content/BookOrientation;->LANDSCAPE:Lcom/amazon/kindle/model/content/BookOrientation;

    if-ne v1, p0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    return v0
.end method

.method public static createDitheredScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 951
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 952
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 953
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 954
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 955
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 956
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 957
    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p3, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p0, p3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static forceLayoutAndInvalidateUpTree(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1278
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1282
    :cond_0
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->whoIsStoppingLayout(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 1283
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1284
    check-cast v0, Landroid/view/View;

    .line 1285
    new-instance v1, Lcom/amazon/android/util/UIUtils$1;

    invoke-direct {v1, v0}, Lcom/amazon/android/util/UIUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static formatLongPublicationDate(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 382
    sget v0, Lcom/amazon/kindle/krl/R$string;->publication_date_long:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/android/util/UIUtils;->formatPublicationDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatPublicationDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 397
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    .line 405
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getGMTOffsetInMilliSeconds()I

    move-result p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    sub-long v0, v2, v0

    goto :goto_0

    .line 409
    :catch_0
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 413
    :catch_1
    :try_start_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 415
    :catch_2
    sget-object p0, Lcom/amazon/android/util/UIUtils;->TAG:Ljava/lang/String;

    const-string v2, "Problem parsing date from metadata!"

    invoke-static {p0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatShortPublicationDate(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 393
    sget v0, Lcom/amazon/kindle/krl/R$string;->publication_date_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/android/util/UIUtils;->formatPublicationDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateByteDownloadStatusString(Landroid/content/Context;Lcom/amazon/kindle/services/download/IContentDownload;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getProgress()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/amazon/android/util/UIUtils;->generateBytesRemainingString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getMaxProgress()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/amazon/android/util/UIUtils;->generateBytesRemainingString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static generateBytesRemainingString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    long-to-double p1, p1

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    div-double/2addr p1, v0

    .line 559
    sget v0, Lcom/amazon/kindle/krl/R$string;->download_progress_mb:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 561
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$string;->download_progress_kb:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    if-gez v3, :cond_2

    move-wide p1, v1

    .line 568
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/DecimalFormat;

    sget v3, Lcom/amazon/kindle/krl/R$string;->download_progress_decimal_format:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActionBarHeight()I
    .locals 5

    .line 250
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 251
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBackgroundResource(Lcom/amazon/android/docviewer/KindleDocColorMode;)I
    .locals 1

    const/4 v0, 0x1

    .line 1059
    invoke-static {p0, v0}, Lcom/amazon/android/util/UIUtils;->getBackgroundResource(Lcom/amazon/android/docviewer/KindleDocColorMode;Z)I

    move-result p0

    return p0
.end method

.method public static getBackgroundResource(Lcom/amazon/android/docviewer/KindleDocColorMode;Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1063
    sget-object v0, Lcom/amazon/android/util/UIUtils;->bottomBackgroundResourceMap:Ljava/util/Map;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/android/util/UIUtils;->topBackgroundResourceMap:Ljava/util/Map;

    :goto_0
    if-eqz p1, :cond_1

    .line 1064
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_bottom_chrome_white_bg:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_reader_top_chrome_white_bg:I

    .line 1065
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    goto :goto_2

    .line 1066
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_2
    return p1
.end method

.method public static getBookSubtitle(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 450
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne p0, v0, :cond_3

    :cond_0
    if-eqz p3, :cond_1

    .line 452
    invoke-static {p2, p4}, Lcom/amazon/android/util/UIUtils;->formatShortPublicationDate(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p2, p4}, Lcom/amazon/android/util/UIUtils;->formatLongPublicationDate(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 454
    :goto_0
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static getBookSubtitle(Lcom/amazon/kindle/model/content/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 434
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getButtonViewFromActionBarById(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 1181
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getActionMenuButtonById(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getCenterOfView(Landroid/view/View;)I
    .locals 1

    .line 985
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public static getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    .line 1077
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string/jumbo v1, "window"

    .line 1078
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1079
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getDrawable(Landroid/view/View;Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1042
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1043
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1042
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1044
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p2, p3}, Landroid/view/View;->layout(IIII)V

    const/4 p2, 0x1

    .line 1047
    invoke-virtual {p0, p2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1050
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1051
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1053
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-object p3
.end method

.method public static getDrawableForThemeAttribute(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1127
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 1129
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1131
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method public static getGlobalRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1191
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 1192
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 1193
    aget v0, v0, v2

    .line 1194
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1195
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 1198
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1199
    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1200
    iget v3, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1202
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr v2, v1

    add-int/2addr v3, v0

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static getImageResourceSize(Landroid/content/res/Resources;I)Landroid/graphics/Point;
    .locals 2

    .line 995
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 996
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 997
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 999
    new-instance p0, Landroid/graphics/Point;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static getImageSizeForPx(Lcom/amazon/kcp/library/models/BookType;IILcom/amazon/kindle/cover/ImageSizes;)Lcom/amazon/kindle/cover/ImageSizes$Type;
    .locals 0

    .line 1104
    invoke-virtual {p3, p0, p1, p2}, Lcom/amazon/kindle/cover/ImageSizes;->getTypeByWidthHeight(Lcom/amazon/kcp/library/models/BookType;II)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p0

    return-object p0
.end method

.method public static getPositionInParent(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1153
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    aput v1, p2, v0

    .line 1154
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    aput v1, p2, v2

    .line 1156
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    :goto_0
    if-eqz p0, :cond_3

    if-ne p0, p1, :cond_1

    return v2

    .line 1162
    :cond_1
    aget v1, p2, v0

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, p2, v0

    .line 1163
    aget v1, p2, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, p2, v2

    .line 1165
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_1

    .line 1168
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static getReaderScreenOrientation(Landroid/content/Context;)I
    .locals 1

    .line 1098
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    .line 1099
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public static getScreenDensity(Landroid/content/Context;)F
    .locals 1

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public static getScreenHeightInInches(Landroid/content/Context;)F
    .locals 1

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, p0

    return v0
.end method

.method public static getScreenWidthInInches(Landroid/content/Context;)F
    .locals 1

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, p0

    return v0
.end method

.method public static getThemeForColorMode()I
    .locals 1

    .line 1226
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 1227
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getUserSetColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->getThemeForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I

    move-result v0

    return v0
.end method

.method public static getThemeForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I
    .locals 1

    .line 1233
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1234
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1237
    :cond_0
    sget p0, Lcom/amazon/kindle/krl/R$style;->Base_Kindle_Light_NonLinear:I

    return p0

    .line 1235
    :cond_1
    :goto_0
    sget p0, Lcom/amazon/kindle/krl/R$style;->Base_Kindle_Dark_NonLinear:I

    return p0

    .line 1240
    :cond_2
    sget-object v0, Lcom/amazon/android/util/UIUtils$2;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    .line 1251
    sget p0, Lcom/amazon/kindle/krl/R$style;->Theme_ReaderStyle_White_NonLinear:I

    return p0

    .line 1248
    :cond_3
    sget p0, Lcom/amazon/kindle/krl/R$style;->Theme_ReaderStyle_Night_NonLinear:I

    return p0

    .line 1246
    :cond_4
    sget p0, Lcom/amazon/kindle/krl/R$style;->Theme_ReaderStyle_Green_NonLinear:I

    return p0

    .line 1244
    :cond_5
    sget p0, Lcom/amazon/kindle/krl/R$style;->Theme_ReaderStyle_Sepia_NonLinear:I

    return p0

    .line 1242
    :cond_6
    sget p0, Lcom/amazon/kindle/krl/R$style;->Theme_ReaderStyle_Black_NonLinear:I

    return p0
.end method

.method public static getThemedColor(ILandroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 236
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 237
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getThemedResourceId(II)I
    .locals 3

    .line 194
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 195
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 196
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getThemedResourceId(ILandroid/content/Context;)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 211
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 213
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    return v1

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Attribute - Not defined in current theme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getWindowRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1211
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 1212
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 1213
    aget v0, v0, v2

    .line 1214
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1215
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 1217
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1218
    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1219
    iget v3, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1222
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr v2, v1

    add-int/2addr v3, v0

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static isActivityInMultiWindowedMode(Landroid/app/Activity;)Z
    .locals 2

    .line 1121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 1122
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBright(I)Z
    .locals 2

    .line 795
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 796
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 797
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p0

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    shr-int/lit8 p0, v0, 0x3

    const/16 v0, 0xaa

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSoftKeyboardOpen(Landroid/app/Activity;)Z
    .locals 5

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 266
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 267
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 269
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 272
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p0, v1

    sub-int/2addr p0, v0

    if-lez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isWindowSmallerThanMinHeight(Landroid/content/Context;)Z
    .locals 3

    .line 1092
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->application_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1093
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static setDownloadProgressBar(Lcom/amazon/android/util/DownloadProgressBarState;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kindle/services/download/IContentDownload;Landroid/widget/ProgressBar;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;
    .locals 7

    if-eqz p2, :cond_1

    .line 657
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-long v4, v0

    .line 658
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v6

    move-object v1, p0

    .line 657
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/android/util/DownloadProgressBarState;->calculateState(DJLcom/amazon/kindle/model/content/ContentState;)V

    .line 659
    invoke-virtual {p0}, Lcom/amazon/android/util/DownloadProgressBarState;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 660
    invoke-virtual {p0}, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisibile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 664
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/android/util/DownloadProgressBarState;->isDrawableIndeterminate()Z

    move-result v0

    .line 663
    invoke-static {p3, p2, v0}, Lcom/amazon/android/util/UIUtils;->setProgressDrawable(Landroid/widget/ProgressBar;Landroid/graphics/drawable/Drawable;Z)V

    .line 667
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/util/DownloadProgressBarState;->getProgress()I

    move-result p0

    invoke-static {p3, p0}, Lcom/amazon/android/util/UIUtils;->setProgressForceRefresh(Landroid/widget/ProgressBar;I)V

    return-object p1
.end method

.method private static setProgressDrawable(Landroid/widget/ProgressBar;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 588
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 589
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 590
    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    if-eqz p2, :cond_0

    .line 593
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 595
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private static setProgressForceRefresh(Landroid/widget/ProgressBar;I)V
    .locals 1

    .line 690
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 691
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    const/4 p1, -0x1

    .line 692
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    goto :goto_0

    .line 694
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public static setReaderOverlaysVisiblity(Lcom/amazon/kcp/reader/ui/ReaderLayout;ZZ)V
    .locals 1

    .line 1263
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1266
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    goto :goto_0

    .line 1268
    :cond_0
    sget-object p0, Lcom/amazon/android/util/UIUtils;->TAG:Ljava/lang/String;

    const-string p1, "ReaderActivity is null!"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setViewSize(Landroid/view/View;II)V
    .locals 1

    .line 1027
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1028
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static whoIsStoppingLayout(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1308
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1313
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    if-eqz v0, :cond_1

    .line 1315
    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1317
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move-object v0, p0

    .line 1321
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The layout is being stopped by: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    :goto_1
    return-object v0
.end method
