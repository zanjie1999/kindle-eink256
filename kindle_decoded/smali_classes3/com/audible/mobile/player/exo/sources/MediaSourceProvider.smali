.class public interface abstract Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;
.super Ljava/lang/Object;
.source "MediaSourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;
    }
.end annotation


# virtual methods
.method public abstract getAudioDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;
.end method

.method public abstract getAuthenticationProvider()Lcom/audible/mobile/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/audible/mobile/util/Optional<",
            "Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxAvailableTimeProvider()Lcom/audible/mobile/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/audible/mobile/util/Optional<",
            "Lcom/audible/mobile/player/exo/sources/MaxAvailableTimeProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetworkBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
.end method

.method public abstract prepare(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V
.end method

.method public abstract reset()V
.end method
