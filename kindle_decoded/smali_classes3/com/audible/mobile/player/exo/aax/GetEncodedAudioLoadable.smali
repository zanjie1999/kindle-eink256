.class Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;
.super Ljava/lang/Object;
.source "GetEncodedAudioLoadable.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# static fields
.field private static final FRAME_SIZE:I = 0x400

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final audibleSdkLock:Ljava/lang/Object;

.field private final callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

.field private firstRead:Z

.field private final frameDurationUs:J

.field private final handler:Landroid/os/Handler;

.field private volatile loadCanceled:Z

.field private final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private positionUs:J

.field private final sampleQueue:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final sdk:Lcom/audible/sdk/AudibleSDK;

.field private final timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/sdk/AudibleSDK;Ljava/lang/Object;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/util/ConditionVariable;Landroid/os/Handler;Ljava/lang/Runnable;JJLcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->firstRead:Z

    .line 70
    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->sdk:Lcom/audible/sdk/AudibleSDK;

    .line 71
    iput-object p3, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->audibleSdkLock:Ljava/lang/Object;

    .line 72
    iput-object p4, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->sampleQueue:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 73
    iput-object p5, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 74
    iput-object p6, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 75
    iput-object p7, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->handler:Landroid/os/Handler;

    .line 76
    iput-object p8, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 77
    iput-wide p9, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->positionUs:J

    .line 78
    iput-wide p11, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->frameDurationUs:J

    .line 79
    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    .line 80
    iput-object p13, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    return-void
.end method

.method private blockUntilNextTry()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 189
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isNextPositionUnavailable()Z
    .locals 4

    const/4 v0, 0x1

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v1}, Lcom/audible/sdk/AudibleSDK;->getDuration()I

    move-result v1

    .line 207
    iget-object v2, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    invoke-static {v2}, Lcom/audible/sdk/SdkUtils;->getMaxAvailableTimeMs(Lcom/audible/sdk/AudibleSDK;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    if-eqz v2, :cond_0

    if-ge v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v1}, Lcom/audible/sdk/AudibleSDK;->getPlaybackPosition()I

    move-result v1
    :try_end_0
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    .line 213
    sget-object v2, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "{} getting next position from SDK."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method private throwIOException(Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->loadCanceled:Z

    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->getDuration()I

    move-result v0

    if-gtz v0, :cond_0

    .line 100
    sget-object v0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Getting invalid duration from SDK, abandon loading."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_0 .. :try_end_0} :catch_5

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 109
    :try_start_1
    iget-object v2, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->audibleSdkLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :try_start_2
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->sdk:Lcom/audible/sdk/AudibleSDK;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->positionUs:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v3, v5}, Lcom/audible/sdk/AudibleSDK;->seek(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    sget-object v3, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Seek failed to position {}, loading from 0"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 112
    iput-wide v0, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->positionUs:J

    .line 114
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v2

    .line 116
    sget-object v3, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    iget-wide v4, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->positionUs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Unable to seek to position {} before loading audio, loading from 0"

    invoke-interface {v3, v5, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iput-wide v0, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->positionUs:J

    :goto_0
    const v0, 0x7fffffff

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_1
    if-lez v0, :cond_8

    .line 123
    iget-boolean v2, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->loadCanceled:Z

    if-nez v2, :cond_8

    .line 126
    iget-object v2, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V

    const/4 v2, 0x0

    .line 128
    :try_start_4
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->isNextPositionUnavailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/Allocator;->getTotalBytesAllocated()I

    move-result v3

    iget-object v4, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/upstream/Allocator;->getIndividualAllocationLength()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 133
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    invoke-interface {v3}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;->onAudioSampleLoadingPause()V

    .line 135
    :cond_2
    sget-object v3, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Next position is not available {} yet, will wait for next retry."

    iget-wide v5, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->positionUs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->blockUntilNextTry()V

    goto :goto_1

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->audibleSdkLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/audible/sdk/DeviceNotActivatedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/audible/sdk/DeviceNotActivatedForThisFileException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 140
    :try_start_5
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v3, v1}, Lcom/audible/sdk/AudibleSDK;->getEncodedAudio([B)I

    move-result v3

    .line 141
    iget-boolean v4, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->firstRead:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 142
    iput-boolean v4, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->firstRead:Z

    .line 143
    iget-object v4, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v4}, Lcom/audible/sdk/AudibleSDK;->getPlaybackPosition()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v7, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->positionUs:J

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    .line 146
    sget-object v4, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Retrying seek after first call to #getEncodedAudio reset position to 0"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->sdk:Lcom/audible/sdk/AudibleSDK;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->positionUs:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v4, v6}, Lcom/audible/sdk/AudibleSDK;->seek(I)Z

    .line 148
    monitor-exit v0

    goto :goto_2

    .line 151
    :cond_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-lez v3, :cond_6

    .line 167
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 168
    iget-object v2, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->sampleQueue:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v0, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 169
    iget-object v4, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->sampleQueue:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v5, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->positionUs:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, v3

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 170
    iget-wide v4, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->positionUs:J

    iget-wide v6, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->frameDurationUs:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->positionUs:J

    .line 180
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->getTotalBytesAllocated()I

    move-result v0

    const/high16 v2, 0x800000

    if-le v0, v2, :cond_5

    .line 181
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->blockUntilNextTry()V

    :cond_5
    :goto_2
    move v0, v3

    goto/16 :goto_1

    :cond_6
    if-nez v3, :cond_7

    .line 172
    sget-object v0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Finished loading audio samples from AudibleSDK"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 175
    :cond_7
    sget-object v0, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Error reading audio sample from AudibleSDK with code {}"

    invoke-interface {v0, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudibleSDK#getEncodedAudio returned "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->throwIOException(Ljava/lang/Exception;)V

    throw v2

    :catchall_1
    move-exception v1

    .line 151
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/audible/sdk/DeviceNotActivatedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/audible/sdk/DeviceNotActivatedForThisFileException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    .line 162
    sget-object v1, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Unable to load audio data from AudibleSDK due to IndexOutOfBoundsException"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->throwIOException(Ljava/lang/Exception;)V

    throw v2

    :catch_2
    move-exception v0

    .line 159
    sget-object v1, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Unable to load audio data from AudibleSDK due to DeviceNotActivatedForThisFileException"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->throwIOException(Ljava/lang/Exception;)V

    throw v2

    :catch_3
    move-exception v0

    .line 156
    sget-object v1, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Unable to load audio data from AudibleSDK due to DeviceNotActivatedException"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->throwIOException(Ljava/lang/Exception;)V

    throw v2

    :catch_4
    move-exception v0

    .line 153
    sget-object v1, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Unable to load audio data from AudibleSDK due to AudibleSDKException"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->throwIOException(Ljava/lang/Exception;)V

    throw v2

    :cond_8
    :goto_3
    return-void

    :catch_5
    move-exception v0

    .line 104
    sget-object v1, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "{} getting duration from SDK, abandon loading."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
