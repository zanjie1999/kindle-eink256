.class public interface abstract Lcom/google/android/exoplayer2/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;,
        Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;,
        Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    }
.end annotation


# virtual methods
.method public varargs abstract blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
.end method

.method public abstract prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
.end method

.method public varargs abstract sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
.end method
