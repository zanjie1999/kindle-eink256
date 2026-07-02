.class final Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;
.super Ljava/lang/Thread;
.source "AudiobookPlayerReadWriteThread.java"


# static fields
.field private static final THREAD_NAME:Ljava/lang/String;


# instance fields
.field private final bufferFullLock:Ljava/lang/Object;

.field private final decoderThreadAwakeLock:Ljava/lang/Object;

.field private final exitThread:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lorg/slf4j/Logger;

.field private final player:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

.field private final suspendDecoding:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->THREAD_NAME:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;)V
    .locals 2

    .line 51
    sget-object v0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->THREAD_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->logger:Lorg/slf4j/Logger;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->exitThread:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->decoderThreadAwakeLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->bufferFullLock:Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->player:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    return-void
.end method


# virtual methods
.method exit()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->exitThread:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected notifyBufferNotFull()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->bufferFullLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->bufferFullLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected resumeDecoderThread()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->bufferFullLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->bufferFullLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    iget-object v1, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->decoderThreadAwakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_1
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->decoderThreadAwakeLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 141
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 137
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public run()V
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->logger:Lorg/slf4j/Logger;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Decoding thread: id {} , priority {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->exitThread:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    .line 64
    :goto_1
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->decoderThreadAwakeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->logger:Lorg/slf4j/Logger;

    const-string v2, "Waiting for the decoder thread to be awakened..."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->decoderThreadAwakeLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 70
    :try_start_1
    iget-object v2, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->logger:Lorg/slf4j/Logger;

    const-string v3, "Decoding thread wait  "

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    :goto_2
    monitor-exit v0

    goto :goto_1

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->bufferFullLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :goto_4
    :try_start_2
    iget-object v1, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->player:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-virtual {v1}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->getNumberOfBuffersFilled()J

    move-result-wide v1

    const-wide/16 v3, 0x30

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    iget-object v1, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->exitThread:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->bufferFullLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 89
    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->exitThread:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_6

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->player:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->decodeFrame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->logger:Lorg/slf4j/Logger;

    const-string v1, "Decoding frame failed, trying to handle error..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->player:Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;->handleDecodeError()Z

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    .line 86
    :try_start_4
    iget-object v2, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    monitor-exit v0

    goto/16 :goto_0

    .line 89
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 105
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->logger:Lorg/slf4j/Logger;

    const-string v1, "Decoding thread exiting..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method protected suspendDecoderThread()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/audible/mobile/player/audio/AudiobookPlayerReadWriteThread;->suspendDecoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
