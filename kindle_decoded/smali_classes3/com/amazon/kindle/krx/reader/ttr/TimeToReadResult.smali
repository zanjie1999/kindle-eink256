.class public Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;
.super Lcom/amazon/kindle/krx/reader/ttr/BaseTimeToReadResult;
.source "TimeToReadResult.java"


# instance fields
.field private final end:I

.field private endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final start:I

.field private startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final timeLeft:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/ttr/BaseTimeToReadResult;-><init>()V

    .line 18
    iput p1, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->start:I

    .line 19
    iput p2, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->end:I

    .line 20
    iput-wide p3, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->timeLeft:J

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method private getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/reader/IPositionFactory<",
            "+",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v0, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget v1, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->end:I

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v0, :cond_1

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget v1, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->start:I

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getTimeToReadInSeconds()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadResult;->timeLeft:J

    return-wide v0
.end method
