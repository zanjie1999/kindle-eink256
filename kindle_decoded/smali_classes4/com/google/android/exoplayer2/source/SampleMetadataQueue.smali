.class final Lcom/google/android/exoplayer2/source/SampleMetadataQueue;
.super Ljava/lang/Object;
.source "SampleMetadataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;
    }
.end annotation


# static fields
.field private static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8


# instance fields
.field private absoluteStartIndex:I

.field private capacity:I

.field private cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field private flags:[I

.field private formats:[Lcom/google/android/exoplayer2/Format;

.field private largestDiscardedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private length:I

.field private offsets:[J

.field private readPosition:I

.field private relativeStartIndex:I

.field private sizes:[I

.field private sourceIds:[I

.field private timesUs:[J

.field private upstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    new-array v1, v0, [I

    .line 67
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    new-array v1, v0, [J

    .line 68
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    new-array v1, v0, [J

    .line 69
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    new-array v1, v0, [I

    .line 70
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    new-array v1, v0, [I

    .line 71
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    new-array v1, v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 72
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    .line 73
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    const-wide/high16 v0, -0x8000000000000000L

    .line 74
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 75
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    .line 77
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    return-void
.end method

.method private discardSamples(I)J
    .locals 5

    .line 484
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 485
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    .line 484
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 486
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 487
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    .line 488
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    .line 489
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 490
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    .line 492
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    if-gez v0, :cond_1

    const/4 p1, 0x0

    .line 494
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    .line 496
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-nez p1, :cond_3

    .line 497
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 498
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    .line 500
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private findSampleBefore(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 463
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    .line 464
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 469
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private getLargestTimestamp(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 517
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    .line 519
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 520
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 525
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method private getRelativeIndex(I)I
    .locals 1

    .line 537
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    add-int/2addr v0, p1

    .line 538
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized advanceTo(JZZ)Z
    .locals 8

    monitor-enter p0

    .line 261
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v2

    .line 262
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    sub-int v3, p4, v0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 268
    monitor-exit p0

    return v7

    .line 270
    :cond_1
    :try_start_1
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 271
    monitor-exit p0

    return p1

    .line 264
    :cond_2
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized advanceToEnd()V
    .locals 1

    monitor-enter p0

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 279
    monitor-exit p0

    return-void

    .line 281
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attemptSplice(J)Z
    .locals 7

    monitor-enter p0

    .line 423
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 424
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    .line 426
    :cond_1
    :try_start_1
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    .line 427
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v5

    .line 426
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    .line 429
    monitor-exit p0

    return v1

    .line 431
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 432
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v1

    .line 433
    :cond_3
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    if-le v0, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p1

    if-ltz v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 437
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 440
    :cond_4
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardUpstreamSamples(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 5

    monitor-enter p0

    .line 353
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 355
    monitor-exit p0

    return-void

    .line 357
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    .line 359
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->commitSampleTimestamp(J)V

    .line 362
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v0

    .line 363
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aput-wide p1, v3, v0

    .line 364
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aput-wide p4, p1, v0

    .line 365
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aput p6, p1, v0

    .line 366
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aput p3, p1, v0

    .line 367
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aput-object p7, p1, v0

    .line 368
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    aput-object p2, p1, v0

    .line 369
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamSourceId:I

    aput p2, p1, v0

    .line 371
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 372
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    if-ne p1, p2, :cond_3

    .line 374
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    add-int/lit16 p1, p1, 0x3e8

    .line 375
    new-array p2, p1, [I

    .line 376
    new-array p3, p1, [J

    .line 377
    new-array p4, p1, [J

    .line 378
    new-array p5, p1, [I

    .line 379
    new-array p6, p1, [I

    .line 380
    new-array p7, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 381
    new-array v0, p1, [Lcom/google/android/exoplayer2/Format;

    .line 382
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    sub-int/2addr v2, v3

    .line 383
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    invoke-static {v3, v4, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    invoke-static {v3, v4, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    invoke-static {v3, v4, p5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    invoke-static {v3, v4, p6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    invoke-static {v3, v4, p7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    invoke-static {v3, v4, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    .line 391
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    invoke-static {v4, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    invoke-static {v4, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    invoke-static {v4, v1, p5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    invoke-static {v4, v1, p6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-static {v4, v1, p7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    invoke-static {v4, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    .line 399
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    .line 400
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    .line 401
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    .line 402
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 403
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 404
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    .line 405
    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    .line 406
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    iput p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 407
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized commitSampleTimestamp(J)V
    .locals 2

    monitor-enter p0

    .line 412
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized discardTo(JZZ)J
    .locals 9

    monitor-enter p0

    .line 297
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    aget-wide v3, v0, v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 300
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-eq p4, v0, :cond_1

    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    :goto_0
    move v5, p4

    .line 301
    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    move-object v3, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 303
    monitor-exit p0

    return-wide v1

    .line 305
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardSamples(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 298
    :cond_3
    :goto_1
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized discardToEnd()J
    .locals 2

    monitor-enter p0

    .line 328
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 329
    monitor-exit p0

    return-wide v0

    .line 331
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized discardToRead()J
    .locals 2

    monitor-enter p0

    .line 315
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 316
    monitor-exit p0

    return-wide v0

    .line 318
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public discardUpstreamSamples(I)J
    .locals 5

    .line 117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    if-ltz v0, :cond_0

    .line 118
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 119
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 120
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 121
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    sub-int/2addr v0, p1

    .line 124
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result p1

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public declared-synchronized format(Lcom/google/android/exoplayer2/Format;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 338
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return v1

    .line 341
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    .line 342
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 344
    monitor-exit p0

    return v1

    .line 346
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLargestQueuedTimestampUs()J
    .locals 2

    monitor-enter p0

    .line 179
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadIndex()I
    .locals 2

    .line 139
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWriteIndex()I
    .locals 2

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized hasNextSample()Z
    .locals 2

    monitor-enter p0

    .line 157
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)I
    .locals 4

    monitor-enter p0

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_3

    if-eqz p4, :cond_0

    const/4 p1, 0x4

    .line 216
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/Buffer;->setFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return v3

    .line 218
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq p2, p5, :cond_2

    .line 220
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iput-object p2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    monitor-exit p0

    return v1

    .line 223
    :cond_2
    monitor-exit p0

    return v2

    .line 227
    :cond_3
    :try_start_2
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result p4

    if-nez p3, :cond_6

    .line 228
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p3, p3, p4

    if-eq p3, p5, :cond_4

    goto :goto_0

    .line 233
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    .line 234
    monitor-exit p0

    return v2

    .line 237
    :cond_5
    :try_start_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v0, p1, p4

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 238
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aget p1, p1, p4

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/Buffer;->setFlags(I)V

    .line 239
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aget p1, p1, p4

    iput p1, p6, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    .line 240
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aget-wide p2, p1, p4

    iput-wide p2, p6, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 241
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aget-object p1, p1, p4

    iput-object p1, p6, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 243
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    monitor-exit p0

    return v3

    .line 229
    :cond_6
    :goto_0
    :try_start_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p2, p2, p4

    iput-object p2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 230
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 90
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    .line 91
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    .line 92
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    const-wide/high16 v1, -0x8000000000000000L

    .line 94
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 95
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 98
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized rewind()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 186
    :try_start_0
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
