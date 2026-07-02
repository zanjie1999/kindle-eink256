.class final Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;
.super Ljava/lang/Object;
.source "MediaPeriodInfoSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    }
.end annotation


# instance fields
.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private repeatMode:I

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 113
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    return-void
.end method

.method private getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 6

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 283
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object p4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget p5, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p4, p5, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 287
    :cond_0
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForAd(IIIJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object p1

    return-object p1

    .line 290
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p2, p4, p5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    const-wide/high16 p2, -0x8000000000000000L

    goto :goto_0

    .line 291
    :cond_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 292
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide p2

    :goto_0
    move-wide v4, p2

    .line 293
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForContent(IJJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method private getMediaPeriodInfoForAd(IIIJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 299
    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move/from16 v4, p1

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(III)V

    const-wide/high16 v4, -0x8000000000000000L

    .line 300
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v11

    .line 301
    invoke-direct {p0, v3, v11}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v12

    .line 302
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v5, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v6, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 303
    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v9

    .line 304
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getPlayedAdCount(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 305
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v4, v1

    .line 306
    new-instance v14, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v13, 0x0

    move-object v1, v14

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-wide/from16 v7, p4

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZLcom/google/android/exoplayer2/MediaPeriodInfoSequence$1;)V

    return-object v14
.end method

.method private getMediaPeriodInfoForContent(IJJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 15

    move-object v0, p0

    move-wide/from16 v5, p4

    .line 312
    new-instance v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move/from16 v1, p1

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    .line 313
    invoke-direct {p0, v2, v5, v6}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v11

    .line 314
    invoke-direct {p0, v2, v11}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v12

    .line 315
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v3, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v5, v3

    if-nez v1, :cond_0

    .line 316
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_0

    :cond_0
    move-wide v9, v5

    .line 317
    :goto_0
    new-instance v14, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    move-object v1, v14

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZLcom/google/android/exoplayer2/MediaPeriodInfoSequence$1;)V

    return-object v14
.end method

.method private getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 268
    iget-wide v3, v1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    .line 269
    iget-wide v5, v1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    .line 270
    invoke-direct {p0, v2, v5, v6}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v11

    .line 271
    invoke-direct {p0, v2, v11}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v12

    .line 272
    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v8, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 273
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v8, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v9, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 274
    invoke-virtual {v7, v8, v9}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v7

    :goto_0
    move-wide v9, v7

    goto :goto_1

    :cond_0
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 275
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v7

    goto :goto_0

    :cond_1
    move-wide v9, v5

    .line 276
    :goto_1
    new-instance v14, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    const/4 v13, 0x0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZLcom/google/android/exoplayer2/MediaPeriodInfoSequence$1;)V

    return-object v14
.end method

.method private isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z
    .locals 9

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-int/2addr v0, v1

    .line 328
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    .line 329
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_2

    if-nez v2, :cond_1

    cmp-long p1, p2, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 334
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    return v7

    :cond_3
    if-eqz v2, :cond_4

    .line 340
    iget p3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne p3, v0, :cond_4

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    add-int/lit8 p3, p2, -0x1

    if-ne p1, p3, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_6

    if-nez v2, :cond_5

    .line 342
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPlayedAdCount(I)I

    move-result p1

    if-ne p1, p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_2
    return v1
.end method

.method private isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 347
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->repeatMode:I

    .line 348
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->isLastPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;I)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 6

    .line 136
    iget-object v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->contentPositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method public getNextMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p1

    .line 155
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isLastInTimelinePeriod:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 156
    iget-object v1, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v5, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v7, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v8, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->repeatMode:I

    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    return-object v3

    .line 164
    :cond_0
    iget-object v2, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v1, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v10, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 165
    iget-object v2, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v2, v10, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    const-wide/16 v4, 0x0

    if-ne v2, v1, :cond_2

    .line 171
    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    add-long v0, p2, v0

    sub-long v0, v0, p4

    .line 173
    iget-object v7, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v8, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v9, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 174
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 173
    invoke-virtual/range {v7 .. v14}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    .line 178
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 179
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v4, v2

    .line 183
    :cond_2
    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    move-object v0, p0

    move-wide v2, v4

    .line 184
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 187
    :cond_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 188
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v4, :cond_8

    .line 189
    iget v4, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 190
    iget-object v5, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v9, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v10, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v9, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 191
    iget-object v5, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v5

    if-ne v5, v2, :cond_4

    return-object v3

    .line 195
    :cond_4
    iget v9, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v5, :cond_6

    .line 198
    iget-object v2, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v4, v9}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-wide v7, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    move-object v0, p0

    move v2, v4

    move v3, v9

    move-wide v4, v7

    .line 199
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForAd(IIIJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v3

    :goto_0
    return-object v3

    .line 203
    :cond_6
    iget-object v3, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    .line 204
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v3

    if-ne v3, v2, :cond_7

    move-wide v4, v7

    goto :goto_1

    .line 205
    :cond_7
    iget-object v2, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 206
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v2

    move-wide v4, v2

    .line 207
    :goto_1
    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForContent(IJJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 210
    :cond_8
    iget-wide v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    const/4 v2, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_a

    .line 212
    iget-object v7, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 213
    invoke-virtual {v7, v4, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v4

    .line 214
    iget-object v5, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v4, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    const/4 v3, 0x0

    iget-wide v7, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    move-object v0, p0

    move v2, v4

    move-wide v4, v7

    .line 215
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForAd(IIIJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v3

    :goto_2
    return-object v3

    .line 219
    :cond_a
    iget-object v0, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v0

    if-eqz v0, :cond_c

    .line 220
    iget-object v4, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    add-int/lit8 v5, v0, -0x1

    .line 221
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-nez v0, :cond_c

    iget-object v0, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 222
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 223
    invoke-virtual {v0, v5, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    .line 226
    :cond_b
    iget-object v0, v6, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v7

    .line 227
    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    const/4 v3, 0x0

    move-object v0, p0

    move v2, v5

    move-wide v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getMediaPeriodInfoForAd(IIIJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_3
    return-object v3
.end method

.method public getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 1

    .line 252
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method public getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;I)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 1

    .line 261
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 262
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p2

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 241
    new-instance p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    return-object p2

    .line 243
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/Timeline$Period;->getPlayedAdCount(I)I

    move-result p3

    .line 244
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(III)V

    return-object v0
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->repeatMode:I

    return-void
.end method

.method public setTimeline(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method
