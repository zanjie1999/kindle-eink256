.class public final Lcom/google/android/exoplayer2/source/SampleQueue;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;,
        Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# static fields
.field private static final INITIAL_SCRATCH_SIZE:I = 0x20


# instance fields
.field private final allocationLength:I

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private downstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private final extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

.field private firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

.field private lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

.field private final metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

.field private pendingFormatAdjustment:Z

.field private pendingSplice:Z

.field private readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

.field private sampleOffsetUs:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private totalBytesWritten:J

.field private upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

.field private writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 81
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator;->getIndividualAllocationLength()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    .line 82
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    .line 83
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    .line 84
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 85
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 86
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    return-void
.end method

.method private advanceReadTo(J)V
    .locals 4

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 450
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V
    .locals 6

    .line 565
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 573
    new-array v0, v1, [Lcom/google/android/exoplayer2/upstream/Allocation;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 576
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    aput-object v3, v0, v2

    .line 577
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->release([Lcom/google/android/exoplayer2/upstream/Allocation;)V

    return-void
.end method

.method private discardDownstreamTo(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 467
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    .line 468
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->release(Lcom/google/android/exoplayer2/upstream/Allocation;)V

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    .line 473
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    .line 474
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    :cond_2
    return-void
.end method

.method private static getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 621
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    add-long/2addr v0, p1

    .line 622
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/Format;->copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private postAppend(I)V
    .locals 5

    .line 604
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 605
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 606
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    :cond_0
    return-void
.end method

.method private preAppend(I)I
    .locals 6

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-nez v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->allocate()Lcom/google/android/exoplayer2/upstream/Allocation;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->initialize(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .locals 4

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceReadTo(J)V

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 410
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 411
    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v1

    invoke-virtual {p3, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 415
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readData(J[BI)V
    .locals 5

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceReadTo(J)V

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 431
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 432
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v3, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 433
    iget-object v3, v3, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    sub-int v4, p4, v0

    invoke-static {v3, v2, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 437
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 438
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 334
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 337
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 338
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    .line 340
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    and-int/lit8 v5, v5, 0x7f

    .line 345
    iget-object v9, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v10, v9, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    if-nez v10, :cond_1

    const/16 v10, 0x10

    new-array v10, v10, [B

    .line 346
    iput-object v10, v9, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 348
    :cond_1
    iget-object v9, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v9, v9, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    invoke-direct {v0, v3, v4, v9, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    int-to-long v9, v5

    add-long/2addr v3, v9

    if-eqz v8, :cond_2

    .line 354
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 355
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 357
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    move v10, v6

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    .line 363
    :goto_1
    iget-object v5, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-eqz v5, :cond_3

    .line 364
    array-length v6, v5

    if-ge v6, v10, :cond_4

    .line 365
    :cond_3
    new-array v5, v10, [I

    :cond_4
    move-object v11, v5

    .line 367
    iget-object v5, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v5, :cond_5

    .line 368
    array-length v6, v5

    if-ge v6, v10, :cond_6

    .line 369
    :cond_5
    new-array v5, v10, [I

    :cond_6
    move-object v12, v5

    if-eqz v8, :cond_7

    mul-int/lit8 v5, v10, 0x6

    .line 373
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 374
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 376
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_2
    if-ge v7, v10, :cond_8

    .line 378
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    aput v5, v11, v7

    .line 379
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    aput v5, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 382
    :cond_7
    aput v7, v11, v7

    .line 383
    iget v5, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    iget-wide v8, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    sub-long v8, v3, v8

    long-to-int v6, v8

    sub-int/2addr v5, v6

    aput v5, v12, v7

    .line 387
    :cond_8
    iget-object v5, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 388
    iget-object v9, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v13, v5, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object v14, v9, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget v15, v5, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v1, v5, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    move/from16 v16, v1

    move/from16 v17, v5

    invoke-virtual/range {v9 .. v17}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->set(I[I[I[B[BIII)V

    .line 393
    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    int-to-long v3, v1

    add-long/2addr v5, v3

    .line 394
    iput-wide v5, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 395
    iget v3, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    return-void
.end method


# virtual methods
.method public advanceTo(JZZ)Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->advanceTo(JZZ)Z

    move-result p1

    return p1
.end method

.method public advanceToEnd()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->advanceToEnd()V

    return-void
.end method

.method public discardTo(JZZ)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardTo(JZZ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public discardToEnd()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardToEnd()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public discardToRead()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardToRead()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public format(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 504
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->format(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    .line 506
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    const/4 p1, 0x0

    .line 507
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingFormatAdjustment:Z

    .line 508
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 509
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    :cond_0
    return-void
.end method

.method public getLargestQueuedTimestampUs()J
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadIndex()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getWriteIndex()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public hasNextSample()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    return v0
.end method

.method public read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I
    .locals 7

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)I

    move-result p3

    const/4 p4, -0x5

    if-eq p3, p4, :cond_5

    const/4 p1, -0x4

    if-eq p3, p1, :cond_1

    const/4 p1, -0x3

    if-ne p3, p1, :cond_0

    return p1

    .line 319
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 303
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result p3

    if-nez p3, :cond_4

    .line 304
    iget-wide p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long v0, p3, p5

    if-gez v0, :cond_2

    const/high16 p3, -0x80000000

    .line 305
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/decoder/Buffer;->addFlag(I)V

    .line 308
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 309
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)V

    .line 312
    :cond_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    iget p3, p3, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 313
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    iget-wide p4, p3, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    iget-object p2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget p3, p3, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    invoke-direct {p0, p4, p5, p2, p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(JLjava/nio/ByteBuffer;I)V

    :cond_4
    return p1

    .line 300
    :cond_5
    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    return p4
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->reset(Z)V

    .line 109
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    .line 110
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 112
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 113
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 114
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator;->trim()V

    return-void
.end method

.method public rewind()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->rewind()V

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 532
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->preAppend(I)I

    move-result v0

    .line 533
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    .line 534
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v1

    .line 533
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    sub-int/2addr p2, v0

    .line 536
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->postAppend(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 12

    move-object v0, p0

    move-wide v1, p1

    .line 543
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingFormatAdjustment:Z

    if-eqz v3, :cond_0

    .line 544
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 546
    :cond_0
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    if-eqz v3, :cond_3

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2

    .line 547
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->attemptSplice(J)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 550
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 552
    :cond_3
    :goto_1
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    add-long v5, v1, v3

    .line 553
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    move/from16 v3, p4

    int-to-long v7, v3

    sub-long/2addr v1, v7

    move/from16 v4, p5

    int-to-long v7, v4

    sub-long v8, v1, v7

    .line 554
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    move v7, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method
