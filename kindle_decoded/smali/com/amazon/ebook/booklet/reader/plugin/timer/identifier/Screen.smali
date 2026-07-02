.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# instance fields
.field private final endPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

.field private final numWords:I

.field private final startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;


# direct methods
.method public constructor <init>(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    .line 24
    iput-object p2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->endPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    .line 25
    iput p3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->numWords:I

    return-void
.end method

.method public static isWellFormed(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->endPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->numWords:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDistanceFrom(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;)D
    .locals 4

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->getAbsolutePositionInBook()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->getAbsolutePositionInBook()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDistanceFrom(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)D
    .locals 4

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->getAbsolutePositionInBook()D

    move-result-wide v0

    iget-object p1, p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    invoke-virtual {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->getAbsolutePositionInBook()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    invoke-virtual {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->getAbsolutePositionInBook()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumWords()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->numWords:I

    return v0
.end method

.method public getPercentOverlap(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 29
    iget-object v1, p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    if-eqz v1, :cond_3

    iget-object v2, p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->endPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->endPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    if-nez v3, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v2, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, p1

    move-object p1, p0

    .line 41
    :goto_0
    iget-object p1, p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->endPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    invoke-virtual {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->getAbsolutePositionInBook()D

    move-result-wide v2

    iget-object p1, v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    invoke-virtual {p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->getAbsolutePositionInBook()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double p1, v2, v4

    if-gez p1, :cond_2

    return v0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->getPositionDifference()D

    move-result-wide v0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v0

    double-to-int p1, v2

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public getPositionDifference()D
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->endPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->getAbsolutePositionInBook()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    invoke-virtual {v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->getAbsolutePositionInBook()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public isPositionAfterScreen(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->endPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    invoke-virtual {v1, p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Screen. Start_"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->startPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ". End_"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->endPosition:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ". Num_Words_In_Screen :"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->numWords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
