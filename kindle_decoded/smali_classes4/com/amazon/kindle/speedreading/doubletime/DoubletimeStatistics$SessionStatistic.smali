.class Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;
.super Ljava/lang/Object;
.source "DoubletimeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionStatistic"
.end annotation


# instance fields
.field endWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

.field startWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

.field timeSpent:J

.field wordCount:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;JI)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->startWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 37
    iput-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->endWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 38
    iput-wide p4, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->timeSpent:J

    .line 39
    iput p6, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->wordCount:I

    return-void
.end method


# virtual methods
.method public getTimeSpent()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->timeSpent:J

    return-wide v0
.end method

.method public getWordCount()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->wordCount:I

    return v0
.end method

.method public isBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->startWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->endWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    invoke-virtual {p2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
