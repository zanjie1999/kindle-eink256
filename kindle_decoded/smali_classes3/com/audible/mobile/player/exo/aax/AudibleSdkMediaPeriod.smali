.class Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;
.super Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;
.source "AudibleSdkMediaPeriod.java"

# interfaces
.implements Lcom/audible/mobile/player/audio/FileRenameEventListener;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final MICROS_PER_SECOND:J


# instance fields
.field private final audibleDrmAuthenticationProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

.field private final audibleDrmMaxAvailableTimeProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

.field private final audibleSdkLock:Ljava/lang/Object;

.field private final callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

.field private final dataSource:Lcom/audible/mobile/player/AudioDataSource;

.field private final drmAuthentication:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

.field private durationUs:J

.field private frameDurationUs:J

.field private mediaFormat:Lcom/google/android/exoplayer2/Format;

.field private preparationException:Ljava/io/IOException;

.field private renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

.field private final renamableAudioFileObserverFactory:Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;

.field private final sdk:Lcom/audible/sdk/AudibleSDK;

.field private final timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->LOGGER:Lorg/slf4j/Logger;

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->MICROS_PER_SECOND:J

    return-void
.end method

.method constructor <init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;Ljava/lang/Object;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;Lcom/google/android/exoplayer2/source/MediaSource$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Handler;Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V
    .locals 2

    .line 145
    invoke-direct {p0, p10, p11, p8, p9}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Handler;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;Lcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    iput-wide v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->durationUs:J

    const-string v0, "AudibleSdkMediaSource.EventListener must not be null"

    .line 146
    invoke-static {p8, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p8, "MediaSource.Listener must not be null"

    .line 147
    invoke-static {p9, p8}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p8, "Allocator must not be null"

    .line 148
    invoke-static {p10, p8}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p8, "Handler must not be null"

    .line 149
    invoke-static {p11, p8}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p8, "sdk can not be null"

    .line 150
    invoke-static {p1, p8}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/sdk/AudibleSDK;

    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->sdk:Lcom/audible/sdk/AudibleSDK;

    const-string p1, "timeAvailableSdk can not be null"

    .line 151
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/sdk/AudibleSDK;

    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    const-string p1, "audibleDrmMaxAvailableTimeProvider can not be null"

    .line 152
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    iput-object p3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->audibleDrmMaxAvailableTimeProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    const-string p1, "Audible SDK lock must not be null"

    .line 153
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->audibleSdkLock:Ljava/lang/Object;

    const-string p1, "authenticationProvider can not be null"

    .line 154
    invoke-static {p5, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    iput-object p5, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->audibleDrmAuthenticationProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    const-string p1, "AudibleDrmAuthentication must not be null"

    .line 155
    invoke-static {p6, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

    iput-object p6, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->drmAuthentication:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

    const-string p1, "AudioDataSource must not be null"

    .line 156
    invoke-static {p7, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p7, Lcom/audible/mobile/player/AudioDataSource;

    iput-object p7, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    const-string p1, "renamableAudioFileObserverFactory can not be null"

    .line 157
    invoke-static {p12, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p12, Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;

    iput-object p12, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->renamableAudioFileObserverFactory:Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;

    const-string p1, "callback can not be null"

    .line 158
    invoke-static {p13, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p13, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    iput-object p13, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    return-void
.end method

.method private constructor <init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;Ljava/lang/Object;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;Lcom/google/android/exoplayer2/source/MediaSource$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Handler;Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V
    .locals 14

    move-object v1, p1

    move-object/from16 v0, p6

    .line 113
    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;->get(Lcom/audible/sdk/AudibleSDK;)Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

    move-result-object v6

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;-><init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;Ljava/lang/Object;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;Lcom/google/android/exoplayer2/source/MediaSource$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Handler;Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;Ljava/lang/Object;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;Lcom/google/android/exoplayer2/source/MediaSource$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Handler;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V
    .locals 14

    .line 98
    new-instance v12, Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;

    invoke-direct {v12}, Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;-><init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;Ljava/lang/Object;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;Lcom/google/android/exoplayer2/source/MediaSource$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Handler;Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V

    return-void
.end method

.method static getMimeTypeForFileType(Lcom/audible/sdk/AudibleSDK$FileType;)Ljava/lang/String;
    .locals 2

    .line 277
    sget-object v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod$1;->$SwitchMap$com$audible$sdk$AudibleSDK$FileType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 284
    sget-object v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Tried to load unsupported file type {}"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "audio/mpeg"

    return-object p0

    :cond_1
    const-string p0, "audio/mp4a-latm"

    return-object p0
.end method

.method private handleSdkException(Ljava/lang/Exception;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->logger:Lorg/slf4j/Logger;

    const-string v1, "Unable to prepare data source due to exception."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to prepare AudibleSdkMediaPeriod."

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->preparationException:Ljava/io/IOException;

    return-void
.end method

.method private notifyFileRenamed(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    if-eqz v0, :cond_0

    .line 328
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;->onMediaSourceLocationChanged(Landroid/net/Uri;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method getDuration()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->durationUs:J

    return-wide v0
.end method

.method getLoadable(Lcom/google/android/exoplayer2/source/SampleQueue;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/util/ConditionVariable;Landroid/os/Handler;Ljava/lang/Runnable;J)Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
    .locals 16

    move-object/from16 v0, p0

    .line 248
    new-instance v15, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;

    iget-object v2, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->sdk:Lcom/audible/sdk/AudibleSDK;

    iget-object v3, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    iget-object v4, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->audibleSdkLock:Ljava/lang/Object;

    iget-wide v12, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->frameDurationUs:J

    iget-object v14, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    move-object v1, v15

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-direct/range {v1 .. v14}, Lcom/audible/mobile/player/exo/aax/GetEncodedAudioLoadable;-><init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/sdk/AudibleSDK;Ljava/lang/Object;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/util/ConditionVariable;Landroid/os/Handler;Ljava/lang/Runnable;JJLcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V

    return-object v15
.end method

.method getMediaFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->mediaFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method maybeThrowPrepareErrorInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->preparationException:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    throw v0
.end method

.method public onFileRenamed(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .line 304
    sget-object v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "File renamed event has fired"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v1}, Lcom/audible/sdk/AudibleSDK;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    sget-object v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Renaming SDK file"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/sdk/AudibleSDK;->justSetFileName(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/sdk/AudibleSDK;->justSetFileName(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 314
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->notifyFileRenamed(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 316
    :cond_1
    sget-object p1, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "fileRenamed called, but file names don\'t match!"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method prepareInternal()Z
    .locals 15

    .line 164
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->renamableAudioFileObserverFactory:Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;

    invoke-virtual {v1, v0, p0}, Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;->getFileObserver(Ljava/io/File;Lcom/audible/mobile/player/audio/FileRenameEventListener;)Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    .line 170
    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->audibleSdkLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK;->release()V

    .line 173
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/audible/sdk/AudibleSDK;->openFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->logger:Lorg/slf4j/Logger;

    const-string v3, "Failed to open file via SDK to prepare MediaPeriod."

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Failed to open file via SDK to prepare AudibleSdkMediaPeriod."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->preparationException:Ljava/io/IOException;
    :try_end_0
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/audible/sdk/UnsupportedFileFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    .line 180
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK;->release()V

    .line 181
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/audible/sdk/AudibleSDK;->openFile(Ljava/lang/String;)Z

    .line 182
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->audibleDrmMaxAvailableTimeProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0, v3}, Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;->setTimeAvailableSdk(Lcom/audible/sdk/AudibleSDK;)V

    .line 183
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->audibleDrmAuthenticationProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->drmAuthentication:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

    invoke-virtual {v0, v3}, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;->setAudibleDrmAuthentication(Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;)V

    .line 184
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->drmAuthentication:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v3}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    iget-object v4, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v4}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->authenticate(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object v0

    .line 186
    sget-object v3, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 187
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->logger:Lorg/slf4j/Logger;

    const-string v4, "Failed to authenticate via SDK."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 188
    sget-object v3, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Failed to authenticate via SDK."

    new-instance v4, Lcom/audible/license/exceptions/VoucherLoadException;

    const-string v5, "Invalid voucher when authenticate file."

    invoke-direct {v4, v5}, Lcom/audible/license/exceptions/VoucherLoadException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->preparationException:Ljava/io/IOException;

    goto :goto_0

    .line 191
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Failed to authenticate via SDK."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->preparationException:Ljava/io/IOException;
    :try_end_2
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/audible/sdk/UnsupportedFileFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v2

    .line 196
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->getPCMSamplesPerCodecFrame()I

    move-result v0

    .line 197
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK;->getAudioChannelCount()I

    move-result v9

    .line 198
    iget-object v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK;->getSampleRate()I

    move-result v10

    .line 199
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v4}, Lcom/audible/sdk/AudibleSDK;->getDuration()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->durationUs:J

    int-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double v3, v3, v5

    int-to-double v5, v10

    div-double/2addr v3, v5

    .line 200
    sget-wide v5, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->MICROS_PER_SECOND:J

    long-to-double v5, v5

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->frameDurationUs:J

    .line 202
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->sdk:Lcom/audible/sdk/AudibleSDK;

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->getFileType()Lcom/audible/sdk/AudibleSDK$FileType;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->getMimeTypeForFileType(Lcom/audible/sdk/AudibleSDK$FileType;)Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-static {v10, v9}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAacLcAudioSpecificConfig(II)[B

    move-result-object v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 205
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 204
    invoke-static/range {v4 .. v14}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->mediaFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_4
    .catch Lcom/audible/sdk/AudibleSDKException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/audible/sdk/UnsupportedFileFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    :try_start_5
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 214
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->handleSdkException(Ljava/lang/Exception;)V

    .line 215
    monitor-exit v1

    return v2

    :catch_1
    move-exception v0

    .line 211
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->handleSdkException(Ljava/lang/Exception;)V

    .line 212
    monitor-exit v1

    return v2

    :catch_2
    move-exception v0

    .line 208
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->handleSdkException(Ljava/lang/Exception;)V

    .line 209
    monitor-exit v1

    return v2

    .line 217
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method releaseInternal()V
    .locals 3

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->mediaFormat:Lcom/google/android/exoplayer2/Format;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 256
    iput-wide v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->durationUs:J

    .line 257
    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->preparationException:Ljava/io/IOException;

    .line 260
    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 262
    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;->renamableAudioFileObserver:Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    :cond_0
    return-void
.end method
