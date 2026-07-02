.class public Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;
.super Ljava/lang/Object;
.source "AudibleDrmMediaSourceProvider.java"

# interfaces
.implements Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;
.implements Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;


# instance fields
.field private final LOGGER:Lorg/slf4j/Logger;

.field private final authenticationProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

.field private callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

.field private currentMediaSource:Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;

.field private final drmAuthenticationFactory:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;

.field private final maxAvailableTimeProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/provider/VoucherProvider;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    .line 65
    new-instance v0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/provider/VoucherProvider;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/audible/mobile/metric/logger/MetricManager;)V

    new-instance p1, Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    invoke-direct {p1}, Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;-><init>()V

    new-instance p2, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    invoke-direct {p2}, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;-><init>()V

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;-><init>(Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;Lcom/audible/mobile/metric/logger/MetricManager;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->LOGGER:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->currentMediaSource:Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;

    const-string v0, "drmAuthenticationFactory must not be null"

    .line 84
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->drmAuthenticationFactory:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;

    const-string p1, "maxAvailableTimeProvider can\'t be null"

    .line 86
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    iput-object p2, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->maxAvailableTimeProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    const-string p1, "authenticationProvider can not be null"

    .line 87
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    iput-object p3, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->authenticationProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    const-string p1, "metricManager must not be null"

    .line 88
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/mobile/metric/logger/MetricManager;

    iput-object p4, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    return-void
.end method


# virtual methods
.method public getAudioDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;
    .locals 1

    .line 95
    sget-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->AudibleDrmExo:Lcom/audible/mobile/player/AudioDataSourceType;

    return-object v0
.end method

.method public getAuthenticationProvider()Lcom/audible/mobile/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/audible/mobile/util/Optional<",
            "Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->authenticationProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    invoke-static {v0}, Lcom/audible/mobile/util/Optional;->of(Ljava/lang/Object;)Lcom/audible/mobile/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAvailableTimeProvider()Lcom/audible/mobile/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/audible/mobile/util/Optional<",
            "Lcom/audible/mobile/player/exo/sources/MaxAvailableTimeProvider;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->maxAvailableTimeProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    invoke-static {v0}, Lcom/audible/mobile/util/Optional;->of(Ljava/lang/Object;)Lcom/audible/mobile/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onLoadError(Ljava/io/IOException;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    if-eqz v0, :cond_0

    .line 154
    sget-object v1, Lcom/audible/mobile/player/Error;->IO_ERROR:Lcom/audible/mobile/player/Error;

    invoke-interface {v0, v1, p1}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;->onAudioSampleLoadingError(Lcom/audible/mobile/player/Error;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public prepare(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V
    .locals 9

    .line 101
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/AudioDataSourceType;->AudibleDrmExo:Lcom/audible/mobile/player/AudioDataSourceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can\'t prepare MediaSource for unsupported AudioDataSourceType"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Can\'t prepare MediaSource without Uri."

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t prepare MediaSource without path."

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    iput-object p2, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    .line 111
    new-instance v0, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;

    iget-object v2, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->maxAvailableTimeProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    iget-object v3, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->authenticationProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    iget-object v4, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->drmAuthenticationFactory:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;-><init>(Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationFactory;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;Landroid/os/Handler;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V

    .line 112
    iput-object v0, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->currentMediaSource:Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;

    .line 113
    iget-object p1, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    invoke-interface {p1, v0}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;->onMediaSourcePrepared(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto :goto_2

    .line 106
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t prepare MediaSource without valid file."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;->onMediaSourceError(Ljava/lang/Exception;)V

    .line 107
    iget-object p1, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance p2, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->ExoPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v2, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->InvalidMediasourceFileError:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    invoke-direct {p2, v0, v1, v2}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    invoke-virtual {p2}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    :goto_2
    return-void
.end method

.method public reset()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->currentMediaSource:Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->getSdk()Lcom/audible/sdk/AudibleSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/sdk/AudibleSDK;->release()V

    .line 123
    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/aax/AudibleSdkMediaSource;->getTimeAvailableSdk()Lcom/audible/sdk/AudibleSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/sdk/AudibleSDK;->release()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->maxAvailableTimeProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;->reset()V

    .line 126
    iget-object v0, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->authenticationProvider:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;->reset()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;->callback:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;

    return-void
.end method
