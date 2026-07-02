.class public Lcom/amazon/kindle/krx/reader/PositionRange;
.super Ljava/lang/Object;
.source "PositionRange.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IPositionRange;


# instance fields
.field private end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private start:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid PositionRange. End position should be after Start position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/PositionRange;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 18
    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/PositionRange;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method


# virtual methods
.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PositionRange;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/PositionRange;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/PositionRange;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/PositionRange;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
