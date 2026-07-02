.class public interface abstract Lcom/google/android/exoplayer2/RendererCapabilities;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# virtual methods
.method public abstract getTrackType()I
.end method

.method public abstract supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract supportsMixedMimeTypeAdaptation()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method
