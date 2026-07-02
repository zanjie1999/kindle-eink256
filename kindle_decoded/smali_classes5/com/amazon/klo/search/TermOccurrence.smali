.class public Lcom/amazon/klo/search/TermOccurrence;
.super Ljava/lang/Object;
.source "TermOccurrence.java"


# instance fields
.field endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field startPosition:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/klo/search/TermOccurrence;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 14
    iput-object p2, p0, Lcom/amazon/klo/search/TermOccurrence;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 20
    instance-of v0, p1, Lcom/amazon/klo/search/TermOccurrence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, Lcom/amazon/klo/search/TermOccurrence;

    .line 24
    invoke-virtual {p1}, Lcom/amazon/klo/search/TermOccurrence;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    iget-object v2, p0, Lcom/amazon/klo/search/TermOccurrence;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/amazon/klo/search/TermOccurrence;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/klo/search/TermOccurrence;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/klo/search/TermOccurrence;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/klo/search/TermOccurrence;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/amazon/klo/search/TermOccurrence;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    iget-object v2, p0, Lcom/amazon/klo/search/TermOccurrence;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
