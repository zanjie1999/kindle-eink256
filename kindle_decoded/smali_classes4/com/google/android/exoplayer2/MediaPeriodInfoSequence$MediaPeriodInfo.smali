.class public final Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
.super Ljava/lang/Object;
.source "MediaPeriodInfoSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodInfo"
.end annotation


# instance fields
.field public final contentPositionUs:J

.field public final durationUs:J

.field public final endPositionUs:J

.field public final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final isFinal:Z

.field public final isLastInTimelinePeriod:Z

.field public final startPositionUs:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 74
    iput-wide p2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    .line 75
    iput-wide p4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    .line 76
    iput-wide p6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    .line 77
    iput-wide p8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    .line 78
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isLastInTimelinePeriod:Z

    .line 79
    iput-boolean p11, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isFinal:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZLcom/google/android/exoplayer2/MediaPeriodInfoSequence$1;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p11}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-void
.end method


# virtual methods
.method public copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 13

    .line 87
    new-instance v12, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isFinal:Z

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v12
.end method

.method public copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;
    .locals 13

    .line 95
    new-instance v12, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isFinal:Z

    move-object v0, v12

    move-wide v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v12
.end method
