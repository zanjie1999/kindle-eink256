.class public final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# instance fields
.field public volatile bufferedPositionUs:J

.field public final contentPositionUs:J

.field public final periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public volatile positionUs:J

.field public final startPositionUs:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 1

    .line 63
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V
    .locals 6

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 72
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    .line 73
    iput-wide p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->contentPositionUs:J

    .line 74
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 75
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    return-void
.end method


# virtual methods
.method public copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    .locals 7

    .line 79
    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->contentPositionUs:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    .line 81
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    iput-wide v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 82
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    iput-wide v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    return-object v6
.end method
