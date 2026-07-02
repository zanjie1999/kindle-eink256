.class public Lcom/amazon/kindle/rendering/KRIFTextPositionRange;
.super Ljava/lang/Object;
.source "KRIFTextPositionRange.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IPositionRange;


# instance fields
.field private final firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 15
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method


# virtual methods
.method public contains(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 31
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 32
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 47
    const-class v2, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 51
    :cond_1
    check-cast p1, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;

    .line 53
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 56
    :cond_3
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object p1, p1, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_4

    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public overlaps(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 38
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 39
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->firstPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;->lastPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
