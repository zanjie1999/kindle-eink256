.class public final Lcom/amazon/kindle/seekbar/LinearMapper;
.super Lcom/amazon/kindle/seekbar/BaseLinearMapper;
.source "LinearMapper.kt"


# instance fields
.field private domainEnd:F

.field private domainStart:F

.field private mirror:Z

.field private rangeEnd:F

.field private rangeStart:F


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/seekbar/LinearMapper;-><init>(FFFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 140
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;-><init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->domainStart:F

    iput p2, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->domainEnd:F

    iput p3, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->rangeStart:F

    iput p4, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->rangeEnd:F

    iput-boolean p5, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->mirror:Z

    return-void
.end method

.method public synthetic constructor <init>(FFFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 p7, 0x0

    goto :goto_0

    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    const/4 p6, 0x0

    goto :goto_4

    :cond_4
    move p6, p5

    :goto_4
    move-object p1, p0

    move p2, p7

    move p3, v1

    move p4, v2

    move p5, v0

    .line 139
    invoke-direct/range {p1 .. p6}, Lcom/amazon/kindle/seekbar/LinearMapper;-><init>(FFFFZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/seekbar/LinearMapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/seekbar/LinearMapper;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getDomainStart()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/LinearMapper;->getDomainStart()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getDomainEnd()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/LinearMapper;->getDomainEnd()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getRangeStart()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/LinearMapper;->getRangeStart()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getRangeEnd()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/LinearMapper;->getRangeEnd()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getMirror()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/LinearMapper;->getMirror()Z

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getDomainEnd()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->domainEnd:F

    return v0
.end method

.method public getDomainStart()F
    .locals 1

    .line 135
    iget v0, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->domainStart:F

    return v0
.end method

.method public getMirror()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->mirror:Z

    return v0
.end method

.method public getRangeEnd()F
    .locals 1

    .line 138
    iget v0, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->rangeEnd:F

    return v0
.end method

.method public getRangeStart()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->rangeStart:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getDomainStart()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getDomainEnd()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getRangeStart()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getRangeEnd()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getMirror()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setDomainEnd(F)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->domainEnd:F

    return-void
.end method

.method public setDomainStart(F)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->domainStart:F

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->mirror:Z

    return-void
.end method

.method public setRangeEnd(F)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->rangeEnd:F

    return-void
.end method

.method public setRangeStart(F)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/amazon/kindle/seekbar/LinearMapper;->rangeStart:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinearMapper(domainStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getDomainStart()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", domainEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getDomainEnd()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rangeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getRangeStart()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rangeEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getRangeEnd()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mirror="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getMirror()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
