.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;
.super Ljava/lang/Object;
.source "IntervalInfo.java"


# instance fields
.field private final intervalWPM:D

.field private final percentRead:D

.field private final timeInterval:J

.field private final wordsRead:J


# direct methods
.method public constructor <init>(JJDD)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->timeInterval:J

    .line 24
    iput-wide p3, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->wordsRead:J

    .line 25
    iput-wide p5, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->percentRead:D

    .line 26
    iput-wide p7, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->intervalWPM:D

    return-void
.end method


# virtual methods
.method public getIntervalWPM()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->intervalWPM:D

    return-wide v0
.end method

.method public getPercentRead()D
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->percentRead:D

    return-wide v0
.end method

.method public getTimeInterval()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->timeInterval:J

    return-wide v0
.end method

.method public getWordsRead()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalInfo;->wordsRead:J

    return-wide v0
.end method
