.class public interface abstract Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;
.super Ljava/lang/Object;
.source "AudioPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/AudioPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaPlayerLifecycleListener"
.end annotation


# virtual methods
.method public abstract onMediaPlayerCreated(Landroid/media/MediaPlayer;)V
.end method

.method public abstract onMediaPlayerDestroyed(Landroid/media/MediaPlayer;)V
.end method
