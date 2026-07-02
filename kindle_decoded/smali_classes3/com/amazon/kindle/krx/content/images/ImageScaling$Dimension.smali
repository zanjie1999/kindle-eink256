.class public final Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;
.super Ljava/lang/Object;
.source "ImageScaling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/content/images/ImageScaling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dimension"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->width:I

    .line 39
    iput p2, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 59
    :cond_1
    const-class v2, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 61
    :cond_2
    check-cast p1, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;

    .line 62
    iget v2, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->height:I

    iget v3, p1, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->height:I

    if-eq v2, v3, :cond_3

    return v1

    .line 64
    :cond_3
    iget v2, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->width:I

    iget p1, p1, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->width:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 47
    iget v0, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->height:I

    const/16 v1, 0x25

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 48
    iget v1, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->width:I

    add-int/2addr v0, v1

    return v0
.end method
