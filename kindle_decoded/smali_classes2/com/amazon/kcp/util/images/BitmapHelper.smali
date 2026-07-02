.class public final Lcom/amazon/kcp/util/images/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;,
        Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kcp/util/images/BitmapHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/images/BitmapHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDitheredScaledBitmap(Landroid/graphics/Bitmap;IIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 206
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 207
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 208
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 209
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 211
    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p3, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0, p3, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p4
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    .line 227
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 229
    :cond_0
    new-instance v0, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    .line 230
    invoke-static {v0, p1}, Lcom/amazon/kcp/util/images/BitmapHelper;->getScaledSize(Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p1

    .line 233
    iget v0, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 234
    :cond_2
    :goto_0
    iget v0, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createScaledBitmap([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createScaledBitmap([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 144
    invoke-static {p1, p2}, Lcom/amazon/kcp/util/images/BitmapHelper;->getScaledSize(Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    .line 151
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 152
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 154
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    invoke-static {p1, v0, p2}, Lcom/amazon/kcp/util/images/BitmapHelper;->getSampleSizeFactor(Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)I

    move-result p2

    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x1

    .line 156
    iput-boolean p2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 157
    iput-boolean p2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz p3, :cond_0

    .line 160
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    if-ne v3, p1, :cond_0

    .line 161
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 164
    :cond_0
    array-length p1, p0

    invoke-static {p0, v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 170
    :cond_1
    iget p1, v0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne p1, v1, :cond_2

    iget p1, v0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq p1, v1, :cond_3

    .line 171
    :cond_2
    iget p1, v0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v0, v0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-static {p0, p1, v0, p2, p3}, Lcom/amazon/kcp/util/images/BitmapHelper;->createDitheredScaledBitmap(Landroid/graphics/Bitmap;IIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 172
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, p1

    :cond_3
    return-object p0
.end method

.method private static final getSampleSizeFactor(Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)I
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 325
    :cond_0
    iget v1, p0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget v3, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p2, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->sampleSizeRoundingFactor:F

    add-float/2addr v1, v3

    float-to-double v3, v1

    .line 326
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 328
    iget p0, p0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    int-to-float p0, p0

    mul-float p0, p0, v2

    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    iget p1, p2, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->sampleSizeRoundingFactor:F

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 329
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    if-lt v1, v0, :cond_2

    if-ge p0, v0, :cond_1

    goto :goto_0

    .line 331
    :cond_1
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static final getScaledSize(Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 6

    if-nez p1, :cond_0

    return-object p0

    .line 288
    :cond_0
    iget-object v0, p1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->imageSize:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v1, v0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 289
    iget v0, v0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    int-to-float v0, v0

    iget v2, p0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 290
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    .line 292
    iget-object v2, p1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->policy:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    sget-object v3, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;->ShrinkToFit:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    if-ne v2, v3, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    return-object p0

    .line 295
    :cond_1
    iget v2, p0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    int-to-double v2, v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    .line 296
    iget v2, p0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    int-to-double v4, v2

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    if-eqz v3, :cond_2

    if-nez v1, :cond_3

    .line 299
    :cond_2
    sget-object v0, Lcom/amazon/kcp/util/images/BitmapHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaled width / height is zero. Requested dimensions: (W: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->imageSize:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v4, v4, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " H: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->imageSize:Lcom/amazon/kindle/util/drawing/Dimension;

    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") Original dimensions: (W: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 303
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 304
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 307
    :cond_3
    new-instance p0, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {p0, v3, v1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    return-object p0
.end method

.method public static final getSourceSize([B)Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 3

    .line 311
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 312
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 313
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 314
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    :cond_0
    new-instance p0, Lcom/amazon/kindle/util/drawing/Dimension;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    return-object p0
.end method
