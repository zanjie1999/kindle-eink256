.class public final Lcom/amazon/ksdk/presets/Color;
.super Ljava/lang/Object;
.source "Color.java"


# instance fields
.field final mAlpha:F

.field final mBlue:I

.field final mGreen:I

.field final mRed:I


# direct methods
.method public constructor <init>(IIIF)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/amazon/ksdk/presets/Color;->mRed:I

    .line 24
    iput p2, p0, Lcom/amazon/ksdk/presets/Color;->mGreen:I

    .line 25
    iput p3, p0, Lcom/amazon/ksdk/presets/Color;->mBlue:I

    .line 26
    iput p4, p0, Lcom/amazon/ksdk/presets/Color;->mAlpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/amazon/ksdk/presets/Color;->mAlpha:F

    return v0
.end method

.method public getBlue()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/amazon/ksdk/presets/Color;->mBlue:I

    return v0
.end method

.method public getGreen()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/amazon/ksdk/presets/Color;->mGreen:I

    return v0
.end method

.method public getRed()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/ksdk/presets/Color;->mRed:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color{mRed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/Color;->mRed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mGreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/Color;->mGreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mBlue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/Color;->mBlue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/Color;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
