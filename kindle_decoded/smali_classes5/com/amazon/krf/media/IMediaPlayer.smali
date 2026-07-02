.class public interface abstract Lcom/amazon/krf/media/IMediaPlayer;
.super Ljava/lang/Object;
.source "IMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;
    }
.end annotation


# virtual methods
.method public abstract addOnStateChangedListener(Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;)V
.end method

.method public abstract getDuration()I
.end method

.method public abstract getPlaybackPosition()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract notifyMediaURIAvailable(Ljava/lang/String;)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract release()V
.end method

.method public abstract removeOnStateChangedListener(Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;)V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract stop()V
.end method
