.class public interface abstract Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;
.super Ljava/lang/Object;
.source "ReaderAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDestroy()V
.end method

.method public abstract onPlaybackPaused()V
.end method

.method public abstract onPlaybackStarted()V
.end method

.method public abstract onSeekPositionChanged(I)V
.end method
