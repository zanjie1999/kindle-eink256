.class Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;
.super Ljava/lang/Object;
.source "SdkBasedAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;)V
    .locals 0

    .line 1882
    iput-object p1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1887
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v0, v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v1, v0

    .line 1889
    iget-object v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    invoke-static {v3}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->access$000(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 1892
    iget-object v3, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v3, v3, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v3, v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$100(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;I)V

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    invoke-static {v0, v1, v2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->access$002(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;J)J

    .line 1897
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v0, v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$200(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 1900
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v2, v2, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-virtual {v2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v2

    sget-object v3, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    if-ne v2, v3, :cond_4

    .line 1902
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v2, v2, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$300(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Lorg/slf4j/Logger;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Cached buffers remaining {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, 0x30

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 1905
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    invoke-static {v2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->access$400(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;)Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1906
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    new-instance v3, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

    iget-object v4, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v4, v4, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v4}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$500(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Landroid/os/PowerManager;

    move-result-object v4

    const-wide/16 v5, 0x4e20

    invoke-direct {v3, v4, v5, v6}, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;-><init>(Landroid/os/PowerManager;J)V

    invoke-static {v2, v3}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->access$402(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;)Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

    .line 1907
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    invoke-static {v2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->access$400(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;)Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1911
    :cond_1
    iget-object v2, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v2, v2, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v2}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$600(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 1912
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v0, v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$700(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1913
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v0, v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$300(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v1, v1, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$600(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "WriteNextBuffer returned false, pausing playback. We have {} cached buffers"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1914
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v0, v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    goto :goto_0

    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    .line 1918
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v0, v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$300(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "End of playback, notifying completion"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1919
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v0, v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$800(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$900(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;Lcom/audible/mobile/player/AudioDataSource;)V

    :cond_3
    :goto_0
    return-void

    .line 1927
    :cond_4
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    invoke-static {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->access$400(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;)Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1928
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    invoke-static {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->access$400(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;)Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->releaseWakelock()V

    .line 1929
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->access$402(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;)Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

    .line 1934
    :cond_5
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v0, v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$700(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1935
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v0, v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$300(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "writeNextBuffer returned false, pausing playback"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1936
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v0, v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    .line 1939
    :cond_6
    iget-object v0, p0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1$1;->this$1:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;

    iget-object v0, v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$1;->this$0:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->access$1000(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->notifyBufferNotFull()V

    return-void
.end method
