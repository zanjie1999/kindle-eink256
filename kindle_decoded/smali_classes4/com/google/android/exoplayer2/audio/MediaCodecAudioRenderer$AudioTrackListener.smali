.class final Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioTrackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$1;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;-><init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioSessionId(I)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioTrackPositionDiscontinuity()V

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$202(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;Z)Z

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 8

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    .line 444
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioTrackUnderrun(IJJ)V

    return-void
.end method
