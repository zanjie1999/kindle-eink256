.class public Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;
.super Ljava/lang/Object;
.source "AndroidOSSupportedImage.java"

# interfaces
.implements Lcom/mobipocket/android/drawing/AndroidImage;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final futureDimension:Lcom/amazon/kindle/util/drawing/Dimension;

.field private imageData:[B

.field private final srcDimension:Lcom/amazon/kindle/util/drawing/Dimension;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 46
    iget v0, p2, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    if-lez v0, :cond_0

    iget v1, p2, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    if-lez v1, :cond_0

    .line 50
    new-instance v2, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    sget-object v3, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;->Fit:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    new-instance v4, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {v4, v0, v1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v0}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;-><init>(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;Lcom/amazon/kindle/util/drawing/Dimension;F)V

    invoke-static {p1, v2}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    .line 51
    new-instance v0, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    .line 52
    iput-object p2, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must be > 0 and image must be valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    .line 63
    iput-object p3, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    .line 64
    iput-object p2, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    .line 65
    iget v0, p2, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget p2, p2, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-static {v0, p2}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(II)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public fetch()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->isFetched()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->imageData:[B

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v3, v0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    iget-object v4, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v5, v4, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    div-int/2addr v3, v5

    .line 138
    iget v0, v0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v4, v4, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    div-int/2addr v0, v4

    if-lt v0, v1, :cond_3

    if-ge v3, v1, :cond_2

    goto :goto_0

    :cond_2
    if-le v0, v3, :cond_4

    move v3, v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 146
    :cond_4
    :goto_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 147
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 148
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 149
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 150
    iget-object v3, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->imageData:[B

    array-length v4, v3

    invoke-static {v3, v2, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    .line 153
    iput-object v3, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->imageData:[B

    :cond_5
    if-eqz v0, :cond_7

    .line 159
    iget-object v3, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v3, v3, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v3, v3, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 162
    :cond_6
    iget-object v3, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v4, v3, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v3, v3, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-static {v0, v4, v3, v1}, Lcom/amazon/android/util/UIUtils;->createDitheredScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 165
    :cond_7
    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    .line 168
    :goto_2
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public getBitmapImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->isFetched()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->fetch()Z

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isFetched()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
