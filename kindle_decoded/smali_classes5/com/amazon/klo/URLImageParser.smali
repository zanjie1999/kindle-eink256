.class public Lcom/amazon/klo/URLImageParser;
.super Ljava/lang/Object;
.source "URLImageParser.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;,
        Lcom/amazon/klo/URLImageParser$ContentType;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field private static final DATA_PREFIX:Ljava/lang/String; = "data:"

.field private static final HTTP_PREFIX:Ljava/lang/String; = "http:"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final container:Landroid/view/View;

.field final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/klo/URLImageParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/klo/URLImageParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/klo/URLImageParser;->cache:Landroid/util/LruCache;

    .line 45
    iput-object p2, p0, Lcom/amazon/klo/URLImageParser;->context:Landroid/content/Context;

    .line 46
    iput-object p1, p0, Lcom/amazon/klo/URLImageParser;->container:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/klo/URLImageParser;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/klo/URLImageParser;->fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/klo/URLImageParser;Ljava/lang/String;Lcom/amazon/klo/URLDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/klo/URLImageParser;->updateDrawable(Ljava/lang/String;Lcom/amazon/klo/URLDrawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private fetch(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 188
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 190
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 120
    :try_start_0
    invoke-static {p1}, Lcom/amazon/klo/URLImageParser;->getContentType(Ljava/lang/String;)Lcom/amazon/klo/URLImageParser$ContentType;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/amazon/klo/URLImageParser$ContentType;->WEB_BASED:Lcom/amazon/klo/URLImageParser$ContentType;

    if-ne v0, v1, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/amazon/klo/URLImageParser;->getDrawableFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_0
    sget-object v1, Lcom/amazon/klo/URLImageParser$ContentType;->DATA:Lcom/amazon/klo/URLImageParser$ContentType;

    if-ne v0, v1, :cond_1

    const-string v0, ","

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/klo/URLImageParser;->getDrawableFromData(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 131
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/klo/URLImageParser;->getDrawableFromData(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 137
    sget-object v0, Lcom/amazon/klo/URLImageParser;->TAG:Ljava/lang/String;

    const-string v1, "Failed loading image"

    invoke-static {v0, v1, p1}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static getContentType(Ljava/lang/String;)Lcom/amazon/klo/URLImageParser$ContentType;
    .locals 1

    const-string v0, "http:"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object p0, Lcom/amazon/klo/URLImageParser$ContentType;->WEB_BASED:Lcom/amazon/klo/URLImageParser$ContentType;

    return-object p0

    :cond_0
    const-string v0, "data:"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 57
    sget-object p0, Lcom/amazon/klo/URLImageParser$ContentType;->DATA:Lcom/amazon/klo/URLImageParser$ContentType;

    return-object p0

    .line 59
    :cond_1
    sget-object p0, Lcom/amazon/klo/URLImageParser$ContentType;->DATA_MISSING_PREFIX:Lcom/amazon/klo/URLImageParser$ContentType;

    return-object p0
.end method

.method private getDensitySpecificDimensions(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 7

    .line 167
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 169
    invoke-direct {p0}, Lcom/amazon/klo/URLImageParser;->getMaxWidth()I

    move-result v1

    int-to-double v1, v1

    .line 170
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v4

    float-to-double v3, v3

    .line 171
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-double v5, p1

    cmpl-double p1, v3, v1

    if-lez p1, :cond_0

    div-double v3, v1, v3

    mul-double v5, v5, v3

    goto :goto_0

    :cond_0
    move-wide v1, v3

    .line 180
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    double-to-int v0, v1

    double-to-int v1, v5

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private getDrawableFromData(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    .line 156
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 157
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 158
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/amazon/klo/URLImageParser;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 159
    invoke-direct {p0, v1}, Lcom/amazon/klo/URLImageParser;->getDensitySpecificDimensions(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v1
.end method

.method private getDrawableFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/klo/URLImageParser;->fetch(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string/jumbo v0, "src"

    .line 146
    invoke-static {p1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Lcom/amazon/klo/URLImageParser;->getDensitySpecificDimensions(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p1
.end method

.method private getMaxWidth()I
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/amazon/klo/URLImageParser;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 92
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 96
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    float-to-double v0, v0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private updateDrawable(Ljava/lang/String;Lcom/amazon/klo/URLDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/amazon/klo/URLImageParser;->cache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/URLImageParser;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p2, p3}, Lcom/amazon/klo/URLDrawable;->loadDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-static {p1}, Lcom/amazon/klo/URLImageParser;->getContentType(Ljava/lang/String;)Lcom/amazon/klo/URLImageParser$ContentType;

    move-result-object p1

    sget-object p2, Lcom/amazon/klo/URLImageParser$ContentType;->WEB_BASED:Lcom/amazon/klo/URLImageParser$ContentType;

    if-ne p1, p2, :cond_0

    .line 109
    iget-object p1, p0, Lcom/amazon/klo/URLImageParser;->container:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 110
    iget-object p1, p0, Lcom/amazon/klo/URLImageParser;->container:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 195
    invoke-direct {p0}, Lcom/amazon/klo/URLImageParser;->getMaxWidth()I

    move-result v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 64
    new-instance v0, Lcom/amazon/klo/URLDrawable;

    invoke-direct {v0}, Lcom/amazon/klo/URLDrawable;-><init>()V

    .line 66
    new-instance v1, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;-><init>(Lcom/amazon/klo/URLImageParser;Lcom/amazon/klo/URLDrawable;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/amazon/klo/URLImageParser;->cache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/URLImageParser;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 72
    invoke-static {p1}, Lcom/amazon/klo/URLImageParser;->getContentType(Ljava/lang/String;)Lcom/amazon/klo/URLImageParser$ContentType;

    move-result-object v3

    sget-object v4, Lcom/amazon/klo/URLImageParser$ContentType;->WEB_BASED:Lcom/amazon/klo/URLImageParser$ContentType;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 74
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/klo/URLImageParser;->fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 82
    :cond_1
    invoke-direct {p0, p1, v0, v2}, Lcom/amazon/klo/URLImageParser;->updateDrawable(Ljava/lang/String;Lcom/amazon/klo/URLDrawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object v0
.end method
