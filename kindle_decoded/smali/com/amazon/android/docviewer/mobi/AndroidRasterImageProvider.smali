.class public final Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;
.super Lcom/amazon/android/docviewer/ImageProvider;
.source "AndroidRasterImageProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_bytes:[B

.field private final m_height:I

.field private final m_id:Ljava/lang/String;

.field private m_originalBitmap:Landroid/graphics/Bitmap;

.field private final m_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[B)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/android/docviewer/ImageProvider;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_id:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_width:I

    .line 23
    iput p3, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_height:I

    .line 24
    iput-object p4, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_bytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/android/docviewer/ImageProvider;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_id:Ljava/lang/String;

    .line 29
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_width:I

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_height:I

    .line 31
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_originalBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_originalBitmap:Landroid/graphics/Bitmap;

    .line 41
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_bytes:[B

    return-void
.end method

.method public createBitmap(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p1}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V

    return-object p1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_bytes:[B

    if-nez v1, :cond_1

    return-object v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_bytes:[B

    new-instance v2, Lcom/amazon/kindle/util/drawing/Dimension;

    iget v3, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_width:I

    iget v4, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_height:I

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    invoke-static {v1, v2, p1}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 71
    :catch_0
    sget-object p1, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load image with id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", out of memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_originalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_bytes:[B

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v1, Lcom/amazon/kindle/util/drawing/Dimension;

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_width:I

    iget v3, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_height:I

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    invoke-static {}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->keepOriginal()Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_bytes:[B

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_width:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_bytes:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_originalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, p2}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V

    return-object p1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_bytes:[B

    if-nez v1, :cond_1

    return-object v0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_bytes:[B

    new-instance v2, Lcom/amazon/kindle/util/drawing/Dimension;

    iget v3, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_width:I

    iget v4, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_height:I

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    invoke-static {v1, v2, p2, p1}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 88
    :catch_0
    sget-object p1, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load image with id:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;->m_id:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", out of memory"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
