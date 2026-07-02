.class public abstract Lcom/amazon/kindle/seekbar/BaseLinearMapper;
.super Ljava/lang/Object;
.source "LinearMapper.kt"

# interfaces
.implements Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;


# instance fields
.field private domainEnd:F

.field private domainStart:F

.field private mirror:Z

.field private rangeEnd:F

.field private rangeStart:F


# direct methods
.method private constructor <init>(FFFFZ)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->domainStart:F

    iput p2, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->domainEnd:F

    iput p3, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->rangeStart:F

    iput p4, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->rangeEnd:F

    iput-boolean p5, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->mirror:Z

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;-><init>(FFFFZ)V

    return-void
.end method


# virtual methods
.method public domain(FF)Lcom/amazon/kindle/seekbar/BaseLinearMapper;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->setDomainStart(F)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->setDomainEnd(F)V

    return-object p0
.end method

.method public bridge synthetic domain(FF)Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->domain(FF)Lcom/amazon/kindle/seekbar/BaseLinearMapper;

    return-object p0
.end method

.method public getDomainEnd()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->domainEnd:F

    return v0
.end method

.method public getDomainStart()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->domainStart:F

    return v0
.end method

.method protected final getDomainWidth()F
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getDomainEnd()F

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getDomainStart()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getMirror()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->mirror:Z

    return v0
.end method

.method public getRangeEnd()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->rangeEnd:F

    return v0
.end method

.method public getRangeStart()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->rangeStart:F

    return v0
.end method

.method protected final getRangeWidth()F
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getRangeEnd()F

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getRangeStart()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public map(F)F
    .locals 1

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->map(FZ)F

    move-result p1

    return p1
.end method

.method protected map(FZ)F
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getDomainStart()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getDomainWidth()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getRangeWidth()F

    move-result v0

    mul-float p1, p1, v0

    .line 101
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getRangeEnd()F

    move-result v0

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getRangeStart()F

    move-result v0

    add-float/2addr v0, p1

    :goto_0
    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getRangeEnd()F

    move-result p1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getRangeStart()F

    move-result p2

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    :cond_1
    return v0
.end method

.method public mapNoClamp(F)F
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->map(FZ)F

    move-result p1

    return p1
.end method

.method public mirror(Z)Lcom/amazon/kindle/seekbar/BaseLinearMapper;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->setMirror(Z)V

    return-object p0
.end method

.method public bridge synthetic mirror(Z)Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->mirror(Z)Lcom/amazon/kindle/seekbar/BaseLinearMapper;

    return-object p0
.end method

.method public range(FF)Lcom/amazon/kindle/seekbar/BaseLinearMapper;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->setRangeStart(F)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->setRangeEnd(F)V

    return-object p0
.end method

.method public bridge synthetic range(FF)Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->range(FF)Lcom/amazon/kindle/seekbar/BaseLinearMapper;

    move-result-object p1

    return-object p1
.end method

.method public setDomainEnd(F)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->domainEnd:F

    return-void
.end method

.method public setDomainStart(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->domainStart:F

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->mirror:Z

    return-void
.end method

.method public setRangeEnd(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->rangeEnd:F

    return-void
.end method

.method public setRangeStart(F)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->rangeStart:F

    return-void
.end method

.method public unmap(F)F
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->unmap(FZ)F

    move-result p1

    return p1
.end method

.method protected unmap(FZ)F
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getRangeStart()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getRangeWidth()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getDomainWidth()F

    move-result v0

    mul-float p1, p1, v0

    .line 115
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getDomainEnd()F

    move-result v0

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getDomainStart()F

    move-result v0

    add-float/2addr v0, p1

    :goto_0
    if-eqz p2, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getDomainEnd()F

    move-result p1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getDomainStart()F

    move-result p2

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    :cond_1
    return v0
.end method

.method public unmapNoClamp(F)F
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->unmap(FZ)F

    move-result p1

    return p1
.end method
