.class public final Lcom/amazon/ksdk/presets/PageMargin;
.super Ljava/lang/Object;
.source "PageMargin.java"


# instance fields
.field final mBottom:F

.field final mLeft:F

.field final mRight:F

.field final mTop:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/amazon/ksdk/presets/PageMargin;->mTop:F

    .line 24
    iput p2, p0, Lcom/amazon/ksdk/presets/PageMargin;->mBottom:F

    .line 25
    iput p3, p0, Lcom/amazon/ksdk/presets/PageMargin;->mLeft:F

    .line 26
    iput p4, p0, Lcom/amazon/ksdk/presets/PageMargin;->mRight:F

    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/amazon/ksdk/presets/PageMargin;->mBottom:F

    return v0
.end method

.method public getLeft()F
    .locals 1

    .line 38
    iget v0, p0, Lcom/amazon/ksdk/presets/PageMargin;->mLeft:F

    return v0
.end method

.method public getRight()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/amazon/ksdk/presets/PageMargin;->mRight:F

    return v0
.end method

.method public getTop()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/ksdk/presets/PageMargin;->mTop:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageMargin{mTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/PageMargin;->mTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/PageMargin;->mBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/PageMargin;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/PageMargin;->mRight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
