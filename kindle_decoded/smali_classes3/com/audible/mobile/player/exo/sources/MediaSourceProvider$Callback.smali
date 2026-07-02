.class public interface abstract Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;
.super Ljava/lang/Object;
.source "MediaSourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAudioSampleLoadingError(Lcom/audible/mobile/player/Error;Ljava/io/IOException;)V
.end method

.method public abstract onAudioSampleLoadingPause()V
.end method

.method public abstract onMediaSourceError(Ljava/lang/Exception;)V
.end method

.method public abstract onMediaSourceLocationChanged(Landroid/net/Uri;Landroid/net/Uri;)V
.end method

.method public abstract onMediaSourcePrepared(Lcom/google/android/exoplayer2/source/MediaSource;)V
.end method
