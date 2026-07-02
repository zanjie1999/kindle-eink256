.class public final Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 96
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    .line 97
    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    return-object p0
.end method


# virtual methods
.method public audioSessionId(I)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$6;-><init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public audioTrackUnderrun(IJJ)V
    .locals 9

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;-><init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public decoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;-><init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;-><init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$1;-><init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;-><init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
