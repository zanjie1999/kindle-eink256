.class public Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
.super Ljava/lang/Object;
.source "Word.java"


# static fields
.field private static treadmillRampUp:Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp; = null

.field private static userDelay:J = 0xc8L

.field private static userWpm:I

.field private static wordWiseDelay:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;


# instance fields
.field private endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private numberOfTokens:I

.field private startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 14
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->numberOfTokens:I

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 35
    iput-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method private calculateAdditionalDelay()J
    .locals 8

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->wordWiseDelay:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->isDifficultWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    sget-wide v0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->userDelay:J

    goto :goto_3

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 133
    :cond_2
    sget-wide v0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->userDelay:J

    long-to-double v0, v0

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    sub-double/2addr v2, v4

    div-double/2addr v2, v4

    mul-double v0, v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    :goto_0
    move-wide v0, v2

    goto :goto_3

    .line 138
    :cond_3
    sget-wide v2, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->userDelay:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    goto :goto_0

    .line 126
    :cond_4
    :goto_1
    sget-wide v0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->userDelay:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    goto :goto_3

    .line 118
    :cond_5
    :goto_2
    sget-wide v0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->userDelay:J

    .line 146
    :cond_6
    :goto_3
    sget-object v2, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->treadmillRampUp:Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;

    if-eqz v2, :cond_7

    .line 148
    sget-wide v3, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->userDelay:J

    sget v5, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->userWpm:I

    const/16 v6, 0x384

    const/16 v7, 0x32

    .line 149
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;->getDelay(JIII)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_7
    return-wide v0
.end method

.method public static setTreadmillRampUp(Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;)V
    .locals 0

    .line 71
    sput-object p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->treadmillRampUp:Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;

    return-void
.end method

.method public static setUserDelay(JI)V
    .locals 0

    .line 65
    sput-wide p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->userDelay:J

    .line 66
    sput p2, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->userWpm:I

    return-void
.end method

.method public static setWordWiseDelay(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)V
    .locals 0

    .line 76
    sput-object p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->wordWiseDelay:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 82
    instance-of v0, p1, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    check-cast p1, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getDelay(Z)J
    .locals 4

    if-nez p1, :cond_0

    .line 164
    sget-wide v0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->userDelay:J

    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->calculateAdditionalDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getNumberOfTokens()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->numberOfTokens:I

    return v0
.end method

.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public isBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setNumberOfTokens(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->numberOfTokens:I

    return-void
.end method
