.class final Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;
.super Ljava/lang/Thread;
.source "PlaybackBridgeWakelockThread.java"


# static fields
.field private static final WAKELOCK_THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final lock:Landroid/os/PowerManager$WakeLock;

.field private final logger:Lorg/slf4j/Logger;

.field private final waitTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->WAKELOCK_THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;J)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->WAKELOCK_THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->logger:Lorg/slf4j/Logger;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->lock:Landroid/os/PowerManager$WakeLock;

    .line 53
    iput-wide p2, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->waitTimeMillis:J

    .line 55
    iget-object p1, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "{} created"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized releaseWakelock()V
    .locals 3

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->logger:Lorg/slf4j/Logger;

    const-string v1, "Interrupting {}"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 5

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->logger:Lorg/slf4j/Logger;

    const-string v1, "{} acquiring partial wakelock for {} milliseconds"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->waitTimeMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    iget-wide v0, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->waitTimeMillis:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->logger:Lorg/slf4j/Logger;

    const-string v1, "{} interrupted!"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->logger:Lorg/slf4j/Logger;

    const-string v1, "{} woke up"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :try_start_3
    iget-object v0, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->logger:Lorg/slf4j/Logger;

    const-string v1, "Releasing {}"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->lock:Landroid/os/PowerManager$WakeLock;

    :goto_1
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 77
    :try_start_4
    iget-object v1, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->logger:Lorg/slf4j/Logger;

    const-string v2, "Exception in {} {}"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    :try_start_5
    iget-object v0, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->logger:Lorg/slf4j/Logger;

    const-string v1, "Releasing {}"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->lock:Landroid/os/PowerManager$WakeLock;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 84
    :goto_2
    monitor-exit p0

    return-void

    .line 81
    :goto_3
    :try_start_6
    iget-object v1, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->logger:Lorg/slf4j/Logger;

    const-string v2, "Releasing {}"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v1, p0, Lcom/audible/mobile/player/audio/PlaybackBridgeWakelockThread;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 83
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
