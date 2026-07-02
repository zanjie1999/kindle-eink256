.class Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;
.super Ljava/lang/Object;
.source "SdkBasedAudioPlayer.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final WAIT_TIME_MILLIS:J = 0x4e20L


# instance fields
.field private volatile lastPositionNotified:J

.field private final onPositionChangeRunnable:Ljava/lang/Runnable;

.field private volatile playbackBridgeWakelockThread:Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

.field private final positionProcessingExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field final synthetic this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)V
    .locals 1

    .line 1860
    iput-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    const-string v0, "sdk-player-position-processing"

    .line 1880
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Executors;->newQueueingCachedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->positionProcessingExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1882
    new-instance p1, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;-><init>(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;)V

    iput-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->onPositionChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;)J
    .locals 2

    .line 1860
    iget-wide v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->lastPositionNotified:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;J)J
    .locals 0

    .line 1860
    iput-wide p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->lastPositionNotified:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;)Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;
    .locals 0

    .line 1860
    iget-object p0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->playbackBridgeWakelockThread:Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

    return-object p0
.end method

.method static synthetic access$402(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;)Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;
    .locals 0

    .line 1860
    iput-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->playbackBridgeWakelockThread:Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

    return-object p1
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1953
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$200(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 1957
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->positionProcessingExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1958
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->positionProcessingExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->onPositionChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 1960
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {p1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$300(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "position precessing queue size full, not adding new runnable."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
