.class public Lsonic/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# static fields
.field private static final SONIC_AMDF_FREQ:I = 0xfa0

.field private static final SONIC_MAX_PITCH:I = 0x190

.field private static final SONIC_MIN_PITCH:I = 0x41


# instance fields
.field private downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputBufferSize:I

.field private maxDiff:I

.field private maxPeriod:I

.field private maxRequired:I

.field private minDiff:I

.field private minPeriod:I

.field private newRatePosition:I

.field private numChannels:I

.field private numInputSamples:I

.field private numOutputSamples:I

.field private numPitchSamples:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputBufferSize:I

.field private pitch:F

.field private pitchBuffer:[S

.field private pitchBufferSize:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private quality:I

.field private rate:F

.field private remainingInputToCopy:I

.field private sampleRate:I

.field private speed:F

.field private useChordPitch:Z

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-direct {p0, p1, p2}, Lsonic/Sonic;->allocateStreamBuffers(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 201
    iput p1, p0, Lsonic/Sonic;->speed:F

    .line 202
    iput p1, p0, Lsonic/Sonic;->pitch:F

    .line 203
    iput p1, p0, Lsonic/Sonic;->volume:F

    .line 204
    iput p1, p0, Lsonic/Sonic;->rate:F

    const/4 p1, 0x0

    .line 205
    iput p1, p0, Lsonic/Sonic;->oldRatePosition:I

    .line 206
    iput p1, p0, Lsonic/Sonic;->newRatePosition:I

    .line 207
    iput-boolean p1, p0, Lsonic/Sonic;->useChordPitch:Z

    .line 208
    iput p1, p0, Lsonic/Sonic;->quality:I

    return-void
.end method

.method private addBytesToInputBuffer([BI)V
    .locals 6

    .line 307
    iget v0, p0, Lsonic/Sonic;->numChannels:I

    mul-int/lit8 v0, v0, 0x2

    div-int v0, p2, v0

    .line 310
    invoke-direct {p0, v0}, Lsonic/Sonic;->enlargeInputBufferIfNeeded(I)V

    .line 311
    iget v1, p0, Lsonic/Sonic;->numInputSamples:I

    iget v2, p0, Lsonic/Sonic;->numChannels:I

    mul-int v1, v1, v2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ge v3, p2, :cond_0

    .line 313
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    int-to-short v3, v3

    .line 314
    iget-object v4, p0, Lsonic/Sonic;->inputBuffer:[S

    add-int/lit8 v5, v1, 0x1

    aput-short v3, v4, v1

    add-int/lit8 v2, v2, 0x2

    move v1, v5

    goto :goto_0

    .line 316
    :cond_0
    iget p1, p0, Lsonic/Sonic;->numInputSamples:I

    add-int/2addr p1, v0

    iput p1, p0, Lsonic/Sonic;->numInputSamples:I

    return-void
.end method

.method private addShortSamplesToInputBuffer([SI)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-direct {p0, p2}, Lsonic/Sonic;->enlargeInputBufferIfNeeded(I)V

    .line 282
    iget-object v1, p0, Lsonic/Sonic;->inputBuffer:[S

    iget v2, p0, Lsonic/Sonic;->numInputSamples:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lsonic/Sonic;->move([SI[SII)V

    .line 283
    iget p1, p0, Lsonic/Sonic;->numInputSamples:I

    add-int/2addr p1, p2

    iput p1, p0, Lsonic/Sonic;->numInputSamples:I

    return-void
.end method

.method private adjustPitch(I)V
    .locals 13

    .line 714
    iget v0, p0, Lsonic/Sonic;->numOutputSamples:I

    if-ne v0, p1, :cond_0

    return-void

    .line 717
    :cond_0
    invoke-direct {p0, p1}, Lsonic/Sonic;->moveNewSamplesToPitchBuffer(I)V

    const/4 p1, 0x0

    const/4 v10, 0x0

    .line 718
    :goto_0
    iget v0, p0, Lsonic/Sonic;->numPitchSamples:I

    sub-int/2addr v0, v10

    iget v1, p0, Lsonic/Sonic;->maxRequired:I

    if-lt v0, v1, :cond_2

    .line 719
    iget-object v0, p0, Lsonic/Sonic;->pitchBuffer:[S

    invoke-direct {p0, v0, v10, p1}, Lsonic/Sonic;->findPitchPeriod([SIZ)I

    move-result v11

    int-to-float v0, v11

    .line 720
    iget v1, p0, Lsonic/Sonic;->pitch:F

    div-float/2addr v0, v1

    float-to-int v12, v0

    .line 721
    invoke-direct {p0, v12}, Lsonic/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 722
    iget v0, p0, Lsonic/Sonic;->pitch:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 723
    iget v2, p0, Lsonic/Sonic;->numChannels:I

    iget-object v3, p0, Lsonic/Sonic;->outputBuffer:[S

    iget v4, p0, Lsonic/Sonic;->numOutputSamples:I

    iget-object v7, p0, Lsonic/Sonic;->pitchBuffer:[S

    add-int v0, v10, v11

    sub-int v8, v0, v12

    move-object v0, p0

    move v1, v12

    move-object v5, v7

    move v6, v10

    invoke-direct/range {v0 .. v8}, Lsonic/Sonic;->overlapAdd(II[SI[SI[SI)V

    goto :goto_1

    :cond_1
    sub-int v3, v12, v11

    .line 727
    iget v2, p0, Lsonic/Sonic;->numChannels:I

    iget-object v4, p0, Lsonic/Sonic;->outputBuffer:[S

    iget v5, p0, Lsonic/Sonic;->numOutputSamples:I

    iget-object v8, p0, Lsonic/Sonic;->pitchBuffer:[S

    move-object v0, p0

    move v1, v11

    move-object v6, v8

    move v7, v10

    move v9, v10

    invoke-direct/range {v0 .. v9}, Lsonic/Sonic;->overlapAddWithSeparation(III[SI[SI[SI)V

    .line 730
    :goto_1
    iget v0, p0, Lsonic/Sonic;->numOutputSamples:I

    add-int/2addr v0, v12

    iput v0, p0, Lsonic/Sonic;->numOutputSamples:I

    add-int/2addr v10, v11

    goto :goto_0

    .line 733
    :cond_2
    invoke-direct {p0, v10}, Lsonic/Sonic;->removePitchSamples(I)V

    return-void
.end method

.method private adjustRate(FI)V
    .locals 8

    .line 759
    iget v0, p0, Lsonic/Sonic;->sampleRate:I

    int-to-float v1, v0

    div-float/2addr v1, p1

    float-to-int p1, v1

    :goto_0
    const/16 v1, 0x4000

    if-gt p1, v1, :cond_7

    if-le v0, v1, :cond_0

    goto :goto_4

    .line 768
    :cond_0
    iget v1, p0, Lsonic/Sonic;->numOutputSamples:I

    if-ne v1, p2, :cond_1

    return-void

    .line 771
    :cond_1
    invoke-direct {p0, p2}, Lsonic/Sonic;->moveNewSamplesToPitchBuffer(I)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 773
    :goto_1
    iget v2, p0, Lsonic/Sonic;->numPitchSamples:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_6

    .line 774
    :goto_2
    iget v2, p0, Lsonic/Sonic;->oldRatePosition:I

    add-int/lit8 v4, v2, 0x1

    mul-int v4, v4, p1

    iget v5, p0, Lsonic/Sonic;->newRatePosition:I

    mul-int v6, v5, v0

    if-le v4, v6, :cond_3

    .line 775
    invoke-direct {p0, v3}, Lsonic/Sonic;->enlargeOutputBufferIfNeeded(I)V

    const/4 v2, 0x0

    .line 776
    :goto_3
    iget v4, p0, Lsonic/Sonic;->numChannels:I

    if-ge v2, v4, :cond_2

    .line 777
    iget-object v5, p0, Lsonic/Sonic;->outputBuffer:[S

    iget v6, p0, Lsonic/Sonic;->numOutputSamples:I

    mul-int v6, v6, v4

    add-int/2addr v6, v2

    iget-object v4, p0, Lsonic/Sonic;->pitchBuffer:[S

    add-int v7, v1, v2

    invoke-direct {p0, v4, v7, v0, p1}, Lsonic/Sonic;->interpolate([SIII)S

    move-result v4

    aput-short v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 780
    :cond_2
    iget v2, p0, Lsonic/Sonic;->newRatePosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lsonic/Sonic;->newRatePosition:I

    .line 781
    iget v2, p0, Lsonic/Sonic;->numOutputSamples:I

    add-int/2addr v2, v3

    iput v2, p0, Lsonic/Sonic;->numOutputSamples:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 783
    iput v2, p0, Lsonic/Sonic;->oldRatePosition:I

    if-ne v2, v0, :cond_5

    .line 785
    iput p2, p0, Lsonic/Sonic;->oldRatePosition:I

    if-eq v5, p1, :cond_4

    .line 787
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v3, p2, [Ljava/lang/Object;

    const-string v4, "Assertion failed: newRatePosition != newSampleRate\n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 790
    :cond_4
    iput p2, p0, Lsonic/Sonic;->newRatePosition:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 793
    :cond_6
    invoke-direct {p0, v1}, Lsonic/Sonic;->removePitchSamples(I)V

    return-void

    :cond_7
    :goto_4
    shr-int/lit8 p1, p1, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private allocateStreamBuffers(II)V
    .locals 2

    .line 178
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lsonic/Sonic;->minPeriod:I

    .line 179
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lsonic/Sonic;->maxPeriod:I

    mul-int/lit8 v0, v0, 0x2

    .line 180
    iput v0, p0, Lsonic/Sonic;->maxRequired:I

    .line 181
    iput v0, p0, Lsonic/Sonic;->inputBufferSize:I

    mul-int v1, v0, p2

    .line 182
    new-array v1, v1, [S

    iput-object v1, p0, Lsonic/Sonic;->inputBuffer:[S

    .line 183
    iput v0, p0, Lsonic/Sonic;->outputBufferSize:I

    mul-int v1, v0, p2

    .line 184
    new-array v1, v1, [S

    iput-object v1, p0, Lsonic/Sonic;->outputBuffer:[S

    .line 185
    iput v0, p0, Lsonic/Sonic;->pitchBufferSize:I

    mul-int v1, v0, p2

    .line 186
    new-array v1, v1, [S

    iput-object v1, p0, Lsonic/Sonic;->pitchBuffer:[S

    .line 187
    new-array v0, v0, [S

    iput-object v0, p0, Lsonic/Sonic;->downSampleBuffer:[S

    .line 188
    iput p1, p0, Lsonic/Sonic;->sampleRate:I

    .line 189
    iput p2, p0, Lsonic/Sonic;->numChannels:I

    const/4 p1, 0x0

    .line 190
    iput p1, p0, Lsonic/Sonic;->oldRatePosition:I

    .line 191
    iput p1, p0, Lsonic/Sonic;->newRatePosition:I

    .line 192
    iput p1, p0, Lsonic/Sonic;->prevPeriod:I

    return-void
.end method

.method private changeSpeed(F)V
    .locals 8

    .line 847
    iget v0, p0, Lsonic/Sonic;->numInputSamples:I

    .line 850
    iget v1, p0, Lsonic/Sonic;->maxRequired:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 854
    :cond_1
    iget v2, p0, Lsonic/Sonic;->remainingInputToCopy:I

    if-lez v2, :cond_2

    .line 855
    invoke-direct {p0, v1}, Lsonic/Sonic;->copyInputToOutput(I)I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    goto :goto_1

    .line 858
    :cond_2
    iget-object v2, p0, Lsonic/Sonic;->inputBuffer:[S

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lsonic/Sonic;->findPitchPeriod([SIZ)I

    move-result v2

    float-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_3

    .line 860
    iget-object v3, p0, Lsonic/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lsonic/Sonic;->skipPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 863
    :cond_3
    iget-object v3, p0, Lsonic/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lsonic/Sonic;->insertPitchPeriod([SIFI)I

    move-result v2

    goto :goto_0

    .line 867
    :goto_1
    iget v2, p0, Lsonic/Sonic;->maxRequired:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_1

    .line 868
    invoke-direct {p0, v1}, Lsonic/Sonic;->removeInputSamples(I)V

    return-void
.end method

.method private copyInputToOutput(I)I
    .locals 2

    .line 344
    iget v0, p0, Lsonic/Sonic;->remainingInputToCopy:I

    .line 346
    iget v1, p0, Lsonic/Sonic;->maxRequired:I

    if-le v0, v1, :cond_0

    move v0, v1

    .line 349
    :cond_0
    iget-object v1, p0, Lsonic/Sonic;->inputBuffer:[S

    invoke-direct {p0, v1, p1, v0}, Lsonic/Sonic;->copyToOutput([SII)V

    .line 350
    iget p1, p0, Lsonic/Sonic;->remainingInputToCopy:I

    sub-int/2addr p1, v0

    iput p1, p0, Lsonic/Sonic;->remainingInputToCopy:I

    return v0
.end method

.method private copyToOutput([SII)V
    .locals 6

    .line 335
    invoke-direct {p0, p3}, Lsonic/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 336
    iget-object v1, p0, Lsonic/Sonic;->outputBuffer:[S

    iget v2, p0, Lsonic/Sonic;->numOutputSamples:I

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lsonic/Sonic;->move([SI[SII)V

    .line 337
    iget p1, p0, Lsonic/Sonic;->numOutputSamples:I

    add-int/2addr p1, p3

    iput p1, p0, Lsonic/Sonic;->numOutputSamples:I

    return-void
.end method

.method private downSampleInput([SII)V
    .locals 6

    .line 492
    iget v0, p0, Lsonic/Sonic;->maxRequired:I

    div-int/2addr v0, p3

    .line 493
    iget v1, p0, Lsonic/Sonic;->numChannels:I

    mul-int p3, p3, v1

    mul-int p2, p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, p3, :cond_0

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 500
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 502
    :cond_0
    div-int/2addr v4, p3

    .line 503
    iget-object v3, p0, Lsonic/Sonic;->downSampleBuffer:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enlargeInputBufferIfNeeded(I)V
    .locals 2

    .line 251
    iget v0, p0, Lsonic/Sonic;->numInputSamples:I

    add-int/2addr v0, p1

    iget v1, p0, Lsonic/Sonic;->inputBufferSize:I

    if-le v0, v1, :cond_0

    shr-int/lit8 v0, v1, 0x1

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    .line 252
    iput v1, p0, Lsonic/Sonic;->inputBufferSize:I

    .line 253
    iget-object p1, p0, Lsonic/Sonic;->inputBuffer:[S

    invoke-direct {p0, p1, v1}, Lsonic/Sonic;->resize([SI)[S

    move-result-object p1

    iput-object p1, p0, Lsonic/Sonic;->inputBuffer:[S

    :cond_0
    return-void
.end method

.method private enlargeOutputBufferIfNeeded(I)V
    .locals 2

    .line 241
    iget v0, p0, Lsonic/Sonic;->numOutputSamples:I

    add-int/2addr v0, p1

    iget v1, p0, Lsonic/Sonic;->outputBufferSize:I

    if-le v0, v1, :cond_0

    shr-int/lit8 v0, v1, 0x1

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    .line 242
    iput v1, p0, Lsonic/Sonic;->outputBufferSize:I

    .line 243
    iget-object p1, p0, Lsonic/Sonic;->outputBuffer:[S

    invoke-direct {p0, p1, v1}, Lsonic/Sonic;->resize([SI)[S

    move-result-object p1

    iput-object p1, p0, Lsonic/Sonic;->outputBuffer:[S

    :cond_0
    return-void
.end method

.method private findPitchPeriod([SIZ)I
    .locals 6

    .line 584
    iget v0, p0, Lsonic/Sonic;->sampleRate:I

    const/16 v1, 0xfa0

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    iget v3, p0, Lsonic/Sonic;->quality:I

    if-nez v3, :cond_0

    .line 585
    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 587
    :goto_0
    iget v1, p0, Lsonic/Sonic;->numChannels:I

    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 588
    iget v0, p0, Lsonic/Sonic;->minPeriod:I

    iget v1, p0, Lsonic/Sonic;->maxPeriod:I

    invoke-direct {p0, p1, p2, v0, v1}, Lsonic/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    .line 590
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lsonic/Sonic;->downSampleInput([SII)V

    .line 591
    iget-object v1, p0, Lsonic/Sonic;->downSampleBuffer:[S

    iget v3, p0, Lsonic/Sonic;->minPeriod:I

    div-int/2addr v3, v0

    iget v4, p0, Lsonic/Sonic;->maxPeriod:I

    div-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v3, v4}, Lsonic/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    if-eq v0, v2, :cond_5

    mul-int v1, v1, v0

    shl-int/lit8 v0, v0, 0x2

    sub-int v3, v1, v0

    add-int/2addr v1, v0

    .line 597
    iget v0, p0, Lsonic/Sonic;->minPeriod:I

    if-ge v3, v0, :cond_2

    move v3, v0

    .line 600
    :cond_2
    iget v0, p0, Lsonic/Sonic;->maxPeriod:I

    if-le v1, v0, :cond_3

    move v1, v0

    .line 603
    :cond_3
    iget v0, p0, Lsonic/Sonic;->numChannels:I

    if-ne v0, v2, :cond_4

    .line 604
    invoke-direct {p0, p1, p2, v3, v1}, Lsonic/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    .line 606
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lsonic/Sonic;->downSampleInput([SII)V

    .line 607
    iget-object p1, p0, Lsonic/Sonic;->downSampleBuffer:[S

    invoke-direct {p0, p1, v5, v3, v1}, Lsonic/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v1

    .line 611
    :goto_1
    iget p2, p0, Lsonic/Sonic;->minDiff:I

    iget v0, p0, Lsonic/Sonic;->maxDiff:I

    invoke-direct {p0, p1, p2, v0, p3}, Lsonic/Sonic;->prevPeriodBetter(IIIZ)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 612
    iget p2, p0, Lsonic/Sonic;->prevPeriod:I

    goto :goto_2

    :cond_6
    move p2, p1

    .line 616
    :goto_2
    iget p3, p0, Lsonic/Sonic;->minDiff:I

    iput p3, p0, Lsonic/Sonic;->prevMinDiff:I

    .line 617
    iput p1, p0, Lsonic/Sonic;->prevPeriod:I

    return p2
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 9

    .line 518
    iget v0, p0, Lsonic/Sonic;->numChannels:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt p3, p4, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, p3, :cond_1

    add-int v7, p2, v5

    .line 522
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 523
    aget-short v8, p1, v8

    if-lt v7, v8, :cond_0

    sub-int/2addr v7, v8

    goto :goto_2

    :cond_0
    sub-int v7, v8, v7

    :goto_2
    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    mul-int v5, v6, v3

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_2

    move v3, p3

    move v0, v6

    :cond_2
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_3

    move v2, p3

    move v4, v6

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 538
    :cond_4
    div-int/2addr v0, v3

    iput v0, p0, Lsonic/Sonic;->minDiff:I

    .line 539
    div-int/2addr v4, v2

    iput v4, p0, Lsonic/Sonic;->maxDiff:I

    return v3
.end method

.method private insertPitchPeriod([SIFI)I
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    int-to-float v1, p4

    mul-float v1, v1, p3

    sub-float/2addr v0, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    goto :goto_0

    :cond_0
    int-to-float v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, p3

    sub-float/2addr v2, v0

    mul-float v1, v1, v2

    sub-float/2addr v0, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    .line 832
    iput p3, p0, Lsonic/Sonic;->remainingInputToCopy:I

    move p3, p4

    :goto_0
    add-int v9, p4, p3

    .line 834
    invoke-direct {p0, v9}, Lsonic/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 835
    iget-object v1, p0, Lsonic/Sonic;->outputBuffer:[S

    iget v2, p0, Lsonic/Sonic;->numOutputSamples:I

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lsonic/Sonic;->move([SI[SII)V

    .line 836
    iget v2, p0, Lsonic/Sonic;->numChannels:I

    iget-object v3, p0, Lsonic/Sonic;->outputBuffer:[S

    iget v0, p0, Lsonic/Sonic;->numOutputSamples:I

    add-int v4, v0, p4

    add-int v6, p2, p4

    move-object v0, p0

    move v1, p3

    move-object v5, p1

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lsonic/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 838
    iget p1, p0, Lsonic/Sonic;->numOutputSamples:I

    add-int/2addr p1, v9

    iput p1, p0, Lsonic/Sonic;->numOutputSamples:I

    return p3
.end method

.method private interpolate([SIII)S
    .locals 2

    .line 743
    iget v0, p0, Lsonic/Sonic;->numChannels:I

    mul-int v1, p2, v0

    aget-short v1, p1, v1

    mul-int p2, p2, v0

    add-int/2addr p2, v0

    .line 744
    aget-short p1, p1, p2

    .line 745
    iget p2, p0, Lsonic/Sonic;->newRatePosition:I

    mul-int p2, p2, p3

    .line 746
    iget p3, p0, Lsonic/Sonic;->oldRatePosition:I

    mul-int v0, p3, p4

    add-int/lit8 p3, p3, 0x1

    mul-int p3, p3, p4

    sub-int p2, p3, p2

    sub-int/2addr p3, v0

    mul-int v1, v1, p2

    sub-int p2, p3, p2

    mul-int p2, p2, p1

    add-int/2addr v1, p2

    .line 751
    div-int/2addr v1, p3

    int-to-short p1, v1

    return p1
.end method

.method private move([SI[SII)V
    .locals 1

    .line 68
    iget v0, p0, Lsonic/Sonic;->numChannels:I

    mul-int p4, p4, v0

    mul-int p2, p2, v0

    mul-int p5, p5, v0

    invoke-static {p3, p4, p1, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 7

    .line 684
    iget v0, p0, Lsonic/Sonic;->numOutputSamples:I

    sub-int/2addr v0, p1

    .line 686
    iget v1, p0, Lsonic/Sonic;->numPitchSamples:I

    add-int/2addr v1, v0

    iget v2, p0, Lsonic/Sonic;->pitchBufferSize:I

    if-le v1, v2, :cond_0

    shr-int/lit8 v1, v2, 0x1

    add-int/2addr v1, v0

    add-int/2addr v2, v1

    .line 687
    iput v2, p0, Lsonic/Sonic;->pitchBufferSize:I

    .line 688
    iget-object v1, p0, Lsonic/Sonic;->pitchBuffer:[S

    invoke-direct {p0, v1, v2}, Lsonic/Sonic;->resize([SI)[S

    move-result-object v1

    iput-object v1, p0, Lsonic/Sonic;->pitchBuffer:[S

    .line 690
    :cond_0
    iget-object v2, p0, Lsonic/Sonic;->pitchBuffer:[S

    iget v3, p0, Lsonic/Sonic;->numPitchSamples:I

    iget-object v4, p0, Lsonic/Sonic;->outputBuffer:[S

    move-object v1, p0

    move v5, p1

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lsonic/Sonic;->move([SI[SII)V

    .line 691
    iput p1, p0, Lsonic/Sonic;->numOutputSamples:I

    .line 692
    iget p1, p0, Lsonic/Sonic;->numPitchSamples:I

    add-int/2addr p1, v0

    iput p1, p0, Lsonic/Sonic;->numPitchSamples:I

    return-void
.end method

.method private overlapAdd(II[SI[SI[SI)V
    .locals 10

    move v0, p1

    move v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    mul-int v4, p4, v1

    add-int/2addr v4, v3

    mul-int v5, p8, v1

    add-int/2addr v5, v3

    mul-int v6, p6, v1

    add-int/2addr v6, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_0

    .line 638
    aget-short v8, p5, v6

    sub-int v9, v0, v7

    mul-int v8, v8, v9

    aget-short v9, p7, v5

    mul-int v9, v9, v7

    add-int/2addr v8, v9

    div-int/2addr v8, v0

    int-to-short v8, v8

    aput-short v8, p3, v4

    add-int/2addr v4, v1

    add-int/2addr v6, v1

    add-int/2addr v5, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private overlapAddWithSeparation(III[SI[SI[SI)V
    .locals 12

    move v0, p1

    move v1, p2

    move v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    mul-int v5, p5, v1

    add-int/2addr v5, v4

    mul-int v6, p9, v1

    add-int/2addr v6, v4

    mul-int v7, p7, v1

    add-int/2addr v7, v4

    const/4 v8, 0x0

    :goto_1
    add-int v9, v0, v2

    if-ge v8, v9, :cond_2

    if-ge v8, v2, :cond_0

    .line 665
    aget-short v9, p6, v7

    sub-int v10, v0, v8

    mul-int v9, v9, v10

    div-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, p4, v5

    add-int/2addr v7, v1

    goto :goto_3

    :cond_0
    if-ge v8, v0, :cond_1

    .line 668
    aget-short v9, p6, v7

    sub-int v10, v0, v8

    mul-int v9, v9, v10

    aget-short v10, p8, v6

    sub-int v11, v8, v2

    mul-int v10, v10, v11

    add-int/2addr v9, v10

    div-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, p4, v5

    add-int/2addr v7, v1

    goto :goto_2

    .line 672
    :cond_1
    aget-short v9, p8, v6

    sub-int v10, v8, v2

    mul-int v9, v9, v10

    div-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, p4, v5

    :goto_2
    add-int/2addr v6, v1

    :goto_3
    add-int/2addr v5, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private prevPeriodBetter(IIIZ)Z
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_4

    .line 552
    iget v0, p0, Lsonic/Sonic;->prevPeriod:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_2

    mul-int/lit8 p4, p2, 0x3

    if-le p3, p4, :cond_1

    return p1

    :cond_1
    mul-int/lit8 p2, p2, 0x2

    .line 560
    iget p3, p0, Lsonic/Sonic;->prevMinDiff:I

    mul-int/lit8 p3, p3, 0x3

    if-gt p2, p3, :cond_3

    return p1

    .line 565
    :cond_2
    iget p3, p0, Lsonic/Sonic;->prevMinDiff:I

    if-gt p2, p3, :cond_3

    return p1

    :cond_3
    const/4 p1, 0x1

    :cond_4
    :goto_0
    return p1
.end method

.method private processStreamInput()V
    .locals 8

    .line 874
    iget v0, p0, Lsonic/Sonic;->numOutputSamples:I

    .line 875
    iget v1, p0, Lsonic/Sonic;->speed:F

    iget v2, p0, Lsonic/Sonic;->pitch:F

    div-float/2addr v1, v2

    .line 876
    iget v3, p0, Lsonic/Sonic;->rate:F

    .line 878
    iget-boolean v4, p0, Lsonic/Sonic;->useChordPitch:Z

    if-nez v4, :cond_0

    mul-float v3, v3, v2

    :cond_0
    float-to-double v4, v1

    const-wide v6, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v2, v4, v6

    if-gtz v2, :cond_2

    const-wide v6, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v2, v4, v6

    if-gez v2, :cond_1

    goto :goto_0

    .line 884
    :cond_1
    iget-object v1, p0, Lsonic/Sonic;->inputBuffer:[S

    iget v2, p0, Lsonic/Sonic;->numInputSamples:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v2}, Lsonic/Sonic;->copyToOutput([SII)V

    .line 885
    iput v4, p0, Lsonic/Sonic;->numInputSamples:I

    goto :goto_1

    .line 882
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lsonic/Sonic;->changeSpeed(F)V

    .line 887
    :goto_1
    iget-boolean v1, p0, Lsonic/Sonic;->useChordPitch:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    .line 888
    iget v1, p0, Lsonic/Sonic;->pitch:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 889
    invoke-direct {p0, v0}, Lsonic/Sonic;->adjustPitch(I)V

    goto :goto_2

    :cond_3
    cmpl-float v1, v3, v2

    if-eqz v1, :cond_4

    .line 892
    invoke-direct {p0, v3, v0}, Lsonic/Sonic;->adjustRate(FI)V

    .line 894
    :cond_4
    :goto_2
    iget v1, p0, Lsonic/Sonic;->volume:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_5

    .line 896
    iget-object v2, p0, Lsonic/Sonic;->outputBuffer:[S

    iget v3, p0, Lsonic/Sonic;->numOutputSamples:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v2, v0, v3, v1}, Lsonic/Sonic;->scaleSamples([SIIF)V

    :cond_5
    return-void
.end method

.method private removeInputSamples(I)V
    .locals 7

    .line 323
    iget v0, p0, Lsonic/Sonic;->numInputSamples:I

    sub-int/2addr v0, p1

    .line 325
    iget-object v4, p0, Lsonic/Sonic;->inputBuffer:[S

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v4

    move v5, p1

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lsonic/Sonic;->move([SI[SII)V

    .line 326
    iput v0, p0, Lsonic/Sonic;->numInputSamples:I

    return-void
.end method

.method private removePitchSamples(I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 702
    :cond_0
    iget-object v3, p0, Lsonic/Sonic;->pitchBuffer:[S

    const/4 v2, 0x0

    iget v0, p0, Lsonic/Sonic;->numPitchSamples:I

    sub-int v5, v0, p1

    move-object v0, p0

    move-object v1, v3

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lsonic/Sonic;->move([SI[SII)V

    .line 703
    iget v0, p0, Lsonic/Sonic;->numPitchSamples:I

    sub-int/2addr v0, p1

    iput v0, p0, Lsonic/Sonic;->numPitchSamples:I

    return-void
.end method

.method private resize([SI)[S
    .locals 2

    .line 52
    iget v0, p0, Lsonic/Sonic;->numChannels:I

    mul-int p2, p2, v0

    .line 53
    new-array v0, p2, [S

    .line 54
    array-length v1, p1

    if-gt v1, p2, :cond_0

    array-length p2, p1

    :cond_0
    const/4 v1, 0x0

    .line 56
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private scaleSamples([SIIF)V
    .locals 3

    const/high16 v0, 0x45800000    # 4096.0f

    mul-float p4, p4, v0

    float-to-int p4, p4

    .line 79
    iget v0, p0, Lsonic/Sonic;->numChannels:I

    mul-int p2, p2, v0

    mul-int p3, p3, v0

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_2

    .line 83
    aget-short v0, p1, p2

    mul-int v0, v0, p4

    shr-int/lit8 v0, v0, 0xc

    const/16 v1, -0x7fff

    const/16 v2, 0x7fff

    if-le v0, v2, :cond_0

    const/16 v0, 0x7fff

    goto :goto_1

    :cond_0
    if-ge v0, v1, :cond_1

    const/16 v0, -0x7fff

    :cond_1
    :goto_1
    int-to-short v0, v0

    .line 89
    aput-short v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private skipPitchPeriod([SIFI)I
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, p3, v1

    if-ltz v2, :cond_0

    int-to-float v1, p4

    sub-float/2addr p3, v0

    div-float/2addr v1, p3

    float-to-int p3, v1

    goto :goto_0

    :cond_0
    int-to-float v2, p4

    sub-float/2addr v1, p3

    mul-float v2, v2, v1

    sub-float/2addr p3, v0

    div-float/2addr v2, p3

    float-to-int p3, v2

    .line 810
    iput p3, p0, Lsonic/Sonic;->remainingInputToCopy:I

    move p3, p4

    .line 812
    :goto_0
    invoke-direct {p0, p3}, Lsonic/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 813
    iget v2, p0, Lsonic/Sonic;->numChannels:I

    iget-object v3, p0, Lsonic/Sonic;->outputBuffer:[S

    iget v4, p0, Lsonic/Sonic;->numOutputSamples:I

    add-int v8, p2, p4

    move-object v0, p0

    move v1, p3

    move-object v5, p1

    move v6, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lsonic/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 815
    iget p1, p0, Lsonic/Sonic;->numOutputSamples:I

    add-int/2addr p1, p3

    iput p1, p0, Lsonic/Sonic;->numOutputSamples:I

    return p3
.end method


# virtual methods
.method public flushStream()V
    .locals 7

    .line 456
    iget v0, p0, Lsonic/Sonic;->numInputSamples:I

    .line 457
    iget v1, p0, Lsonic/Sonic;->speed:F

    iget v2, p0, Lsonic/Sonic;->pitch:F

    div-float/2addr v1, v2

    .line 458
    iget v3, p0, Lsonic/Sonic;->rate:F

    mul-float v3, v3, v2

    .line 459
    iget v2, p0, Lsonic/Sonic;->numOutputSamples:I

    int-to-float v4, v0

    div-float/2addr v4, v1

    iget v1, p0, Lsonic/Sonic;->numPitchSamples:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    div-float/2addr v4, v3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr v2, v1

    .line 462
    iget v1, p0, Lsonic/Sonic;->maxRequired:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lsonic/Sonic;->enlargeInputBufferIfNeeded(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 463
    :goto_0
    iget v4, p0, Lsonic/Sonic;->maxRequired:I

    mul-int/lit8 v5, v4, 0x2

    iget v6, p0, Lsonic/Sonic;->numChannels:I

    mul-int v5, v5, v6

    if-ge v3, v5, :cond_0

    .line 464
    iget-object v4, p0, Lsonic/Sonic;->inputBuffer:[S

    mul-int v6, v6, v0

    add-int/2addr v6, v3

    aput-short v1, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    :cond_0
    iget v0, p0, Lsonic/Sonic;->numInputSamples:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iput v0, p0, Lsonic/Sonic;->numInputSamples:I

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v0, v1}, Lsonic/Sonic;->writeShortToStream([SI)V

    .line 469
    iget v0, p0, Lsonic/Sonic;->numOutputSamples:I

    if-le v0, v2, :cond_1

    .line 470
    iput v2, p0, Lsonic/Sonic;->numOutputSamples:I

    .line 473
    :cond_1
    iput v1, p0, Lsonic/Sonic;->numInputSamples:I

    .line 474
    iput v1, p0, Lsonic/Sonic;->remainingInputToCopy:I

    .line 475
    iput v1, p0, Lsonic/Sonic;->numPitchSamples:I

    return-void
.end method

.method public readBytesFromStream([BI)I
    .locals 8

    .line 430
    iget v0, p0, Lsonic/Sonic;->numChannels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr p2, v0

    .line 431
    iget v0, p0, Lsonic/Sonic;->numOutputSamples:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, p2, :cond_1

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_1
    move p2, v0

    const/4 v0, 0x0

    .line 441
    :goto_0
    iget v2, p0, Lsonic/Sonic;->numChannels:I

    mul-int v2, v2, p2

    if-ge v1, v2, :cond_2

    .line 442
    iget-object v2, p0, Lsonic/Sonic;->outputBuffer:[S

    aget-short v2, v2, v1

    shl-int/lit8 v3, v1, 0x1

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    .line 443
    aput-byte v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    .line 444
    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_2
    iget-object v5, p0, Lsonic/Sonic;->outputBuffer:[S

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, v5

    move v6, p2

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lsonic/Sonic;->move([SI[SII)V

    .line 447
    iput v0, p0, Lsonic/Sonic;->numOutputSamples:I

    mul-int/lit8 p2, p2, 0x2

    .line 448
    iget p1, p0, Lsonic/Sonic;->numChannels:I

    mul-int p2, p2, p1

    return p2

    :cond_3
    :goto_1
    return v1
.end method

.method public samplesAvailable()I
    .locals 1

    .line 481
    iget v0, p0, Lsonic/Sonic;->numOutputSamples:I

    return v0
.end method

.method public setSpeed(F)V
    .locals 0

    .line 103
    iput p1, p0, Lsonic/Sonic;->speed:F

    return-void
.end method

.method public writeBytesToStream([BI)V
    .locals 0

    .line 934
    invoke-direct {p0, p1, p2}, Lsonic/Sonic;->addBytesToInputBuffer([BI)V

    .line 935
    invoke-direct {p0}, Lsonic/Sonic;->processStreamInput()V

    return-void
.end method

.method public writeShortToStream([SI)V
    .locals 0

    .line 915
    invoke-direct {p0, p1, p2}, Lsonic/Sonic;->addShortSamplesToInputBuffer([SI)V

    .line 916
    invoke-direct {p0}, Lsonic/Sonic;->processStreamInput()V

    return-void
.end method
