.class public final Lcom/google/android/exoplayer2/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field private static final ERROR_BAD_VALUE:I = -0x2

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MODE_STATIC:I = 0x0

.field private static final MODE_STREAM:I = 0x1

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1

.field private static final SONIC_MIN_BYTES_FOR_SPEEDUP:I = 0x400

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field private static final WRITE_NON_BLOCKING:I = 0x1

.field public static enablePreV21AudioSessionWorkaround:Z = false

.field public static failOnSpuriousAudioTimestamp:Z = false


# instance fields
.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private final audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field private audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private audioSessionId:I

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

.field private avSyncHeader:Ljava/nio/ByteBuffer;

.field private final availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private bufferSize:I

.field private bufferSizeUs:J

.field private bytesUntilNextAvSync:I

.field private channelConfig:I

.field private final channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

.field private drainingAudioProcessorIndex:I

.field private drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private encoding:I

.field private framesPerEncodedSample:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private handledEndOfStream:Z

.field private hasData:Z

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastFeedElapsedRealtimeMs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private final listener:Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;

.field private nextPlayheadOffsetIndex:I

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputEncoding:I

.field private outputPcmFrameSize:I

.field private passthrough:Z

.field private pcmFrameSize:I

.field private playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private final playbackParametersCheckpoints:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;",
            ">;"
        }
    .end annotation
.end field

.field private playbackParametersOffsetUs:J

.field private playbackParametersPositionUs:J

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private playing:Z

