.class public Lcom/amazon/kindle/pagecurl/opengles20/DarkShadowProvider;
.super Ljava/lang/Object;
.source "DarkShadowProvider.java"

# interfaces
.implements Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;


# instance fields
.field private final SHADOW_INNER_COLOR:[F

.field private final SHADOW_OUTER_COLOR:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/DarkShadowProvider;->SHADOW_INNER_COLOR:[F

    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/DarkShadowProvider;->SHADOW_OUTER_COLOR:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getBackShadow(DD)Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;
    .locals 4

    .line 19
    new-instance p1, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;

    invoke-direct {p1}, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;-><init>()V

    .line 21
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraX:D

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraY:D

    .line 25
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    const-wide v2, 0x3fecccccc0000000L    # 0.8999999761581421

    mul-double p2, p2, v2

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr p2, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraColor:D

    return-object p1
.end method

.method public getDropShadow(DDDD)Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;
    .locals 3

    .line 32
    new-instance v0, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;

    invoke-direct {v0}, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;-><init>()V

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double v1, p5, v1

    neg-double p1, p1

    mul-double p1, p1, v1

    .line 34
    iput-wide p1, v0, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraX:D

    neg-double p1, p3

    mul-double v1, v1, p1

    .line 35
    iput-wide v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraY:D

    div-double/2addr p5, p7

    .line 36
    iput-wide p5, v0, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraColor:D

    return-object v0
.end method

.method public getSelfShadow(DDDD)Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;
    .locals 0

    .line 43
    new-instance p1, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;

    invoke-direct {p1}, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;-><init>()V

    sub-double/2addr p5, p7

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    div-double p2, p5, p2

    .line 45
    iput-wide p2, p1, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraX:D

    .line 46
    iput-wide p2, p1, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraY:D

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    mul-double p7, p7, p2

    div-double/2addr p5, p7

    .line 47
    iput-wide p5, p1, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraColor:D

    return-object p1
.end method

.method public getShadowInnerColor()[F
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/DarkShadowProvider;->SHADOW_INNER_COLOR:[F

    return-object v0
.end method

.method public getShadowOuterColor()[F
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/DarkShadowProvider;->SHADOW_OUTER_COLOR:[F

    return-object v0
.end method
