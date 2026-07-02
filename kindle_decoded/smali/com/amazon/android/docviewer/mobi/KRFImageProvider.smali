.class final Lcom/amazon/android/docviewer/mobi/KRFImageProvider;
.super Lcom/amazon/android/docviewer/ImageProvider;
.source "KRFImageProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

.field private final m_id:Ljava/lang/String;

.field private m_maxScratchReached:Z

.field private m_scaledHeight:I

.field private m_scaledWidth:I

.field private m_scratchBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/amazon/android/docviewer/ImageProvider;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_id:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;

    const/16 v1, 0xff

    invoke-direct {v0, v1, v1, v1}, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;-><init>(SSS)V

    invoke-static {p2, p1, v0}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->createImageRenderingHelper(Lcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    return-void
.end method

.method private ensureScratchOfSize(II)F
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scratchBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scratchBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    .line 154
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scratchBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 155
    iget-boolean v2, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_maxScratchReached:Z

    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scratchBitmap:Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 156
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 160
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scratchBitmap:Landroid/graphics/Bitmap;

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    int-to-float v2, p1

    mul-float v2, v2, v0

    float-to-int v2, v2

    shr-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x7

    const/16 v3, 0x80

    add-int/2addr v2, v3

    int-to-float v4, p2

    mul-float v4, v4, v0

    float-to-int v4, v4

    shr-int/lit8 v4, v4, 0x7

    shl-int/lit8 v4, v4, 0x7

    add-int/2addr v4, v3

    .line 169
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scratchBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    cmpg-float p1, v0, v1

    if-gez p1, :cond_4

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_maxScratchReached:Z

    :cond_4
    return v0

    :catch_0
    move-exception v2

    if-eq v4, v3, :cond_5

    const v2, 0x3f666666    # 0.9f

    mul-float v0, v0, v2

    goto :goto_1

    .line 173
    :cond_5
    throw v2
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scratchBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scratchBitmap:Landroid/graphics/Bitmap;

    .line 37
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->delete()V

    .line 38
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    return-void
.end method

.method public createBitmap(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    .line 59
    :try_start_0
    new-instance v1, Lcom/amazon/kindle/util/drawing/Dimension;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->getImageWidth()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->getImageHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    .line 60
    invoke-static {v1, p1}, Lcom/amazon/kcp/util/images/BitmapHelper;->getScaledSize(Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p1

    .line 61
    iget v2, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v3, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    invoke-static {v2}, Lcom/amazon/kindle/krf/KRFLibrary;->createGraphicsContext(Ljava/lang/Object;)Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :try_start_2
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    new-instance v5, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    iget v6, v1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v1, v1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    const/4 v7, 0x0

    invoke-direct {v5, v7, v7, v6, v1}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;-><init>(IIII)V

    new-instance v1, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    iget v6, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-direct {v1, v7, v7, v6, p1}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;-><init>(IIII)V

    invoke-virtual {v4, v3, v5, v1}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->render(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 72
    :try_start_3
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->delete()V

    :cond_0
    invoke-static {v2}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->delete()V

    .line 73
    :cond_1
    throw p1
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    :catch_0
    sget-object p1, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load image with id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", out of memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 10

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->getWidth()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->getHeight()I

    move-result v1

    .line 115
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 116
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float v4, v4, v2

    .line 117
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v5, v1

    mul-float v5, v5, v3

    .line 118
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 120
    invoke-direct {p0, v4, v5}, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->ensureScratchOfSize(II)F

    move-result v6

    mul-float v2, v2, v6

    mul-float v3, v3, v6

    int-to-float v4, v4

    mul-float v4, v4, v6

    .line 124
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v5, v5

    mul-float v5, v5, v6

    .line 125
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 127
    iget v6, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scaledWidth:I

    if-ne v4, v6, :cond_0

    iget v6, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scaledHeight:I

    if-eq v5, v6, :cond_2

    .line 128
    :cond_0
    iput v4, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scaledWidth:I

    .line 129
    iput v5, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scaledHeight:I

    .line 130
    iget-object v6, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scratchBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/amazon/kindle/krf/KRFLibrary;->createGraphicsContext(Ljava/lang/Object;)Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    return-void

    .line 134
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    new-instance v8, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v0, v1}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;-><init>(IIII)V

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    invoke-direct {v0, v9, v9, v4, v5}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;-><init>(IIII)V

    invoke-virtual {v7, v6, v8, v0}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->render(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :try_start_2
    invoke-virtual {v6}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->delete()V

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scratchBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V

    .line 141
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    .line 142
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    .line 143
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float p2, p2, v3

    .line 144
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-direct {v0, v1, v4, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_scratchBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 138
    invoke-virtual {v6}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->delete()V

    .line 139
    throw p1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    :catch_0
    sget-object p1, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to load image with id:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_id:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", out of memory"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    invoke-static {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 86
    sget-object p1, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->TAG:Ljava/lang/String;

    const-string p2, "input bitmap is null so update is ignored"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 91
    :cond_0
    :try_start_0
    new-instance v1, Lcom/amazon/kindle/util/drawing/Dimension;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->getImageWidth()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->getImageHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    .line 92
    invoke-static {v1, p2}, Lcom/amazon/kcp/util/images/BitmapHelper;->getScaledSize(Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    invoke-static {p1}, Lcom/amazon/kindle/krf/KRFLibrary;->createGraphicsContext(Ljava/lang/Object;)Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    :try_start_2
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_helper:Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    new-instance v4, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    iget v5, v1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v1, v1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5, v1}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;-><init>(IIII)V

    new-instance v1, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    iget v5, p2, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget p2, p2, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-direct {v1, v6, v6, v5, p2}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;-><init>(IIII)V

    invoke-virtual {v3, v2, v4, v1}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->render(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 101
    :try_start_3
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->delete()V

    :cond_1
    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->delete()V

    .line 102
    :cond_2
    throw p1
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    .line 105
    :catch_0
    sget-object p1, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load image with id:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;->m_id:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", out of memory"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
