.class public final Lcom/google/android/exoplayer2/util/StandaloneMediaClock;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# instance fields
.field private baseElapsedMs:J

.field private baseUs:J

.field private playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public getPositionUs()J
    .locals 7

    .line 84
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->baseUs:J

    .line 85
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v2, :cond_1

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    sub-long/2addr v2, v4

    .line 87
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v5, v4, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 88
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v2

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;->getSpeedAdjustedDurationUs(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p1
.end method

.method public setPositionUs(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->baseUs:J

    .line 67
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz p1, :cond_0

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    :cond_0
    return-void
.end method

.method public synchronize(Lcom/google/android/exoplayer2/util/MediaClock;)V
    .locals 2

    .line 78
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 79
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void
.end method
