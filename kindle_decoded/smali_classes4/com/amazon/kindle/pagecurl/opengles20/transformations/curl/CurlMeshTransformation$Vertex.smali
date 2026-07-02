.class Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;
.super Ljava/lang/Object;
.source "CurlMeshTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vertex"
.end annotation


# instance fields
.field public mAlpha:D

.field public mBackTexX:D

.field public mBackTexY:D

.field public mColor:D

.field public mPenumbraX:D

.field public mPenumbraY:D

.field public mPosX:D

.field public mPosY:D

.field public mPosZ:D

.field public mTexX:D

.field public mTexY:D


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;)V
    .locals 2

    .line 1795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1796
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1797
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mAlpha:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mColor:D

    return-void
.end method


# virtual methods
.method public rotateZ(D)V
    .locals 10

    .line 1806
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 1807
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    .line 1808
    iget-wide v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    mul-double v4, v2, v0

    iget-wide v6, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    mul-double v8, v6, p1

    add-double/2addr v4, v8

    neg-double v8, p1

    mul-double v2, v2, v8

    mul-double v6, v6, v0

    add-double/2addr v2, v6

    .line 1810
    iput-wide v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    .line 1811
    iput-wide v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    .line 1812
    iget-wide v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    mul-double v4, v2, v0

    iget-wide v6, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    mul-double p1, p1, v6

    add-double/2addr v4, p1

    mul-double v2, v2, v8

    mul-double v6, v6, v0

    add-double/2addr v2, v6

    .line 1814
    iput-wide v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    .line 1815
    iput-wide v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    return-void
.end method

.method public set(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V
    .locals 2

    .line 1819
    iget-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    .line 1820
    iget-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    .line 1821
    iget-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    .line 1822
    iget-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    .line 1823
    iget-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D

    .line 1824
    iget-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    .line 1825
    iget-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D

    .line 1826
    iget-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    .line 1827
    iget-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    .line 1828
    iget-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mColor:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mColor:D

    .line 1829
    iget-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mAlpha:D

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mAlpha:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(DD)V
    .locals 2

    .line 1833
    iget-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    .line 1834
    iget-wide p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    return-void
.end method
