.class public Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;
.super Lcom/amazon/android/docviewer/ImageProvider;
.source "KRFNativeImageProvider.java"


# instance fields
.field private mHeight:I

.field private mId:Ljava/lang/String;

.field mIsClosed:Z

.field private mKindleDocPtr:J

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/amazon/android/docviewer/ImageProvider;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mIsClosed:Z

    .line 29
    iput-object p2, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getKrfKindleDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mKindleDocPtr:J

    .line 31
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getKrfKindleDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->createImage(Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mHeight:I

    .line 38
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mWidth:I

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->delete()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mIsClosed:Z

    .line 35
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load image with id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mIsClosed:Z

    return-void
.end method

.method public createBitmap(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;
    .locals 3

    .line 51
    iget-boolean v0, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mIsClosed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    new-instance v0, Lcom/amazon/kindle/util/drawing/Dimension;

    iget v1, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mWidth:I

    iget v2, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    .line 54
    invoke-static {v0, p1}, Lcom/amazon/kcp/util/images/BitmapHelper;->getScaledSize(Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v0

    .line 55
    iget v1, v0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v0, v0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->updateBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getHeight()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mWidth:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mIsClosed:Z

    return v0
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;
    .locals 2

    .line 86
    iget-boolean p2, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mIsClosed:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 91
    iget-wide v0, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mKindleDocPtr:J

    iget-object p2, p0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;->mId:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1}, Lcom/amazon/kindle/jni/KindleReaderJNI;->decodeImageFromResourceID(JLjava/lang/String;Landroid/graphics/Bitmap;)Z

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V

    return-object p1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