.field private preV21OutputBuffer:[B

.field private preV21OutputBufferOffset:I

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private final sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private tunneling:Z

.field private volume:F

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;)V
    .locals 2

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 361
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->listener:Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;

    .line 362
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 363
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x12

    if-lt p1, v1, :cond_0

    .line 365
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    .line 366
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 371
    :cond_0
    :goto_0
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_1

    .line 372
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 374
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 376
    :goto_1
    new-instance p1, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    .line 377
    new-instance p1, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    .line 378
    array-length p1, p2

    add-int/lit8 p1, p1, 0x3

    new-array p1, p1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 379
    new-instance v0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 380
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    aput-object v0, p1, p3

    .line 381
    array-length p3, p2

    const/4 v0, 0x2

    invoke-static {p2, v1, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length p2, p2

    add-int/2addr p2, v0

    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    aput-object p3, p1, p2

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 383
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 384
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    .line 385
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 386
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 387
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 388
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    const/4 p1, -0x1

    .line 389
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    new-array p1, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 390
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-array p1, v1, [Ljava/nio/ByteBuffer;

    .line 391
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 392
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private applySpeedup(J)J
    .locals 10

    .line 1208
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    .line 1209
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$400(Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;

    .line 1212
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$200(Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1213
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$400(Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersPositionUs:J

    .line 1214
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$500(Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersOffsetUs:J

    goto :goto_0

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1218
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersOffsetUs:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersPositionUs:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    .line 1222
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->getOutputByteCount()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 1223
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersOffsetUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersPositionUs:J

    sub-long v4, p1, v2

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    .line 1225
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->getInputByteCount()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->getOutputByteCount()J

    move-result-wide v8

    .line 1224
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p1

    :goto_1
    add-long/2addr v0, p1

    return-wide v0

    .line 1230
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersOffsetUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v2, v2, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersPositionUs:J

    sub-long/2addr p1, v4

    long-to-double p1, p1

    mul-double v2, v2, p1

    double-to-long p1, v2

    goto :goto_1
.end method

.method private createAudioTrackV21()Landroid/media/AudioTrack;
    .locals 7

    .line 1400
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v0, :cond_0

    .line 1401
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 1402
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 1403
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1404
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1405
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->getAudioAttributesV21()Landroid/media/AudioAttributes;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 1409
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    .line 1410
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    .line 1411
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    .line 1412
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1413
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 1414
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-eqz v0, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 1416
    :goto_1
    new-instance v0, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method private drainAudioProcessorsToEndOfStream()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .line 920
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 921
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 924
    :goto_2
    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 925
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 927
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueEndOfStream()V

    .line 929
    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/google/android/exoplayer2/audio/AudioTrack;->processBuffers(J)V

    .line 930
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isEnded()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 934
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    goto :goto_1

    .line 938
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 939
    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    .line 940
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 944
    :cond_5
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    return v2
.end method

.method private durationUsToFrames(J)J
    .locals 2

    .line 1327
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private framesToDurationUs(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 1323
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private static getEncodingForMimeType(Ljava/lang/String;)I
    .locals 5

    .line 1431
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "audio/vnd.dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    const/16 p0, 0x8

    return p0

    :cond_2
    const/4 p0, 0x7

    return p0

    :cond_3
    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_3
        0xb269698 -> :sswitch_2
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 1449
    invoke-static {}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 1451
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    .line 1453
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected audio encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1447
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method private getSubmittedFrames()J
    .locals 4

    .line 1331
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private getWrittenFrames()J
    .locals 4

    .line 1335
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    .line 1201
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 636
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->initializeAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 637
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 638
    sget-boolean v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v1, :cond_1

    .line 639
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 642
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 643
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    .line 647
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->initializeKeepSessionIdAudioTrack(I)Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 651
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-eq v1, v0, :cond_2

    .line 652
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 653
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->listener:Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;->onAudioSessionId(I)V

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 657
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setVolumeInternal()V

    const/4 v0, 0x0

    .line 658
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasData:Z

    return-void
.end method

.method private initializeAudioTrack()Landroid/media/AudioTrack;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .line 1370
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1371
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->createAudioTrackV21()Landroid/media/AudioTrack;

    move-result-object v0

    goto :goto_0

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    .line 1374
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-nez v0, :cond_1

    .line 1375
    new-instance v0, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_0

    .line 1379
    :cond_1
    new-instance v0, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 1384
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    return-object v0

    .line 1387
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    :catch_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v0
.end method

.method private initializeKeepSessionIdAudioTrack(I)Landroid/media/AudioTrack;
    .locals 9

    .line 1425
    new-instance v8, Landroid/media/AudioTrack;

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v8
.end method

.method private isInitialized()Z
    .locals 1

    .line 1319
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeSampleSyncParams()V
    .locals 17

    move-object/from16 v0, p0

    .line 1238
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPositionUs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    .line 1243
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 1244
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    sub-long v9, v5, v9

    const-wide/16 v11, 0x7530

    const/4 v13, 0x0

    cmp-long v14, v9, v11

    if-ltz v14, :cond_2

    .line 1246
    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    iget v10, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    sub-long v11, v1, v5

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    const/16 v9, 0xa

    .line 1247
    rem-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 1248
    iget v10, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v10, v9, :cond_1

    add-int/lit8 v10, v10, 0x1

    .line 1249
    iput v10, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    .line 1251
    :cond_1
    iput-wide v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 1252
    iput-wide v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    const/4 v9, 0x0

    .line 1253
    :goto_0
    iget v10, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v9, v10, :cond_2

    .line 1254
    iget-wide v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v15, v14, v9

    int-to-long v3, v10

    div-long/2addr v15, v3

    add-long/2addr v11, v15

    iput-wide v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v9, v9, 0x1

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 1258
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 1264
    :cond_3
    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    sub-long v3, v5, v3

    const-wide/32 v9, 0x7a120

    cmp-long v11, v3, v9

    if-ltz v11, :cond_a

    .line 1265
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v3

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    const-string v4, "AudioTrack"

    const-wide/32 v9, 0x4c4b40

    if-eqz v3, :cond_8

    .line 1268
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v11

    div-long/2addr v11, v7

    .line 1269
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v14

    .line 1270
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    cmp-long v3, v11, v7

    if-gez v3, :cond_4

    .line 1272
    iput-boolean v13, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_1

    :cond_4
    sub-long v7, v11, v5

    .line 1273
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-string v3, ", "

    cmp-long v16, v7, v9

    if-lez v16, :cond_6

    .line 1275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1278
    sget-boolean v2, Lcom/google/android/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-nez v2, :cond_5

    .line 1281
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iput-boolean v13, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto :goto_1

    .line 1279
    :cond_5
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1283
    :cond_6
    invoke-direct {v0, v14, v15}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    cmp-long v16, v7, v9

    if-lez v16, :cond_8

    .line 1286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1289
    sget-boolean v2, Lcom/google/android/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-nez v2, :cond_7

    .line 1292
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iput-boolean v13, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto :goto_1

    .line 1290
    :cond_7
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1296
    :cond_8
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_9

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez v2, :cond_9

    const/4 v2, 0x0

    .line 1300
    :try_start_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v7, v1

    const-wide/16 v11, 0x3e8

    mul-long v7, v7, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    sub-long/2addr v7, v11

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    const-wide/16 v11, 0x0

    .line 1303
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    cmp-long v1, v7, v9

    if-lez v1, :cond_9

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring impossibly large audio latency: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    .line 1307
    iput-wide v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1311
    :catch_0
    iput-object v2, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 1314
    :cond_9
    :goto_2
    iput-wide v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    :cond_a
    return-void
.end method

.method private needsPassthroughWorkarounds()Z
    .locals 2

    .line 1352
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private overrideHasPendingData()Z
    .locals 2

    .line 1363
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1364
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1365
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processBuffers(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 811
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 814
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    goto :goto_2

    .line 816
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v3, v3, v1

    .line 817
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 818
    invoke-interface {v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 819
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 820
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1188
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1189
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$2;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 1194
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private resetAudioProcessors()V
    .locals 7

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 612
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 613
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 615
    :cond_0
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 619
    new-array v2, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 620
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    :goto_2
    if-ge v3, v1, :cond_2

    .line 622
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v0, v0, v3

    .line 623
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 624
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private resetSyncParams()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1339
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    .line 1340
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    .line 1341
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 1342
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 1343
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 1344
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    return-void
.end method

.method private setVolumeInternal()V
    .locals 2

    .line 1085
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setVolumeInternalV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setVolumeInternalV3(Landroid/media/AudioTrack;F)V

    :goto_0
    return-void
.end method

.method private static setVolumeInternalV21(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 1504
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private static setVolumeInternalV3(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 1509
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .line 840
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 844
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    goto :goto_1

    .line 846
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 847
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v0, v2, :cond_5

    .line 848
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 849
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 850
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    .line 852
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 853
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 854
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 855
    iput v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    .line 858
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 860
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v4, v2, :cond_7

    .line 862
    iget-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 863
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    int-to-long v6, v2

    mul-long v4, v4, v6

    sub-long/2addr p2, v4

    long-to-int p3, p2

    .line 864
    iget p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_6

    .line 866
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 867
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    invoke-virtual {p3, v2, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_a

    .line 869
    iget p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    .line 870
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    goto :goto_3

    .line 873
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v2, :cond_9

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    .line 874
    :goto_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 875
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result p2

    goto :goto_3

    .line 878
    :cond_9
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {p2, p1, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p2

    .line 881
    :cond_a
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastFeedElapsedRealtimeMs:J

    if-ltz p2, :cond_e

    .line 887
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez p1, :cond_b

    .line 888
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    :cond_b
    if-ne p2, v0, :cond_d

    .line 891
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz p1, :cond_c

    .line 892
    iget-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    iget p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    :cond_c
    const/4 p1, 0x0

    .line 894
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    return v1

    :cond_d
    return v3

    .line 884
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;-><init>(I)V

    throw p1
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x1

    .line 1460
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method private writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 5

    .line 1471
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 1472
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1473
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1474
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1476
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1478
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v3, 0x3e8

    mul-long p4, p4, v3

    invoke-virtual {v0, v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1479
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1480
    iput p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    .line 1482
    :cond_1
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-lez p4, :cond_3

    .line 1484
    iget-object p5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_2

    .line 1486
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    return p5

    :cond_2
    if-ge p5, p4, :cond_3

    return v1

    .line 1493
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_4

    .line 1495
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    return p1

    .line 1498
    :cond_4
    iget p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    return p1
.end method


# virtual methods
.method public configure(Ljava/lang/String;IIII[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;
        }
    .end annotation

    const-string v0, "audio/raw"

    .line 491
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 492
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 495
    invoke-static {p4, p2}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result p4

    iput p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    .line 496
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    invoke-virtual {p4, p6}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    .line 497
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length p6, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, p6, :cond_2

    aget-object v5, p4, v3

    .line 499
    :try_start_0
    invoke-interface {v5, p3, p2, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->configure(III)Z

    move-result v6
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v4, v6

    .line 503
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 504
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutputChannelCount()I

    move-result p2

    .line 505
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutputEncoding()I

    move-result p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 501
    new-instance p2, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    if-eqz v4, :cond_4

    .line 509
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->resetAudioProcessors()V

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_2
    const/16 p4, 0xfc

    const/16 p6, 0xc

    packed-switch p2, :pswitch_data_0

    .line 540
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported channel count: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 537
    :pswitch_0
    sget v3, Lcom/google/android/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_3

    :pswitch_1
    const/16 v3, 0x4fc

    goto :goto_3

    :pswitch_2
    const/16 v3, 0xfc

    goto :goto_3

    :pswitch_3
    const/16 v3, 0xdc

    goto :goto_3

    :pswitch_4
    const/16 v3, 0xcc

    goto :goto_3

    :pswitch_5
    const/16 v3, 0x1c

    goto :goto_3

    :pswitch_6
    const/16 v3, 0xc

    goto :goto_3

    :pswitch_7
    const/4 v3, 0x4

    .line 544
    :goto_3
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    const/4 v7, 0x5

    if-gt v5, v6, :cond_6

    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v6, "foster"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "NVIDIA"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x3

    if-eq p2, v5, :cond_7

    if-eq p2, v7, :cond_7

    const/4 p4, 0x7

    if-eq p2, p4, :cond_5

    goto :goto_4

    .line 547
    :cond_5
    sget p4, Lcom/google/android/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_5

    :cond_6
    :goto_4
    move p4, v3

    .line 560
    :cond_7
    :goto_5
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x19

    if-gt v3, v5, :cond_8

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v5, "fugu"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    if-ne p2, v1, :cond_8

    goto :goto_6

    :cond_8
    move p6, p4

    :goto_6
    if-nez v4, :cond_9

    .line 564
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result p4

    if-eqz p4, :cond_9

    iget p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->encoding:I

    if-ne p4, p1, :cond_9

    iget p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    if-ne p4, p3, :cond_9

    iget p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    if-ne p4, p6, :cond_9

    return-void

    .line 570
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 572
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->encoding:I

    .line 573
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    .line 574
    iput p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sampleRate:I

    .line 575
    iput p6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->channelConfig:I

    const/4 p4, 0x2

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    const/4 p1, 0x2

    .line 576
    :goto_7
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    .line 577
    invoke-static {p4, p2}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    if-eqz p5, :cond_b

    .line 580
    iput p5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_b

    :cond_b
    if-eqz v0, :cond_e

    .line 584
    iget p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    if-eq p1, v7, :cond_d

    const/4 p2, 0x6

    if-ne p1, p2, :cond_c

    goto :goto_8

    :cond_c
    const p1, 0xc000

    .line 589
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_b

    :cond_d
    :goto_8
    const/16 p1, 0x5000

    .line 586
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_b

    .line 592
    :cond_e
    iget p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    .line 593
    invoke-static {p3, p6, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_f

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    .line 594
    :goto_9
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    mul-int/lit8 p2, p1, 0x4

    const-wide/32 p3, 0x3d090

    .line 596
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide p3

    long-to-int p4, p3

    iget p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    mul-int p4, p4, p3

    int-to-long p5, p1

    const-wide/32 v1, 0xb71b0

    .line 598
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v1

    iget p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    int-to-long v3, p1

    mul-long v1, v1, v3

    .line 597
    invoke-static {p5, p6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p5

    long-to-int p1, p5

    if-ge p2, p4, :cond_10

    move p2, p4

    goto :goto_a

    :cond_10
    if-le p2, p1, :cond_11

    move p2, p1

    .line 599
    :cond_11
    :goto_a
    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    :goto_b
    if-eqz v0, :cond_12

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_c

    .line 603
    :cond_12
    iget p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    iget p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    div-int/2addr p1, p2

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide p1

    :goto_c
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    .line 606
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public disableTunneling()V
    .locals 1

    .line 1065
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1066
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    .line 1067
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 1068
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    :cond_0
    return-void
.end method

.method public enableTunnelingV21(I)V
    .locals 3

    .line 1052
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1053
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-eq v0, p1, :cond_2

    .line 1054
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    .line 1055
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 1056
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    :cond_2
    return-void
.end method

.method public getCurrentPositionUs(Z)J
    .locals 6

    .line 418
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 423
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->maybeSampleSyncParams()V

    .line 426
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 428
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v4, :cond_2

    .line 430
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 431
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v0

    .line 432
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 433
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v0

    goto :goto_1

    .line 435
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v2, :cond_3

    .line 437
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPositionUs()J

    move-result-wide v0

    goto :goto_0

    .line 442
    :cond_3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long/2addr v0, v2

    :goto_0
    if-nez p1, :cond_4

    .line 445
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v0, v2

    .line 449
    :cond_4
    :goto_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->applySpeedup(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;J)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 702
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 704
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->initialize()V

    .line 705
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playing:Z

    if-eqz v4, :cond_2

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->play()V

    .line 710
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v4

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    if-eqz v4, :cond_4

    .line 713
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 715
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasData:Z

    return v5

    .line 722
    :cond_3
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_4

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 723
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v10

    cmp-long v4, v10, v7

    if-eqz v4, :cond_4

    return v5

    .line 728
    :cond_4
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasData:Z

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v10

    iput-boolean v10, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasData:Z

    if-eqz v4, :cond_5

    if-nez v10, :cond_5

    .line 730
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_5

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->lastFeedElapsedRealtimeMs:J

    sub-long v18, v10, v12

    .line 732
    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->listener:Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;

    iget v15, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSize:I

    iget-wide v10, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v16

    invoke-interface/range {v14 .. v19}, Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;->onUnderrun(IJJ)V

    .line 735
    :cond_5
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    if-nez v4, :cond_e

    .line 737
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_6

    return v6

    .line 742
    :cond_6
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v4, :cond_7

    iget v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    if-nez v4, :cond_7

    .line 744
    iget v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputEncoding:I

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    .line 747
    :cond_7
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz v4, :cond_9

    .line 748
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainAudioProcessorsToEndOfStream()Z

    move-result v4

    if-nez v4, :cond_8

    return v5

    .line 753
    :cond_8
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    new-instance v15, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;

    iget-object v12, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 754
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 755
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getWrittenFrames()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v5

    const/16 v17, 0x0

    move-object v11, v15

    move-object v9, v15

    move-wide v15, v5

    invoke-direct/range {v11 .. v17}, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJLcom/google/android/exoplayer2/audio/AudioTrack$1;)V

    .line 753
    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 756
    iput-object v10, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 759
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->resetAudioProcessors()V

    .line 762
    :cond_9
    iget v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-nez v4, :cond_a

    .line 763
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    const/4 v4, 0x1

    .line 764
    iput v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    goto :goto_3

    :cond_a
    const/4 v4, 0x1

    .line 767
    iget-wide v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 768
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 769
    iget v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-ne v7, v4, :cond_b

    sub-long v7, v5, v2

    .line 770
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v11, 0x30d40

    cmp-long v4, v7, v11

    if-lez v4, :cond_b

    .line 771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discontinuity detected [expected "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", got "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AudioTrack"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    .line 773
    iput v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    goto :goto_2

    :cond_b
    const/4 v4, 0x2

    .line 775
    :goto_2
    iget v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-ne v7, v4, :cond_c

    .line 778
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    sub-long v4, v2, v5

    add-long/2addr v7, v4

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    const/4 v4, 0x1

    .line 779
    iput v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 780
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->listener:Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;->onPositionDiscontinuity()V

    .line 784
    :cond_c
    :goto_3
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v4, :cond_d

    .line 785
    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    iget v6, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    goto :goto_4

    .line 787
    :cond_d
    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    .line 790
    :goto_4
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 793
    :cond_e
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v1, :cond_f

    .line 795
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    goto :goto_5

    .line 797
    :cond_f
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->processBuffers(J)V

    .line 800
    :goto_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_10

    .line 801
    iput-object v10, v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    return v1

    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public handleDiscontinuity()V
    .locals 2

    .line 677
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 678
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 5

    .line 960
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getWrittenFrames()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 962
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 953
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public isPassthroughSupported(Ljava/lang/String;)Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    if-eqz v0, :cond_0

    .line 403
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 1098
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playing:Z

    .line 1099
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    .line 1101
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    const/4 v0, 0x1

    .line 665
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playing:Z

    .line 666
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .line 906
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainAudioProcessorsToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->handleEndOfStream(J)V

    const/4 v0, 0x0

    .line 913
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    const/4 v0, 0x1

    .line 914
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 5

    .line 1169
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    .line 1170
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 1171
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1172
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 1175
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playing:Z

    return-void
.end method

.method public reset()V
    .locals 7

    .line 1113
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    .line 1114
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    .line 1115
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    .line 1116
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    .line 1117
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    const/4 v2, 0x0

    .line 1118
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    .line 1119
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1120
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1121
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_0

    .line 1122
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1123
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;

    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$200(Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1125
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 1126
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersOffsetUs:J

    .line 1127
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersPositionUs:J

    .line 1128
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1129
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 1130
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 1131
    aget-object v5, v5, v3

    .line 1132
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 1133
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1135
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    const/4 v3, -0x1

    .line 1136
    iput v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    .line 1137
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1138
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    .line 1139
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 1140
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 1141
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    .line 1142
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1144
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1147
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1148
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1149
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 1150
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 1151
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$1;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 1161
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1020
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 1021
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz p1, :cond_1

    return-void

    .line 1025
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->reset()V

    const/4 p1, 0x0

    .line 1026
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->audioSessionId:I

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 3

    .line 973
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    .line 975
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p1

    .line 978
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    iget v2, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 979
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->setSpeed(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 980
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->setPitch(F)F

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 981
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    .line 983
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    .line 984
    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$200(Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 986
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 987
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 990
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_1

    .line 992
    :cond_3
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 995
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p1
.end method

.method public setVolume(F)V
    .locals 1

    .line 1078
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1079
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->volume:F

    .line 1080
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->setVolumeInternal()V

    :cond_0
    return-void
.end method
