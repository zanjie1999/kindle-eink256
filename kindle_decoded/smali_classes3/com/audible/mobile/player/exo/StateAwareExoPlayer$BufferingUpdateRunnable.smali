.class Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;
.super Ljava/lang/Object;
.source "StateAwareExoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/exo/StateAwareExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferingUpdateRunnable"
.end annotation


# static fields
.field private static final UNKNOWN_CACHED_BYTES:I = -0x1


# instance fields
.field private lastReportedDuration:I

.field final synthetic this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 955
    iput p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;->lastReportedDuration:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;)V
    .locals 0

    .line 948
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;-><init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 960
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$1300(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 961
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$1400(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)V

    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$1300(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v0

    long-to-int v1, v0

    .line 967
    iget v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;->lastReportedDuration:I

    if-eq v1, v0, :cond_1

    .line 968
    iput v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;->lastReportedDuration:I

    .line 969
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$400(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onBufferingUpdate(II)V

    :cond_1
    return-void
.end method
