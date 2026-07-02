.class public Lcom/amazon/kindle/model/Annotations/ReaderPosition;
.super Lcom/amazon/kindle/model/Annotations/AbstractPosition;
.source "ReaderPosition.java"


# instance fields
.field private final longPosition:Ljava/lang/String;

.field private final shortPosition:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;-><init>()V

    .line 11
    iput p1, p0, Lcom/amazon/kindle/model/Annotations/ReaderPosition;->shortPosition:I

    .line 12
    iput-object p2, p0, Lcom/amazon/kindle/model/Annotations/ReaderPosition;->longPosition:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 1

    .line 32
    instance-of v0, p1, Lcom/amazon/kindle/model/Annotations/ICanInterpretLongPosition;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {p1, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    neg-int p1, p1

    return p1

    .line 35
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    instance-of v0, p1, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    .line 43
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIntPosition()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/amazon/kindle/model/Annotations/ReaderPosition;->shortPosition:I

    return v0
.end method

.method public getLongPosition()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/model/Annotations/ReaderPosition;->longPosition:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/model/Annotations/ReaderPosition;->longPosition:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/model/Annotations/ReaderPosition;->shortPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
