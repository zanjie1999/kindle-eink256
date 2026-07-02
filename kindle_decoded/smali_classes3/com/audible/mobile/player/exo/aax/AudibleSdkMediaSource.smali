.class public Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;
.super Ljava/lang/Object;
.source "AudibleSdkMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final audibleDrmAuthenticationProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

.field private final audibleDrmMaxAvailableTimeProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

.field private final audibleSdkLock:Ljava/lang/Object;

.field private final callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

.field private final dataSource:Lcom/audible/mobile/player/AudioDataSource;

.field private final drmAuthenticationFactory:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final sdk:Lcom/audible/sdk/AudibleSDK;

.field private sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private timelineHasDuration:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;Landroid/os/Handler;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->audibleSdkLock:Ljava/lang/Object;

    const-string v0, "drmAuthenticationFactory must not be null"

    .line 62
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;

    iput-object p3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->drmAuthenticationFactory:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;

    const-string p3, "authenticationProvider can not be null"

    .line 63
    invoke-static {p2, p3}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->audibleDrmAuthenticationProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    const-string p2, "AudioDataSource must not be null"

    .line 64
    invoke-static {p4, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/mobile/player/AudioDataSource;

    iput-object p4, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    const-string p2, "EventListener must not be null"

    .line 65
    invoke-static {p5, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;

    iput-object p5, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->eventListener:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;

    const-string p2, "Handler must not be null"

    .line 66
    invoke-static {p6, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Landroid/os/Handler;

    iput-object p6, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->eventHandler:Landroid/os/Handler;

    .line 67
    new-instance p2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const-string p2, "audibleDrmMaxAvailableTimeProvider can not be null"

    .line 68
    invoke-static {p1, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->audibleDrmMaxAvailableTimeProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    const-string p1, "callback can not be null"

    .line 69
    invoke-static {p7, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p7, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    iput-object p7, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    .line 70
    new-instance p1, Lcom/audible/sdk/AudibleSDK;

    invoke-direct {p1}, Lcom/audible/sdk/AudibleSDK;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->sdk:Lcom/audible/sdk/AudibleSDK;

    .line 71
    new-instance p1, Lcom/audible/sdk/AudibleSDK;

    invoke-direct {p1}, Lcom/audible/sdk/AudibleSDK;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "MediaPeriodId cannot be null."

    .line 93
    invoke-static {v1, v2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Allocator cannot be null."

    move-object/from16 v13, p2

    .line 94
    invoke-static {v13, v2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "AudibleSdkMediaSource cannot create period with a non-zero index."

    invoke-static {v1, v2}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 96
    new-instance v1, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;

    iget-object v4, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->sdk:Lcom/audible/sdk/AudibleSDK;

    iget-object v5, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    iget-object v6, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->audibleDrmMaxAvailableTimeProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    iget-object v7, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->audibleSdkLock:Ljava/lang/Object;

    iget-object v8, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->audibleDrmAuthenticationProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    iget-object v9, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->drmAuthenticationFactory:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;

    iget-object v10, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    iget-object v11, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->eventListener:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;

    iget-object v12, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object v14, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->eventHandler:Landroid/os/Handler;

    iget-object v15, v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    move-object v3, v1

    move-object/from16 v13, p2

    invoke-direct/range {v3 .. v15}, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;-><init>(Lcom/audible/sdk/AudibleSDK;Lcom/audible/sdk/AudibleSDK;Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;Ljava/lang/Object;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;Lcom/google/android/exoplayer2/source/MediaSource$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Handler;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V

    return-object v1
.end method

.method public getSdk()Lcom/audible/sdk/AudibleSDK;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->sdk:Lcom/audible/sdk/AudibleSDK;

    return-object v0
.end method

.method public getTimeAvailableSdk()Lcom/audible/sdk/AudibleSDK;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 5

    .line 116
    iget-object p2, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 119
    :cond_0
    iget-boolean p2, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->timelineHasDuration:Z

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 125
    iput-boolean v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->timelineHasDuration:Z

    .line 126
    iget-object p2, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 2

    .line 78
    iput-object p3, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 79
    new-instance p1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 p2, 0x0

    .line 80
    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 103
    check-cast p1, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaPeriod;

    invoke-virtual {p1}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->release()V

    return-void
.end method

.method public releaseSource()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    return-void
.end method
