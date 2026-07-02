.class public Lcom/amazon/kindle/speedreading/amplifier/NotableClip;
.super Ljava/lang/Object;
.source "NotableClip.java"


# instance fields
.field private endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private id:I

.field private startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private tokenCount:I


# direct methods
.method public constructor <init>(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->id:I

    .line 16
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 17
    iput-object p3, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 18
    iput p4, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->tokenCount:I

    return-void
.end method


# virtual methods
.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public isWithinPage(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
