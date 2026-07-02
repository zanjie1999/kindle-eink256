.class public final Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;
.super Ljava/lang/Object;
.source "SonicAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# static fields
.field private static final CLOSE_THRESHOLD:F = 0.01f


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private inputBytes:J

.field private inputEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBytes:J

.field private pitch:F

.field private sampleRateHz:I

.field private shortBuffer:Ljava/nio/ShortBuffer;

.field private sonic:Lcom/google/android/exoplayer2/audio/Sonic;

.field private speed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    .line 74
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    .line 75
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 77
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 122
    iget p3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    if-ne p3, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    .line 126
    iput p2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    const/4 p1, 0x1

    return p1

    .line 120
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public flush()V
    .locals 3

    .line 190
    new-instance v0, Lcom/google/android/exoplayer2/audio/Sonic;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/Sonic;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    .line 191
    iget v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->setSpeed(F)V

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->setPitch(F)V

    .line 193
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 194
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 195
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public getInputByteCount()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    return-wide v0
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 179
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputByteCount()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    return-wide v0
.end method

.method public getOutputChannelCount()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    return v0
.end method

.method public getOutputEncoding()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isActive()Z
    .locals 3

    .line 132
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

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

.method public isEnded()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->getSamplesAvailable()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queueEndOfStream()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->queueEndOfStream()V

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 150
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 151
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->queueInput(Ljava/nio/ShortBuffer;)V

    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/Sonic;->getSamplesAvailable()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    mul-int p1, p1, v0

    mul-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_2

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 157
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 158
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->getOutput(Ljava/nio/ShortBuffer;)V

    .line 164
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    .line 202
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 203
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 204
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    .line 206
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    const-wide/16 v0, 0x0

    .line 207
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 208
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public setPitch(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 98
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    return p1
.end method

.method public setSpeed(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 87
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    return p1
.end method
