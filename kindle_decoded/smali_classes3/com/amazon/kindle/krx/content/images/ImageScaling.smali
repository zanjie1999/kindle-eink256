.class public Lcom/amazon/kindle/krx/content/images/ImageScaling;
.super Ljava/lang/Object;
.source "ImageScaling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;,
        Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;
    }
.end annotation


# instance fields
.field public final imageSize:Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;

.field public final policy:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

.field public final sampleSizeRoundingFactor:F


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;F)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->policy:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    .line 79
    iput-object p2, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->imageSize:Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;

    .line 80
    iput p3, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->sampleSizeRoundingFactor:F

    return-void
.end method

.method public static keepOriginal()Lcom/amazon/kindle/krx/content/images/ImageScaling;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static shrinkToFit(II)Lcom/amazon/kindle/krx/content/images/ImageScaling;
    .locals 3

    .line 100
    new-instance v0, Lcom/amazon/kindle/krx/content/images/ImageScaling;

    sget-object v1, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;->ShrinkToFit:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    new-instance v2, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;-><init>(II)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/kindle/krx/content/images/ImageScaling;-><init>(Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;F)V

    return-object v0
.end method

.method public static shrinkToFit(IIF)Lcom/amazon/kindle/krx/content/images/ImageScaling;
    .locals 3

    .line 112
    new-instance v0, Lcom/amazon/kindle/krx/content/images/ImageScaling;

    sget-object v1, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;->ShrinkToFit:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    new-instance v2, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;-><init>(II)V

    invoke-direct {v0, v1, v2, p2}, Lcom/amazon/kindle/krx/content/images/ImageScaling;-><init>(Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;F)V

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

    .line 153
    const-class v2, Lcom/amazon/kindle/krx/content/images/ImageScaling;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    check-cast p1, Lcom/amazon/kindle/krx/content/images/ImageScaling;

    .line 158
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->policy:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    iget-object v3, p1, Lcom/amazon/kindle/krx/content/images/ImageScaling;->policy:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    if-eq v2, v3, :cond_2

    return v1

    .line 161
    :cond_2
    iget v2, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->sampleSizeRoundingFactor:F

    iget v3, p1, Lcom/amazon/kindle/krx/content/images/ImageScaling;->sampleSizeRoundingFactor:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 164
    :cond_3
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->imageSize:Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;

    iget-object p1, p1, Lcom/amazon/kindle/krx/content/images/ImageScaling;->imageSize:Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->equals(Ljava/lang/Object;)Z

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

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->imageSize:Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 142
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->policy:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    iget v1, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->sampleSizeRoundingFactor:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
