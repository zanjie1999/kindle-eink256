.class public abstract Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;
.super Ljava/lang/Object;
.source "AbstractSingleTrackMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;,
        Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$SampleStreamImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L

.field private static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private durationUs:J

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;

.field private extractedSamplesCountAtStartOfLoad:I

.field private final handler:Landroid/os/Handler;

.field private isReleased:Z

.field private isTrackEnabled:Z

.field private lastSeekPositionUs:J

.field private final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field protected final logger:Lorg/slf4j/Logger;

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private seenFirstTrackSelection:Z

.field private final sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Handler;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;Lcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->logger:Lorg/slf4j/Logger;

    const-string v0, "Allocator must not be null"

    .line 94
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Handler must not be null"

    .line 95
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "AudibleSdkMediaSource.EventListener must not be null"

    .line 96
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "MediaSource.Listener must not be null"

    .line 97
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->eventHandler:Landroid/os/Handler;

    .line 100
    iput-object p3, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->eventListener:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;

    .line 101
    iput-object p4, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 102
    new-instance p2, Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Loader:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 103
    new-instance p2, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 104
    new-instance p2, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$1;

    invoke-direct {p2, p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$1;-><init>(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)V

    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 112
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->handler:Landroid/os/Handler;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 114
    iput-wide p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->pendingResetPositionUs:J

    .line 115
    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 116
    new-instance p2, Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isReleased:Z

    return p0
.end method

.method static synthetic access$100(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->eventListener:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isReady()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->maybeThrowError()V

    return-void
.end method

.method static synthetic access$600(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;J)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->skipData(J)V

    return-void
.end method

.method private static isLoadableExceptionFatal(Ljava/io/IOException;)Z
    .locals 0

    .line 474
    instance-of p0, p0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    return p0
.end method

.method private isPendingReset()Z
    .locals 5

    .line 469
    iget-wide v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isReady()Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    return-void
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$2;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$2;-><init>(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 7

    .line 451
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean v4, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadingFinished:Z

    iget-wide v5, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->lastSeekPositionUs:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result p1

    return p1
.end method

.method private seekInsideBufferUs(J)Z
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 274
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToRead()V

    return v2
.end method

.method private skipData(J)V
    .locals 3

    .line 460
    iget-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 461
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceToEnd()V

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)Z

    :goto_0
    return-void
.end method

.method private startLoading()V
    .locals 12

    .line 423
    iget-wide v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    move-wide v10, v0

    .line 424
    iget-object v5, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v6, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v7, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    iget-object v8, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->getLoadable(Lcom/google/android/exoplayer2/source/SampleQueue;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/util/ConditionVariable;Landroid/os/Handler;Ljava/lang/Runnable;J)Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    move-result-object v0

    .line 426
    iget-boolean v1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->prepared:Z

    if-eqz v1, :cond_2

    .line 427
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isPendingReset()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 428
    iget-wide v4, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->durationUs:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    iget-wide v6, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->pendingResetPositionUs:J

    cmp-long v1, v6, v4

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    .line 429
    iput-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadingFinished:Z

    .line 430
    iput-wide v2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->pendingResetPositionUs:J

    return-void

    .line 433
    :cond_1
    iput-wide v2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->pendingResetPositionUs:J

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v1

    iput v1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 436
    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 0

    .line 291
    iget-boolean p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadingFinished:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->prepared:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isTrackEnabled:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    move-result p1

    .line 295
    iget-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p2

    if-nez p2, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->startLoading()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public discardBuffer(J)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean v1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isTrackEnabled:Z

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 5

    .line 233
    iget-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-wide v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->pendingResetPositionUs:J

    return-wide v0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 240
    iget-wide v3, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->lastSeekPositionUs:J

    :cond_2
    return-wide v3
.end method

.method abstract getDuration()J
.end method

.method abstract getLoadable(Lcom/google/android/exoplayer2/source/SampleQueue;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/util/ConditionVariable;Landroid/os/Handler;Ljava/lang/Runnable;J)Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
.end method

.method abstract getMediaFormat()Lcom/google/android/exoplayer2/Format;
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 285
    iget-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isTrackEnabled:Z

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->maybeThrowPrepareErrorInternal()V

    .line 148
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->maybeThrowError()V

    return-void
.end method

.method abstract maybeThrowPrepareErrorInternal()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    if-eqz p6, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 323
    iget-boolean p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isTrackEnabled:Z

    if-eqz p1, :cond_1

    .line 324
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_1
    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 1

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadingFinished:Z

    .line 306
    iget-wide p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->durationUs:J

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, p4

    if-nez v0, :cond_1

    .line 307
    iget-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide p2

    const-wide/high16 p4, -0x8000000000000000L

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    const-wide/16 p2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p4, 0x2710

    add-long/2addr p2, p4

    .line 308
    :goto_0
    iput-wide p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->durationUs:J

    .line 309
    iget-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    new-instance p3, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide p4, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->durationUs:J

    invoke-direct {p3, p4, p5, p1}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    const/4 p1, 0x0

    invoke-interface {p2, p3, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 311
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 331
    invoke-direct {p0, p6}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->notifyLoadError(Ljava/io/IOException;)V

    .line 332
    invoke-static {p6}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isLoadableExceptionFatal(Ljava/io/IOException;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    return p1

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result p1

    .line 336
    iget p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le p1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 337
    :goto_0
    iput p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    return p2
.end method

.method public onLoaderReleased()V
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->releaseInternal()V

    .line 345
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 5

    .line 122
    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 125
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->prepareInternal()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->getMediaFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 130
    iget-object p3, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 131
    new-instance p3, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v3, v0, [Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v2, v1, v4

    invoke-direct {p3, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object p3, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 132
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->getDuration()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->durationUs:J

    .line 134
    iget-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 135
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->startLoading()V

    .line 136
    iget-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 138
    iput-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->prepared:Z

    .line 140
    iget-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    new-instance p3, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->durationUs:J

    invoke-direct {p3, v1, v2, v0}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    const/4 v0, 0x0

    invoke-interface {p2, p3, v0}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 141
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method abstract prepareInternal()Z
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)Z

    move-result v0

    .line 355
    iget-boolean v1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->prepared:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isReleased:Z

    return-void
.end method

.method abstract releaseInternal()V
.end method

.method public seekToUs(J)J
    .locals 1

    .line 246
    iput-wide p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->lastSeekPositionUs:J

    .line 249
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->seekInsideBufferUs(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p1

    .line 254
    :cond_0
    iput-wide p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->pendingResetPositionUs:J

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loadingFinished:Z

    .line 256
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    :goto_0
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 7

    .line 161
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Multiple renderers cannot be used with AbstractSingleTrackMediaPeriod!"

    invoke-static {v0, v3}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 162
    iget-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 164
    iget-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isTrackEnabled:Z

    .line 167
    aget-object v3, p3, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    aget-boolean p2, p2, v2

    if-nez p2, :cond_2

    .line 168
    :cond_1
    iget-boolean p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isTrackEnabled:Z

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 169
    iput-boolean v2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isTrackEnabled:Z

    .line 170
    aput-object v4, p3, v2

    .line 175
    :cond_2
    iget-boolean p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz p2, :cond_3

    if-nez v0, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long p2, p5, v5

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 177
    :goto_2
    aget-object v0, p3, v2

    if-nez v0, :cond_8

    aget-object v0, p1, v2

    if-eqz v0, :cond_8

    .line 178
    aget-object p1, p1, v2

    .line 179
    invoke-interface {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 180
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 181
    iget-boolean p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isTrackEnabled:Z

    xor-int/2addr p1, v1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 182
    iput-boolean v1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isTrackEnabled:Z

    .line 183
    new-instance p1, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$SampleStreamImpl;

    invoke-direct {p1, p0, v4}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$SampleStreamImpl;-><init>(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$1;)V

    aput-object p1, p3, v2

    .line 184
    aput-boolean v1, p4, v2

    if-nez p2, :cond_8

    .line 187
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 192
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1, p5, p6, v1, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    goto :goto_5

    :cond_7
    const/4 p2, 0x0

    .line 196
    :cond_8
    :goto_5
    iget-boolean p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->isTrackEnabled:Z

    if-nez p1, :cond_a

    .line 197
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 199
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 200
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_7

    .line 202
    :cond_9
    iget-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->trackOutput:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    goto :goto_7

    :cond_a
    if-eqz p2, :cond_c

    .line 205
    invoke-virtual {p0, p5, p6}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->seekToUs(J)J

    .line 207
    :goto_6
    array-length p1, p3

    if-ge v2, p1, :cond_c

    .line 208
    aget-object p1, p3, v2

    if-eqz p1, :cond_b

    .line 209
    aput-boolean v1, p4, v2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 214
    :cond_c
    :goto_7
    iput-boolean v1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->seenFirstTrackSelection:Z

    return-wide p5
.end method
