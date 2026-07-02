.class public final Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/images/BitmapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScalingOptions"
.end annotation


# instance fields
.field public final imageSize:Lcom/amazon/kindle/util/drawing/Dimension;

.field public final policy:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

.field public final sampleSizeRoundingFactor:F


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;Lcom/amazon/kindle/util/drawing/Dimension;F)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->policy:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    .line 38
    iput-object p2, p0, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->imageSize:Lcom/amazon/kindle/util/drawing/Dimension;

    .line 39
    iput p3, p0, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->sampleSizeRoundingFactor:F

    return-void
.end method

.method public static keepOriginal()Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static shrinkToFit(II)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;
    .locals 3

    .line 48
    new-instance v0, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    sget-object v1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;->ShrinkToFit:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    new-instance v2, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;-><init>(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;Lcom/amazon/kindle/util/drawing/Dimension;F)V

    return-object v0
.end method

.method public static shrinkToFit(IIF)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;
    .locals 3

    .line 52
    new-instance v0, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    sget-object v1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;->ShrinkToFit:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    new-instance v2, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    invoke-direct {v0, v1, v2, p2}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;-><init>(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;Lcom/amazon/kindle/util/drawing/Dimension;F)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 86
    const-class v2, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    check-cast p1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    .line 91
    iget-object v2, p0, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->policy:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    iget-object v3, p1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->policy:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    if-eq v2, v3, :cond_2

    return v1

    .line 94
    :cond_2
    iget v2, p0, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->sampleSizeRoundingFactor:F

    iget v3, p1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->sampleSizeRoundingFactor:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->imageSize:Lcom/amazon/kindle/util/drawing/Dimension;

    iget-object p1, p1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->imageSize:Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/util/drawing/Dimension;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->imageSize:Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-virtual {v0}, Lcom/amazon/kindle/util/drawing/Dimension;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget-object v2, p0, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->policy:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget v1, p0, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->sampleSizeRoundingFactor:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
