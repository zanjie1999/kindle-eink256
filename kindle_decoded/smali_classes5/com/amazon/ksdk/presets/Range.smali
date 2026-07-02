.class public final Lcom/amazon/ksdk/presets/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field final mLowerBound:F

.field final mUpperBound:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/amazon/ksdk/presets/Range;->mLowerBound:F

    .line 17
    iput p2, p0, Lcom/amazon/ksdk/presets/Range;->mUpperBound:F

    return-void
.end method


# virtual methods
.method public getLowerBound()F
    .locals 1

    .line 21
    iget v0, p0, Lcom/amazon/ksdk/presets/Range;->mLowerBound:F

    return v0
.end method

.method public getUpperBound()F
    .locals 1

    .line 25
    iget v0, p0, Lcom/amazon/ksdk/presets/Range;->mUpperBound:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Range{mLowerBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/Range;->mLowerBound:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mUpperBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/Range;->mUpperBound:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
