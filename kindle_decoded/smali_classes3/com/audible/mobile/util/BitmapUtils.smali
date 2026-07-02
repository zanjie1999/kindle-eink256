.class public final Lcom/audible/mobile/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/util/BitmapUtils;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/util/BitmapUtils;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-gt p0, p2, :cond_0

    if-le p1, p3, :cond_1

    .line 99
    :cond_0
    div-int/lit8 p0, p0, 0x2

    .line 100
    div-int/lit8 p1, p1, 0x2

    .line 104
    :goto_0
    div-int v1, p0, v0

    if-le v1, p2, :cond_1

    div-int v1, p1, v0

    if-le v1, p3, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static calculateOriginalImageSize(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 89
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 90
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    return p0
.end method

.method public static rescaleImage(Landroid/content/Context;ILjava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 4

    .line 39
    instance-of v0, p2, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    .line 40
    check-cast p2, Ljava/io/BufferedInputStream;

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v0

    :goto_0
    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 49
    invoke-static {p2}, Lcom/audible/mobile/util/BitmapUtils;->calculateOriginalImageSize(Ljava/io/InputStream;)I

    move-result v0

    .line 50
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->reset()V

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 52
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->reset()V

    .line 53
    invoke-static {v0, v0, p0, p0}, Lcom/audible/mobile/util/BitmapUtils;->calculateInSampleSize(IIII)I

    move-result p1

    .line 54
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->reset()V

    .line 55
    invoke-static {p2, p1}, Lcom/audible/mobile/util/BitmapUtils;->retrieveSampledImage(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 58
    :try_start_1
    sget-object p0, Lcom/audible/mobile/util/BitmapUtils;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Unable to retrieve sample"

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 61
    invoke-static {p1, p0, p0, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    :cond_2
    invoke-static {p2}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    :goto_2
    move-object p1, v1

    .line 64
    :goto_3
    :try_start_2
    sget-object v0, Lcom/audible/mobile/util/BitmapUtils;->LOGGER:Lorg/slf4j/Logger;

    sget-object v2, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p0}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    if-eqz p1, :cond_3

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    :cond_3
    invoke-static {p2}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, p1

    :goto_4
    if-eqz v1, :cond_4

    if-eqz v1, :cond_4

    .line 68
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    :cond_4
    invoke-static {p2}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    throw p0
.end method

.method private static retrieveSampledImage(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 78
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 79
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 81
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 p1, 0x0

    .line 82
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
