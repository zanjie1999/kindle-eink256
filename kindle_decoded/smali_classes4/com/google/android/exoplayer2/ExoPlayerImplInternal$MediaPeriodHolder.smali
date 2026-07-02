.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodHolder"
.end annotation


# instance fields
.field public hasEnabledTracks:Z

.field public final index:I

.field public info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

.field private final loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field public final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field public next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private periodTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field public prepared:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field public final rendererPositionOffsetUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field public final sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field public trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;[Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;)V
    .locals 0

    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1532
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 1533
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 1534
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 1535
    iput-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 1536
    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 1537
    iput-object p7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 1538
    invoke-static {p8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 1539
    iput p9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 1540
    iput-object p10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 1541
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/exoplayer2/source/SampleStream;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    .line 1542
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    .line 1543
    iget-object p1, p10, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p6}, Lcom/google/android/exoplayer2/LoadControl;->getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;

    move-result-object p2

    invoke-interface {p7, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    .line 1544
    iget-wide p2, p10, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 p4, -0x8000000000000000L

    cmp-long p6, p2, p4

    if-eqz p6, :cond_0

    .line 1545
    new-instance p2, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Z)V

    const-wide/16 p3, 0x0

    .line 1546
    iget-wide p5, p10, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->setClipping(JJ)V

    move-object p1, p2

    .line 1549
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-void
.end method


# virtual methods
.method public continueLoading(J)V
    .locals 1

    .line 1602
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide p1

    .line 1603
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    return-void
.end method

.method public getRendererOffset()J
    .locals 4

    .line 1561
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public handlePrepared()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1584
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    .line 1585
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    .line 1586
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ)J

    move-result-wide v0

    .line 1587
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    return-void
.end method

.method public haveSufficientBuffer(ZJ)Z
    .locals 5

    .line 1571
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1572
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 1574
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isFinal:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1577
    :cond_1
    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    .line 1579
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide p2

    sub-long/2addr v0, p2

    invoke-interface {v2, v0, v1, p1}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(JZ)Z

    move-result p1

    return p1
.end method

.method public isFullyBuffered()Z
    .locals 5

    .line 1566
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1567
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 5

    .line 1652
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    check-cast v1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_0

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    .line 1659
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public selectTracks()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1607
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1608
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    .line 1607
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 1609
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1612
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    const/4 v0, 0x1

    return v0
.end method

.method public shouldContinueLoading(J)Z
    .locals 5

    .line 1591
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1595
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide p1

    sub-long/2addr v0, p1

    .line 1597
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/LoadControl;->shouldContinueLoading(J)Z

    move-result p1

    return p1
.end method

.method public toPeriodTime(J)J
    .locals 2

    .line 1557
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public toRendererTime(J)J
    .locals 2

    .line 1553
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public updatePeriodTrackSelection(JZ)J
    .locals 1

    .line 1617
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public updatePeriodTrackSelection(JZ[Z)J
    .locals 13

    move-object v0, p0

    .line 1623
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1624
    :goto_0
    iget v4, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 1625
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p3, :cond_0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1626
    invoke-virtual {v6, v7, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1630
    :cond_1
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v3

    .line 1632
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1635
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    const/4 v6, 0x0

    .line 1636
    :goto_2
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 1637
    aget-object v7, v7, v6

    if-eqz v7, :cond_3

    .line 1638
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1639
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    goto :goto_5

    .line 1641
    :cond_3
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1646
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v6, v6, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->groups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v2, v5, v6, v1}, Lcom/google/android/exoplayer2/LoadControl;->onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-wide v3
.end method
